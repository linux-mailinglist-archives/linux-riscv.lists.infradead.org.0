Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600858C4D5
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 01:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HL4gg9GrBQ8kNVocSjeZJEU8xZaUPosI5vrWdsl7b/M=; b=qSAPXkikcIQExj
	bFw0GnWgawnkVg4FnXvVmdzTaJ9hN/DUI2UfROscsgIgg7ObDug5I2HvCg0p8q8w/Kgl3Y7dRbJ2O
	qzgSxhjSTWwncNsBr3RrGAQb3GNcX+plG33VzHhBdgzL0fWlSzlF25b5tTFgllxBVJoodmr445IJp
	KRMh4TmE56ptzGBe0WRWjGlwgjKypatqP3TkM5Ct6W8A+EyK8chJAWFGsP+R6dkn5uPnHzGQ0BKxy
	J6B6bk+JKM2IyeZY5RjEpNgY451t+UYMmtfyrLijUeD+629ubQYMr5qlFpD93RGxBU0X6AGyHNSQi
	NQxL8cz+U2Oq95Hh8HiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxgL5-0007Op-TW; Tue, 13 Aug 2019 23:36:27 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxgL1-0007Na-9B
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 23:36:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565739384; x=1597275384;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hJ0wcybIy8p5lozhUIdtK566sZh2c4A4f6FV+GFHlHc=;
 b=J+ntUTYYls3HZz/c9DLerqigQrdRzxCHOy/F0b6/R+ifomN8KispCKKF
 JMtETfnSInTFUBodzHaGmlY8QYkln0mnrobyUpbbNZ+LnmueWf8wKw461
 whjXnYJ2+elJVQN68NMjemGsuv3lVErfVkPGN3iPyxm6aiGZBt4W4MNQo
 Ctfy+hwh9R4W+j1xt6b54/MUxnob7Ezha5tpTwyGYlDlHtso3HoAcPr4k
 KbpvrescekDST90epzxAgpXuEARA/LZXVNgC80hPQBSe6F9lsCg7Lq0qi
 6heeWyTt25fJQZ/huM/TFmsi6vkeXB18jIis76WYfG9PVBF2jCjtbkvwD Q==;
IronPort-SDR: wfJJS0MAEr1g2yt4NOt2jYQJzAjCLrVD3iiLAncI+S3clck6q2zGoXQG3YAq9j8wXButjSthMO
 JUjZ74F6F1WJPBkSC2bZxMHfpDcNaxOGMOgpAtTySb80fu6s+TSab2v4GBsoidh2vi6CCTfiCn
 yxH58+Y0pSWjmhajyi/QYGdjoQK7/phBN1Dv0k70xAt6zWrRSy1chsETTdOIA+Gys39BZ9agnI
 ZWKv13/DrPgULh6cOyHSn6dC7Z0vf9G+VaKqsmI6lj5yQlmkK1iL+Bf/nbL1BxJpH5HJhCLPnR
 Z7A=
X-IronPort-AV: E=Sophos;i="5.64,382,1559491200"; d="scan'208";a="116720845"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 14 Aug 2019 07:36:19 +0800
IronPort-SDR: mJvHKLl/Mg4lKKIcEe7u+F1NUcZziOllJNXmwkiB5l+IHWZREiIV57Y9vQWKffBL07nuMe2NzB
 SIZhiw9gh+StGVTuCdHds9zd93yDWLsYA54qqFF07gqAhxBpJ/zGoA/LO47voGDP/pLwXQ5FNP
 KB864VNkTKohQl2b7e0+2TwArvwQOkjWJ4hGn03+O/MnVjCiO90kSX69AOrctIogtQU24aaQzk
 QVWXKRyPQE/4bbLc+6z+oXda1AsZJYwjHtgpSR5QsShNEeUQ+OZIFpOKzIjP4jWXK/rkakkVvC
 gxHsfX9XXh/1HqEwRkhr3qyk
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 16:33:53 -0700
IronPort-SDR: ynWM70NmSGSvm/NBmL4NJAHKIplLilDhmM0Icvg9oUo2nD7XK7CY1V7Xtlq1hKhgdt7gMKOcVo
 xwyOruqZ1/sWh9jdqv942QJsZgxOpMb9Fy2ECnCJKchmDbNBVLpHZ8op+Exa3K7WAyMIKRBnR5
 rq/hh5QY4tcCW5zefAvYI2F4KLsxfbGXM0CD7Te0dYo4/AZhZ2fkiQEOINbdEndJ3qhudjQy8H
 2beb3ouwLSBCofBJtZN9spTyo2PkQHkd6AUOD501Mv/xVpRseLZGM4a+eA1lobG0HZZwLUPTGI
 ssY=
Received: from risc6-mainframe.sdcorp.global.sandisk.com (HELO
 risc6-mainframe.int.fusionio.com) ([10.196.157.58])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Aug 2019 16:36:19 -0700
From: Alistair Francis <alistair.francis@wdc.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 1/2] riscv: rv32_defconfig: Update the defconfig
Date: Tue, 13 Aug 2019 16:32:29 -0700
Message-Id: <20190813233230.21804-1-alistair.francis@wdc.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_163623_474928_4F3BF13A 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alistair23@gmail.com, Alistair Francis <alistair.francis@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Update the rv32_defconfig:
 - Add 'CONFIG_DEVTMPFS_MOUNT=y' to match the RISC-V defconfig
 - Add CONFIG_HW_RANDOM=y and CONFIG_HW_RANDOM_VIRTIO=y to enable
   VirtIORNG when running on QEMU

Signed-off-by: Alistair Francis <alistair.francis@wdc.com>
---
 arch/riscv/configs/rv32_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index d5449ef805a3..7da93e494445 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -34,6 +34,7 @@ CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
 CONFIG_PCIE_XILINX=y
 CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
@@ -53,6 +54,8 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_HW_RANDOM=y
+CONFIG_HW_RANDOM_VIRTIO=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
