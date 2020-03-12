Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9435A18272F
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 03:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeETz7OXYdn/hmWZRZ2XZZ0rT8aYFJbbHfhavYQw3LA=; b=ZWIS6dv5+lWC/f
	9UZGBSQipRLJYLUfrtd12OXk81aTo/mwePnEIpnKxAixC+MkAScFgP+ZsP0ho6LRZHCnLadkYJQZe
	Nb/j29NDVfHJOjaMrqc9a81bfIxaE+NkAU71yCaLarDPFGPPB3qz/lXdBqBj/PMAkk7P7fOVTTlP5
	dyxU08/5IEiocWWMA84ijyrP5a1ExAPF63g5C76cpgTNmIvY3STM6qMImxjFaten4wdWxWb3OYWAr
	TbFJWSBzqLrXCv9giRLVMA2PgDeN2QbMJA2EBWtd8G12r3ObRt5944F7wq4tYq5zMET0cUR6b2QEV
	970JbyUAFsPknicESfyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCE3f-0004MS-4j; Thu, 12 Mar 2020 02:58:51 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCE3c-0004K6-0Z
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 02:58:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so2050819plt.2
 for <linux-riscv@lists.infradead.org>; Wed, 11 Mar 2020 19:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SeETz7OXYdn/hmWZRZ2XZZ0rT8aYFJbbHfhavYQw3LA=;
 b=frP86w7bphR1Z7uDrs9zocm8B1BWYGaKwCbmSsE+IztfjnVt70UpPd5a2aeEIagfoR
 6/0rDqSEtmn3qHK2h4uhxzYj4N1ZVu7oDmDNa9SBIWYsPz/fl+8SBUyT7ks+RydaAq/R
 8cZOsDWyCmteS8dp9uOZgkXvgAR1fQlfkW3piJcPGWr7onIRpQu3DWdPGWH5bZJTxWPh
 v2zUC4LJzP0QHxc474Guh4ULRGe2tK9B/3v3KQyQvWvvOW6Vu6Su683erl3V5KcLMPw3
 ypWGw3X//xc3BGQYuVnJtfN9b8LLXcYu+iLM1GKUwCwpHdNh4K4i3WKUWL7SDcjqVQ1D
 mIWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SeETz7OXYdn/hmWZRZ2XZZ0rT8aYFJbbHfhavYQw3LA=;
 b=RVT050uhd5LxDKEo/9GHDWFKbRbd4THeZDVv0Seodp7a2iNeY6N3SX07g/f77bCgY2
 SnpDDu0VRmmHOR+jk2/9TdV0tYW0k+akKfC3uU99Ths9jNx1TxegC8RdEes8xOcSBOJ7
 fDWooSGAh1w9u8nLp0r+S3rWmLU0NYeRkNT9iSXe1VFAtte2HKfO1lWd5v423zpCZC/O
 UhjuGUl5jugr+Cn+dDeXPylJoYGrAaelEQe7IjyA1ZYNROfMuXLmQPJM/2bql+fwWiNE
 26zX9uYy4MMq8tP56wnOXc8nNblWA/+y3OBDcnoRTquTUGQP8dj7cRcXmv+NCkqHy0Rn
 Lvrg==
X-Gm-Message-State: ANhLgQ3u47oCMsTVDr7j8I+Us9YzMVSRdNLCE8kPBBOjyCgxqRCe9Jfl
 1XLouKo0YkkzhIXX+IS4+xtuKQ==
X-Google-Smtp-Source: ADFU+vtAAgdfElq06tfd5YckyfvzrJUYbz75snj/PU15B2U+NbNEZx6l8hpSWV3aXzjE8mcVwGUbag==
X-Received: by 2002:a17:902:6a84:: with SMTP id
 n4mr5903125plk.294.1583981924663; 
 Wed, 11 Mar 2020 19:58:44 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i11sm1910322pfd.202.2020.03.11.19.58.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 19:58:44 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] riscv: Use macro definition instead of magic number
Date: Thu, 12 Mar 2020 10:58:36 +0800
Message-Id: <20200312025836.68977-3-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312025836.68977-1-zong.li@sifive.com>
References: <20200312025836.68977-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_195848_056130_E0316665 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The KERN_VIRT_START defines the start virtual address of kernel space.
Use this macro instead of magic number.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/include/asm/kasan.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/kasan.h b/arch/riscv/include/asm/kasan.h
index eee6e6588b12..b47045cb85ce 100644
--- a/arch/riscv/include/asm/kasan.h
+++ b/arch/riscv/include/asm/kasan.h
@@ -13,7 +13,7 @@
 #define KASAN_SHADOW_SCALE_SHIFT	3
 
 #define KASAN_SHADOW_SIZE	(UL(1) << (38 - KASAN_SHADOW_SCALE_SHIFT))
-#define KASAN_SHADOW_START	0xffffffc000000000 /* 2^64 - 2^38 */
+#define KASAN_SHADOW_START	KERN_VIRT_START /* 2^64 - 2^38 */
 #define KASAN_SHADOW_END	(KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
 
 #define KASAN_SHADOW_OFFSET	(KASAN_SHADOW_END - (1ULL << \
-- 
2.25.1


