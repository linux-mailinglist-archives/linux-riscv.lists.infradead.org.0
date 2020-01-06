Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D19F131C2D
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 00:16:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TrkNrlsI6gf+UgcIdoDUEX3iqa/Oz0F6ZIOtZxRpg7U=; b=Go9yFKZazonX4G
	5qW94xjqVQujWxvr0U7jDPnTzrH6ZDvrU1iNgMO3uplaIRmY7K9HzUPMLHYiEpJ1pXQnbXO2gThEJ
	Rl6xc/Z+bNHrjOSKtdFzfGmxyYfqr+zewhoj1Wqvo76XWC+hu588S8ev39bhQhAD8Aop1rqh5JSH3
	JcZY9ON2kXAItg2BKRlLsWxIzYOduX7hV8CF3ZV8ZrCdHVWtkI4vjlFLuxAbEIIUxlf6JBE0jYkvO
	p+BVwJkb2vQFygXpowQldr7kuS3vrvCC1CpcdmwLjm3QXlCqRVOIc2W9tubBICU8PbzTvZ/jM52rT
	wldrM4Vi8s4KtPmjTIJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iobbm-0004V8-00; Mon, 06 Jan 2020 23:16:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iobbg-0004Ov-MY
 for linux-riscv@lists.infradead.org; Mon, 06 Jan 2020 23:16:22 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so27557820pgk.0
 for <linux-riscv@lists.infradead.org>; Mon, 06 Jan 2020 15:16:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TrkNrlsI6gf+UgcIdoDUEX3iqa/Oz0F6ZIOtZxRpg7U=;
 b=h5aYFg1LHy7RecocWz2pJ8zPdAcz/Zlxf0A90TagTHHfzfgiLT7dDpHo3qzZKG5T7h
 x6bJ+8DtVgwqQG8oyrM0gdwnUJLKdJybBqYaDsW7IsaXO6CsqpcneYkkRi011gVD/Zsz
 9t98bw6eht+s2PTB+3QTmsmDwt8fnshoyGsbUiAghLSWmK0QERKfo7CkKuU6f4XN8JtR
 qN5hg/lchx9eiPOk924DnTRLTxXolWcdAnCmvRJVRpJQCtctjshI1OIAiZukYPFvHeVX
 8r7YjAUrMbKcFgIX4is99Zkb3FsrbRVEKe0fdyj3WsJ5BnfoEy7Dtb+atpT1zhk6ERzt
 0lQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TrkNrlsI6gf+UgcIdoDUEX3iqa/Oz0F6ZIOtZxRpg7U=;
 b=qlJFeb032BqbAd5AYpgOYUSZxn93O9YwVmSuMmWMWF+VpbuxrpA4YDx5eu+bQwnPtK
 gXB6J3tV6vPbeXv7N2rWdiS2AfN2OzdtNWPrsNaaQae4/+7FRh5j2QLpCCQySXh5t8bV
 itaSFTPOe9rBhWMtznGb4lGnIo/zIbFDFCTyVja7l9ZjPoSmPY5GvMKHTr0iZY+f27Zy
 i2+lWWwDW6CZq6+STXkHq7nSs8TEsFbtQmbR0da8rYQUvo2jljWJYqMeE3Cj2F5Tw8MZ
 lyphfqLcwR2aY2jPIaV+8IsU+1fJNB9kYbSfiuBsQyyy3yvcQoLOat/18KhI6JxiICyx
 qMqQ==
X-Gm-Message-State: APjAAAXle2Yh0Bhq3YV2v5vD0j9rdXKAKJOQIYxsgoP1tLnxwQZlK7LK
 7WNB5utQXI10VyIkEQUpjPNNHNy5+/O/bv6L
X-Google-Smtp-Source: APXvYqziUHnuk5l/Atiw2vj5n2Wz6sjwDTja/WaJs0V1Vh/2LG/VjEj5/h6HlAXT+QuTPWrIOVMPDQ==
X-Received: by 2002:a63:4c4f:: with SMTP id
 m15mr112630946pgl.346.1578352579414; 
 Mon, 06 Jan 2020 15:16:19 -0800 (PST)
Received: from rip.lixom.net (99-152-116-91.lightspeed.sntcca.sbcglobal.net.
 [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id s131sm65052995pfs.135.2020.01.06.15.16.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 15:16:18 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu
Subject: [PATCH] riscv: keep 32-bit kernel to 32-bit phys_addr_t
Date: Mon,  6 Jan 2020 15:16:11 -0800
Message-Id: <20200106231611.10169-1-olof@lixom.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_151620_887637_D861E958 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Olof Johansson <olof@lixom.net>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

While rv32 technically has 34-bit physical addresses, no current
platforms use it and it's likely to shake out driver bugs.

Let's keep 64-bit phys_addr_t off on 32-bit builds until one shows up,
since other work will be needed to make such a system useful anyway.

Signed-off-by: Olof Johansson <olof@lixom.net>
---
 arch/riscv/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a31169b02ec06..33a20fa046e0a 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -12,8 +12,9 @@ config 32BIT
 
 config RISCV
 	def_bool y
-	# even on 32-bit, physical (and DMA) addresses are > 32-bits
-	select PHYS_ADDR_T_64BIT
+	# While RV32 has 34-bit physical addresses, no known platform
+	# uses it, so keep it to 32-bit until one shows up to test with.
+	select PHYS_ADDR_T_64BIT if 64BIT
 	select OF
 	select OF_EARLY_FLATTREE
 	select OF_IRQ
-- 
2.20.1


