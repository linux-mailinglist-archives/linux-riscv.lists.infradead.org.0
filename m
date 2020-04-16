Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871491AD283
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Apr 2020 00:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eAIqFXSDQFiyBAhlUDSnkB/PjfNj7n3kLMRm+bVFLI=; b=RsiCBhcZVAh4ZZ
	0N6tDVY3r4Yh+/JzGLubxzBbjB8xtRJmeTyuVSUzZ+Lh08csWOtjTOF2FLXCZhAnY06/wEdRHOHH9
	Bc6nsLi4VuKLglV0eaTVQa/QZEH5MxcGbOVfoEDgBIKQ/ornptBxUhObv+H6xUh7DLJPxH56vucFR
	bhxKSp9r47GNxsGdXDSQ9UEB1/jleJVlcTgh31h7Uqmk9OiRFO4LD8KkI05oW5J3M/BzM/Qf9QrIa
	ZLyG5wMADuHzl+4j8cqri+h9A43JKJSYeeVP+i+RxNpMHl9DxL/O6QMUbS4cljjpALMuL2WHO1gBq
	iWhnI8pO+aUT+kJUZ9Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPCZk-0003Ws-L6; Thu, 16 Apr 2020 22:01:36 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jPCZg-0003UR-Hw; Thu, 16 Apr 2020 22:01:32 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org,
	linux-fsdevel@vger.kernel.org
Subject: [PATCH v3 05/11] riscv: Add clear_bit_unlock_is_negative_byte
 implementation
Date: Thu, 16 Apr 2020 15:01:24 -0700
Message-Id: <20200416220130.13343-6-willy@infradead.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200416220130.13343-1-willy@infradead.org>
References: <20200416220130.13343-1-willy@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: "Matthew Wilcox (Oracle)" <willy@infradead.org>

This is the generic implementation.  I can't figure out an optimised
implementation for riscv.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org
---
 arch/riscv/include/asm/bitops.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/riscv/include/asm/bitops.h b/arch/riscv/include/asm/bitops.h
index 396a3303c537..f2060c126a34 100644
--- a/arch/riscv/include/asm/bitops.h
+++ b/arch/riscv/include/asm/bitops.h
@@ -171,6 +171,13 @@ static inline void clear_bit_unlock(
 	__op_bit_ord(and, __NOT, nr, addr, .rl);
 }
 
+static inline bool clear_bit_unlock_is_negative_byte(unsigned int nr,
+						volatile unsigned long *p)
+{
+	clear_bit_unlock(nr, p);
+	return test_bit(7, p);
+}
+
 /**
  * __clear_bit_unlock - Clear a bit in memory, for unlock
  * @nr: the bit to set
-- 
2.25.1


