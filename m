Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2841E9EE5
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 09:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RKjq7JVQi9c3OduMp9FZVvm0r35l1D6YKepPhBnED00=; b=gD3yW32rHQKgFD
	VikzOXR7nyzHzix9jHf3QsjdXMmEQ+mbRZdxw53r5FvQYVcJwiRnUb7v3ikDvBmS6o9Vx1yl2KfHQ
	WW8Ta4tqLNrCklbl4s3MQhYoDLNlVImWe86fotgyl+uNH1c5/Zvw6Cn1d59r1iYGwnxkF7MP6VQEc
	Qz3la49tTtYTZPmlSrOiZ6vgmZJ9AqkfKHb7XmCCv/tgytFqhhAZs11wKuapoO3RvHn9A2kDKgn86
	FFL1AbV7/C5ymCIj8XzW4so4fYBhca4iZ+KtSKIzGWkl1TekLupKLXGOnMoDaRmLmdncvmFWlN5Fb
	T5M0lL+vAw2WHO6Vxz5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfebB-0002Gq-T8; Mon, 01 Jun 2020 07:11:05 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeb9-0002GV-1D
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 07:11:04 +0000
Received: by mail-pj1-x1042.google.com with SMTP id t8so4559751pju.3
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 00:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RKjq7JVQi9c3OduMp9FZVvm0r35l1D6YKepPhBnED00=;
 b=FjlX1hn9EWuUswEHSwe6ZYYboeXGzLPmsPPvER9nDXPbgjk20RUrOVHP9JfQTe6Tyj
 G59pNp33ESW01PrIqES4+XZWq0p/dTQomuutAx8jayGl9iBQiLxmBO0Dg7zIIyTWR5qY
 AZJm29QVk1kivuvJI9dBKjr3an4oE1haIvhP5FvfAST/TKDgaQD/e4cTCzRzeSsQ5ERf
 aAPaSus6xx5HpvGFuZ50s/E/m9z33CSHtgpKmtRCmmaMIfJqSjj/C9AW7FZ3RTcWR4qv
 s3/SLBL6WuWfkNhmGxplhdGkot6RupLBCjHi5retEK202lSPTAezVNJqG0cOOUH3plZI
 tjHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RKjq7JVQi9c3OduMp9FZVvm0r35l1D6YKepPhBnED00=;
 b=sM7t1eTwI8DiL0KaFsXYhJC2ae3csL0NoUuo8UjX4tEF9fLQujOKfqpYo8sR7+BzlF
 1nx6hAI92U5nhqwOiub3yctg5TtIC0HhE8ETY9kwaSKvrS0UZjd4kwi7/UcmNH/f4abK
 0NCUWEOxAcGWZ52NGFHAJ/YDRLiBkBPP1zX4jz83nXmuU8eA66SZDzvu4bAqRD7R++88
 h7aaMJZdZ3CGgkCfeVj/Y1QZImuSWedNIgMOYdGQoyKzzlIpn1W5ZWFUD5ivcuLVB+Hw
 xdvc5jeeopmtrx7hBm8wod3twNQVNwF994GAAVLqem+uFyaenqISE0rvcg209r/WDqad
 8ZHQ==
X-Gm-Message-State: AOAM530nXxdpxc13dM4nOM1mctsVUoiw6J2UgnSQkJhBN/vQX24doCT2
 mIj6cbf2KyjjDHmYvfuqt4qQvQ==
X-Google-Smtp-Source: ABdhPJzsJ4Hzy3IdeHseSpUPWtiXruOiOYWXnjlmGwrUc1ACKSCLnc2ryE7yAWbXh+0VcijcszGCDw==
X-Received: by 2002:a17:902:7588:: with SMTP id
 j8mr3981773pll.43.1590995462096; 
 Mon, 01 Jun 2020 00:11:02 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id 3sm3035593pfe.85.2020.06.01.00.11.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 00:11:01 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] riscv: fix build warning of missing prototypes
Date: Mon,  1 Jun 2020 15:10:58 +0800
Message-Id: <29cb3d8c72db7fe36507f487a71224b812805197.1590994864.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_001103_107227_0A63C4DF 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild test robot <lkp@intel.com>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the missing header in file, it was lost in original implementation.

The warning message as follows:
 - no previous prototype for 'patch_text_nosync' [-Wmissing-prototypes]
 - no previous prototype for 'patch_text' [-Wmissing-prototypes]

Changed in v2:
 - Correct the typo of commit message.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reported-by: kbuild test robot <lkp@intel.com>
---
 arch/riscv/kernel/patch.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
index 5805791cd5b5..d4a64dfed342 100644
--- a/arch/riscv/kernel/patch.c
+++ b/arch/riscv/kernel/patch.c
@@ -11,6 +11,7 @@
 #include <asm/kprobes.h>
 #include <asm/cacheflush.h>
 #include <asm/fixmap.h>
+#include <asm/patch.h>
 
 struct patch_insn {
 	void *addr;
-- 
2.26.2


