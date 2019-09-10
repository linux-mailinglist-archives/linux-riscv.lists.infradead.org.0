Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 743BBAE362
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 07:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ywK7uGn6/aOHqkVYeae4XQ+uY7L5n1yj4k++5eO+JEY=; b=fzVto5izcz5vmT
	eAfhCI0tol5WhRzkQrUUsobnIipCJzpM2EudRbbgDhYCbEs93N0eh6ffr1Wj0jxwJUy9JTJid4FkS
	j8iwF1COsnytKYlEoqORDRyPgT2m6MA419/nLMvbjtrz7CL7lgGJVbX3tkjmTM7sy9yAvwjhKMBlF
	4m8RFq4wmTtor/OfBuBLqNQZNwpfdMb14qpEF7jLRMTHKKmbHRUCF4deEuqoEeSNkfCmYcCKI84oD
	/wLBDLmRDhazuOpHrUATAMxkSEmY0r6aSOxRruCOGaU+Y/WMUgmRHVoO4qBumQMx3h+i9QQN4unpd
	gnfh4nZRAind4RvRwP+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ZBZ-0001W9-5k; Tue, 10 Sep 2019 05:59:29 +0000
Received: from [2001:4bb8:180:57ff:412:4333:4bf9:9db2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ZBV-0001Vn-4L; Tue, 10 Sep 2019 05:59:25 +0000
From: Christoph Hellwig <hch@lst.de>
To: gregkh@linuxfoundation.org,
	jslaby@suse.com
Subject: [PATCH] serial/sifive: select SERIAL_EARLYCON
Date: Tue, 10 Sep 2019 07:59:23 +0200
Message-Id: <20190910055923.28384-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The sifive serial driver implements earlycon support, but unless
another driver is built in that supports earlycon support it won't
be usable.  Explicitly select SERIAL_EARLYCON instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/tty/serial/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 530cb966092f..6b77a72278e3 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -1075,6 +1075,7 @@ config SERIAL_SIFIVE_CONSOLE
 	bool "Console on SiFive UART"
 	depends on SERIAL_SIFIVE=y
 	select SERIAL_CORE_CONSOLE
+	select SERIAL_EARLYCON
 	help
 	  Select this option if you would like to use a SiFive UART as the
 	  system console.
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
