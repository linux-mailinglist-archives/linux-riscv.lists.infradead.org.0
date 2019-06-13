Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BA743324
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Jun 2019 09:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvCAJ3v2t+1+L+fNub2leLbpj7pUO/h3qEvOwZjPsPU=; b=E2OQk/iGSe1+XJ
	xhiR1E7aO87+NX4Vc5HjMzX3okkD9dnDqKzKKlNU37K6bQUuEOfsD8QIw6i9mRpYk591hV+grarrC
	us/h3954oC7QEBNG9yR1Nbrh4pB3m/ARdmkfb17dFqOtrq02JRYSCnbHEOOYfv+wvHPcUptPm3LXb
	cdugiSEQL53rPdMxSJ7JXpFFFKdew/c3QUuaECb8Y9V0XEQRSHYkNmBMxPcMi1U2Jp3rNIBPatEyA
	KHW4lU7F6w7jIxjbK8KSJUwSY3jct23qBSMf5dANM8OkJVDQxGXFy5QrgZdyBz2gZUf/R+QZ3LEaV
	hJfwZEcy66yJic7ql1fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJvF-0008NS-RF; Thu, 13 Jun 2019 07:13:21 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJrY-0004IX-0J; Thu, 13 Jun 2019 07:09:34 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 08/17] binfmt_flat: consolidate two version of flat_v2_reloc_t
Date: Thu, 13 Jun 2019 09:08:54 +0200
Message-Id: <20190613070903.17214-9-hch@lst.de>
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

Two branches of the ifdef maze actually have the same content, so merge
them.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/flat.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/include/linux/flat.h b/include/linux/flat.h
index 2b7cda6e9c1b..19c586b74b99 100644
--- a/include/linux/flat.h
+++ b/include/linux/flat.h
@@ -69,15 +69,13 @@ struct flat_hdr {
 typedef union {
 	unsigned long	value;
 	struct {
-# if defined(mc68000) && !defined(CONFIG_COLDFIRE)
+#if defined(__LITTLE_ENDIAN_BITFIELD) || \
+    (defined(mc68000) && !defined(CONFIG_COLDFIRE))
 		signed long offset : 30;
 		unsigned long type : 2;
 # elif defined(__BIG_ENDIAN_BITFIELD)
 		unsigned long type : 2;
 		signed long offset : 30;
-# elif defined(__LITTLE_ENDIAN_BITFIELD)
-		signed long offset : 30;
-		unsigned long type : 2;
 # else
 #   	error "Unknown bitfield order for flat files."
 # endif
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
