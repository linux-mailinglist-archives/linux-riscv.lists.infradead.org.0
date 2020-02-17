Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E39160D5E
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 09:32:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNyXncKaYuryFlTH69WlWZYPk4kAmZEfUmd5TonVcFM=; b=Nhx+i0WI1oXOXX
	QrYjGD3IQMA+FLZOfUdb9eTTNsm20Dc4M1/LloY1mvq9lSIQvrUODpdKI2WgHrRYKHyciA0huSfWY
	ISGsXPeLudRpwxmn5loHgtcs4NSui0Wc5vM0Uu6sde9qkd5ILbJftlw22lZ/Qt5MOdAIzmKjxn61O
	QtzDTJ7bl3B7FPQ08/fVTj+LYbm3UK3lXmjiOTqH75uA8gYi6vBoca/IDTIuUy0DrgUASjz5aHV5C
	bt8dVNHsoAXAnZazjx2m9CgHH5OAX+N52MELWd8WRfBfKOViik20xHNO5wUjmmzAx52L7V+JgFc5l
	+CXqTMuxD2h9wD7D5GsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bpc-0005rq-0H; Mon, 17 Feb 2020 08:32:44 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bpU-0005eE-Ei
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 08:32:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id y73so8453942pfg.2
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 00:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QNyXncKaYuryFlTH69WlWZYPk4kAmZEfUmd5TonVcFM=;
 b=Gsd372ngP7zyebK4/CGgbTK5xouhrNYPxDq+3swGBCC0ZSYcePHQFjp3+n5hBWWXwC
 aWLvnXVIYcac0owRO8bnd7I+XHzLdoh0ve80PIU0mQdcjnmTj8h9mZRe5T1Q9IrkaAsk
 hOAWPYp0iDKpEhz1qqQwsRJmQzyQgd7bwPojIOMRp7zX7q4Yp7tWBw4TufZYAB1j9LOp
 p9E4e+xlAlnswSu2BH4Dov8tV/nQZ5cVmwCkfGjPUPTu5Yo+fuklw68b8DlYqAQ3UdLC
 hll/p8eOuGfqpSj4Sca0bR7qOM+BrDLmHVZjvsLDMEbPvUEAKgu77BRvUOjrxWnK+zLB
 RZOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QNyXncKaYuryFlTH69WlWZYPk4kAmZEfUmd5TonVcFM=;
 b=eKKVdauVllrzcm3IE98G4DSeO/wt0dYefMcfGAz1NNDsTYOfKCRDIaeOV/Mbdf23vx
 1K/QpLUd27hIlkOGLQ4h/SNNBzHKRMKVlSx2hI/nTiQvzvmNyxNcwjl6JWQZptK6ZtDB
 fKqQiBc035eAJF5Pn/to5Ciskfh6Ev8HobGOz2qWzUpwd4zTsj+MdBzg6S+CuVoh68Ho
 FjFSECs5NtOQayfA4aT1WI2InUuFoE/o1KpOqETmxD5aRe4dLB6MTFAZXFAgKnzVfUuj
 TTJ12ErvM6rZ3sIk8DZuZolcxXPLoygVuHLkSYw28RFx0BetmPbHI1ruvGf6KHmsnwgA
 ZhIw==
X-Gm-Message-State: APjAAAU3FyiVXatcbFIW+liD10yWZEKZ7M9eLfecn6iRL9IZ6V4SgTBt
 W0q/u16sIbO08YISDSTzObgvTS/drCM=
X-Google-Smtp-Source: APXvYqzwysnH2XvIMNTjcEFbE+ORuocovwK14WEoJienDNF8ZKjzY3xBRF7MpbE7yeGiBmwDUyg/ag==
X-Received: by 2002:a62:e217:: with SMTP id a23mr15644730pfi.50.1581928355848; 
 Mon, 17 Feb 2020 00:32:35 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id z10sm16989319pgz.88.2020.02.17.00.32.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 00:32:35 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/8] riscv: move exception table immediately after RO_DATA
Date: Mon, 17 Feb 2020 16:32:19 +0800
Message-Id: <20200217083223.2011-5-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200217083223.2011-1-zong.li@sifive.com>
References: <20200217083223.2011-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003236_515138_FAE4A380 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Move EXCEPTION_TABLE immediately after RO_DATA. Make it easy to set the
attribution of the sections which should be read-only at a time.
Move .sdata to indicate the start of data section with write permission.
This patch is prepared for STRICT_KERNEL_RWX support.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/kernel/vmlinux.lds.S | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 1e0193ded420..4ba8a5397e8b 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -9,6 +9,7 @@
 #include <asm/page.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
+#include <asm/set_memory.h>
 
 OUTPUT_ARCH(riscv)
 ENTRY(_start)
@@ -52,12 +53,15 @@ SECTIONS
 	}
 
 	/* Start of data section */
-	_sdata = .;
 	RO_DATA(L1_CACHE_BYTES)
 	.srodata : {
 		*(.srodata*)
 	}
 
+	EXCEPTION_TABLE(0x10)
+
+	_sdata = .;
+
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	.sdata : {
 		__global_pointer$ = . + 0x800;
@@ -69,8 +73,6 @@ SECTIONS
 
 	BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
 
-	EXCEPTION_TABLE(0x10)
-
 	.rel.dyn : {
 		*(.rel.dyn*)
 	}
-- 
2.25.0


