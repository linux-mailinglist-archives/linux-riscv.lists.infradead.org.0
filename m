Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48ABF43322
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Jun 2019 09:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KM0kky1VELRzyiZNG7Lkhe2Yx1+VpGHkHwz6C63bSPQ=; b=XzO+v/LqUNDJjt
	Hv8wj9dsIDf6g2gQW/fATlOoMRQVrGBcj6beHFcx9TdMU01gqD2loPSGp3QQUZOe+eBkwmJj2p6LY
	x6nCex4TUt1e+u5HpLBpKcfia6O8NqLIA5nBJbbJqk8ciywcEr3thsfPsxGcln0WSsLkmPCwze0Vq
	wsP5JBeE9NwBGOHBuEsUuN4oKzJWcZHe9FBrMwfMJ0oZFDfgleU+Zc5stlruZmJIQMzGnaJr3DHvj
	2S1jMehR0xGoogOR/u10Vm51fEIF6Af/Zwde3dYMhw48Y5+cGXxnbq193HY1lwMlT0n5p3pt3di0/
	WqoW7g3R0LFDn2O487EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJuv-00084j-1W; Thu, 13 Jun 2019 07:13:01 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJrV-0004H5-1L; Thu, 13 Jun 2019 07:09:29 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 07/17] binfmt_flat: remove the unused OLD_FLAT_FLAG_RAM
 definition
Date: Thu, 13 Jun 2019 09:08:53 +0200
Message-Id: <20190613070903.17214-8-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613070903.17214-1-hch@lst.de>
References: <20190613070903.17214-1-hch@lst.de>
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/flat.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/include/linux/flat.h b/include/linux/flat.h
index 21d901ba191b..2b7cda6e9c1b 100644
--- a/include/linux/flat.h
+++ b/include/linux/flat.h
@@ -72,15 +72,12 @@ typedef union {
 # if defined(mc68000) && !defined(CONFIG_COLDFIRE)
 		signed long offset : 30;
 		unsigned long type : 2;
-#   	define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
 # elif defined(__BIG_ENDIAN_BITFIELD)
 		unsigned long type : 2;
 		signed long offset : 30;
-#   	define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
 # elif defined(__LITTLE_ENDIAN_BITFIELD)
 		signed long offset : 30;
 		unsigned long type : 2;
-#   	define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
 # else
 #   	error "Unknown bitfield order for flat files."
 # endif
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
