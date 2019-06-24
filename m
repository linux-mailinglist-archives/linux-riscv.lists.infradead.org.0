Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BECD50137
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 07:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4id4LU9YglPJkpEc4mOZ+DvwxHOndqJjNWNwNcLxd9s=; b=NOpLwI5P2DMMS5
	QIVjgnq6s77CrGjkqBriSuqLMn7I/LBD0sVEtEH9XrXrU5UaprQEYNJ5OJ4+eNhmtNW9122860h0U
	uQoe+vz1r6fBONHZ0heEgeJ6bSGjlyFTOIj5Kfno/s0MTeQNrZlT4NUsV6YQsICpk1w+rcmq4PODQ
	FBaLCKAv64QOPeI3n2+7mU7u6xf/S2TyYUZi+jCrH5ILvfmcwcNYWRJEGmxGZc0zrWiYl+4pg0N5J
	abBURTf8oj8gnVrOCJeE+yN1reW0XNEvt3W8bffK1qROBtdUXb+iz0At2gf0Pmvcgr0hl2A3lHDbg
	Cg3BRqsmGEKvKKfQCmwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfHlu-0006sf-16; Mon, 24 Jun 2019 05:44:06 +0000
Received: from 213-225-6-159.nat.highway.a1.net ([213.225.6.159]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfHlq-0006o6-Ir; Mon, 24 Jun 2019 05:44:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 14/17] riscv: don't allow selecting SBI-based drivers for
 M-mode
Date: Mon, 24 Jun 2019 07:43:08 +0200
Message-Id: <20190624054311.30256-15-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624054311.30256-1-hch@lst.de>
References: <20190624054311.30256-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-mm@kvack.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Damien Le Moal <damien.lemoal@wdc.com>

Do not allow selecting SBI related options with MMU option not set.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/tty/hvc/Kconfig    | 2 +-
 drivers/tty/serial/Kconfig | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/hvc/Kconfig b/drivers/tty/hvc/Kconfig
index 4d22b911111f..5a1ab6b536ff 100644
--- a/drivers/tty/hvc/Kconfig
+++ b/drivers/tty/hvc/Kconfig
@@ -89,7 +89,7 @@ config HVC_DCC
 
 config HVC_RISCV_SBI
 	bool "RISC-V SBI console support"
-	depends on RISCV
+	depends on RISCV && !M_MODE
 	select HVC_DRIVER
 	help
 	  This enables support for console output via RISC-V SBI calls, which
diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 0d31251e04cc..59dba9f9e466 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -88,7 +88,7 @@ config SERIAL_EARLYCON_ARM_SEMIHOST
 
 config SERIAL_EARLYCON_RISCV_SBI
 	bool "Early console using RISC-V SBI"
-	depends on RISCV
+	depends on RISCV && !M_MODE
 	select SERIAL_CORE
 	select SERIAL_CORE_CONSOLE
 	select SERIAL_EARLYCON
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
