Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE531E376B
	for <lists+linux-riscv@lfdr.de>; Wed, 27 May 2020 06:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOpmpojWwwDKmdgvBgyDR/91akL7lsEVaaRXHGRRif0=; b=a9uprZkDdNyxB2
	kbzRLoCXakCA2IFt/Y9r9qq20ugQehHVF/xhBvW4wWUbvjjmcZG4E4QvIYzCX47i+QNiU+m178e26
	nIuVokK3XgjxlG30viGiC8w0e0RO5oJ+9Uame/5AmRtAAvcDw/uj3QoZSWcbQ+dRIzkTXaOxjBLif
	l7yJq9TbcEopDkULEmdKxj8xTB3nwB8yRiuiqQcHW7lI6NrogOUs40cv4zPt74ljOiP8p96BUx8q0
	8pnl3YQLSJ3tIN02AB6I+a05BLu2kiKFMzmkn0jpy/A7/EOahhAgNqiuYeAfg7nzrDFnbg2v+xBEj
	zQqlAW9KmqstcI1y9NTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdnoT-0007af-VK; Wed, 27 May 2020 04:37:10 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdnoG-0007Sa-6C; Wed, 27 May 2020 04:36:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id z64so6768526pfb.1;
 Tue, 26 May 2020 21:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lOpmpojWwwDKmdgvBgyDR/91akL7lsEVaaRXHGRRif0=;
 b=RhgQiHKjSFxt0e4hdk9XFdFmwXlaqqy/oTAekflZtHFdhEKO64qFc1mpKDXZr69CPy
 jdKKGgMYF3/PwLMQqZRA0p7MJV/Go6tkta/h4swizRoRpVhai4LlQKtDfpzOQXol3xcY
 3TW/CBGWUO1G35QH1UIuJXs9WTI3G+E29PktRQFzMSdgmMsbx+ViIkPx4XIoQKnwHjtI
 iuFirKyvXOkp6bKvGs8xYK3w/Dn4sctZ1lOJtxsH8Aa2nP03Bsx7PgwJODEguoGDFtQe
 EV7yB1UHGazYqjCw0y7SPUOzeb1Rx+s20xn4YP/gkyyGkm4H/LKnhLTIPlstwN50FD9J
 kU0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lOpmpojWwwDKmdgvBgyDR/91akL7lsEVaaRXHGRRif0=;
 b=n71EqAdjq9VQJ05fHGaufZHhewz8nQLW0OTl2C0ST83uTOXQIiYeDpL5yF1dKjmcga
 GUZRuDf5ygdgHNvZCPJTuLWLsw58noXdi/11VzqVb/448vimSAFWb8ikpZQJAF0Xvmvw
 PzQ1Oqn45Si2Oxu2y5omNhFaHKLVo/2TVW0A+eyy1snnu8vFqJbM+BojYqsW1nRioxn6
 k0d7NFqVTvTKc2us2X+8m59O/FjzicmPLujzT8yUKR0NKMbsSXbon/ZP2XneWL1LuCla
 jpPo/ggJgS91dHieCe9nQSdPwvZ7vQ9LTtoNplDJ+3cFeFvLLvyLz/Qv7wDOyIS6P+rM
 0JLg==
X-Gm-Message-State: AOAM531POt/aHceGTXdiL55HtRXeJj/J4QpxSvDdSy/R0bXRZYnN659E
 j1xsV17qHdwM6M3HYiGAGIM=
X-Google-Smtp-Source: ABdhPJxaG/pR1wu1n7WufrFJ+x4wcg8X7uq9rcDJKu3YRWfpwt3nhECM4aeG8mrZfzsEkO9ezvPt1w==
X-Received: by 2002:aa7:9302:: with SMTP id 2mr2035203pfj.164.1590554214171;
 Tue, 26 May 2020 21:36:54 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id e13sm893604pfm.103.2020.05.26.21.36.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 21:36:53 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: hch@lst.de
Subject: [PATCH] media: omap3isp: Shuffle cacheflush.h and include mm.h
Date: Tue, 26 May 2020 21:34:27 -0700
Message-Id: <20200527043426.3242439-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200515143646.3857579-7-hch@lst.de>
References: <20200515143646.3857579-7-hch@lst.de>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_213656_233966_F465E36A 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, zippel@linux-m68k.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-xtensa@linux-xtensa.org, arnd@arndb.de, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org, monstr@monstr.eu,
 linux-kernel@vger.kernel.org, jeyu@kernel.org, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

After mm.h was removed from the asm-generic version of cacheflush.h,
s390 allyesconfig shows several warnings of the following nature:

In file included from ./arch/s390/include/generated/asm/cacheflush.h:1,
                 from drivers/media/platform/omap3isp/isp.c:42:
./include/asm-generic/cacheflush.h:16:42: warning: 'struct mm_struct'
declared inside parameter list will not be visible outside of this
definition or declaration

cacheflush.h does not include mm.h nor does it include any forward
declaration of these structures hence the warning. To avoid this,
include mm.h explicitly in this file and shuffle cacheflush.h below it.

Fixes: 19c0054597a0 ("asm-generic: don't include <linux/mm.h> in cacheflush.h")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

I am aware the fixes tag is kind of irrelevant because that SHA will
change in the next linux-next revision and this will probably get folded
into the original patch anyways but still.

The other solution would be to add forward declarations of these structs
to the top of cacheflush.h, I just chose to do what Christoph did in the
original patch. I am happy to do that instead if you all feel that is
better.

 drivers/media/platform/omap3isp/isp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/omap3isp/isp.c b/drivers/media/platform/omap3isp/isp.c
index a4ee6b86663e..54106a768e54 100644
--- a/drivers/media/platform/omap3isp/isp.c
+++ b/drivers/media/platform/omap3isp/isp.c
@@ -39,8 +39,6 @@
  *	Troy Laramy <t-laramy@ti.com>
  */
 
-#include <asm/cacheflush.h>
-
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <linux/delay.h>
@@ -49,6 +47,7 @@
 #include <linux/i2c.h>
 #include <linux/interrupt.h>
 #include <linux/mfd/syscon.h>
+#include <linux/mm.h>
 #include <linux/module.h>
 #include <linux/omap-iommu.h>
 #include <linux/platform_device.h>
@@ -58,6 +57,8 @@
 #include <linux/sched.h>
 #include <linux/vmalloc.h>
 
+#include <asm/cacheflush.h>
+
 #ifdef CONFIG_ARM_DMA_USE_IOMMU
 #include <asm/dma-iommu.h>
 #endif
-- 
2.27.0.rc0


