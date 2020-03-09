Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA1417E526
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 17:56:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seWJfto8ScXH/WTie1kGmp0AZpPcjTPuoxrfVsKEou8=; b=YQHDGJj57hXEmd
	w7K2jL40NVtd9O9qSw+4KS1k+al/kzdjJSgyH7SwfSoSNUYSE6AFJApAWo9NvSqo77oJUEDUCxNQe
	s3ISPJNPcZWgUKNO+u6wzbE5iX28qG3NF+MGFvYEVrEnCkq8KU75/qlSMRhuZ1kUCSZujuBq5TJLY
	SCPu02329rAlax3A+57FsLJGpasrlpR28ESpO86F2/+wDK0Y066jcMDWrBVGeWv4ckPEdopA+aZs5
	HgvP7CNrrKKW8tmcTZEOJGdFDWZgrb1OIq4NY1eXCbRaX39ZwxNhdD0qPvr1CmRn2treioydiqogC
	TUl7ip+OayDXvdyEuAyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLhT-0002EZ-T7; Mon, 09 Mar 2020 16:56:19 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLhI-00024A-LR
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 16:56:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id f16so2073004plj.4
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 09:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=seWJfto8ScXH/WTie1kGmp0AZpPcjTPuoxrfVsKEou8=;
 b=ZYOiXfiY0tuckfLvllImLc1PbkvyeyMedOVlEVYN8R2vuqmWY3Pk58X31O6HtH1cMQ
 F4wo1cSGiZlx5pD2FM2mTALZXAGQH8b7G9UU8YcW1TVdW8l9z+94mEs2fqOCJ8XnGhxX
 oGfN+MV06tnAAhEY1DcVv6yHEnbmLysfoigH9gIClmGeVe7y4ctJGqO4ScJCk8JPIEP3
 3y92APRfOMk/ipYJEKKDf6HnMqwP1duhPyvlvgAYg2cl4CwZ0yLqOMoYxRm7EI33JsG/
 Wq4+HmnQATpQgd0JT1TJVWY1eznEda9oruz+3TYhG8zlO01YOkECSxW8VWmkyPYZDujq
 evlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=seWJfto8ScXH/WTie1kGmp0AZpPcjTPuoxrfVsKEou8=;
 b=Mq94tvEoDpxRxbnMPONgKQHh7HhJvyiNcXfTgCMFcLlIF/4lNgn+lserUYldu3KvCw
 K7ooW30L6RbN4EOsTOsVZksz8LZLPJbL5GTcrKSxGRFoFEkd473c22rFwOHKibrCrt86
 fiMn2Dw8IShXiNJn7XyyJTk41fKJ2UZvocOOVgLKnSZXJLLH7+aJJtHtHBTOATvGwZZ7
 /nhIpN75QH16mwfJWKezteCSo48cHNidoO1hp3OoTpiSRwj8Rn1seOtMCqZx9Xb3UlQi
 6tUotUxzJc/13HPpOtdl2kMExkzdTWBo2IWECIFwZq/IId6V9/Bdy7kqe4Y0oglB163y
 JZpA==
X-Gm-Message-State: ANhLgQ1e/Yt7NCst50XXJpcwIkfNKE6HoBzL8ImGIXRvk/O36M37SGo9
 Ibs2s5Q6TtZu+aPLY4UeYYLNmA==
X-Google-Smtp-Source: ADFU+vsyfd5fnD7Id1YJ9cBBLv47NvOkkKzY+u5QBKpwxGSA2UnrFBvvrspWMG1D+5N/ft+289Ji3g==
X-Received: by 2002:a17:90a:202f:: with SMTP id
 n44mr255862pjc.150.1583772967759; 
 Mon, 09 Mar 2020 09:56:07 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id cm2sm104013pjb.23.2020.03.09.09.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:56:07 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 9/9] riscv: patch code by fixmap mapping
Date: Tue, 10 Mar 2020 00:55:44 +0800
Message-Id: <b414b96a2d9b2d2837550306a4c71b8b0f2e6c7e.1583772574.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583772574.git.zong.li@sifive.com>
References: <cover.1583772574.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095608_733749_E0692180 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On strict kernel memory permission, the ftrace have to change the
permission of text for dynamic patching the intructions. Use
riscv_patch_text_nosync() to patch code instead of probe_kernel_write.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/kernel/ftrace.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
index c40fdcdeb950..ce69b34ff55d 100644
--- a/arch/riscv/kernel/ftrace.c
+++ b/arch/riscv/kernel/ftrace.c
@@ -8,6 +8,7 @@
 #include <linux/ftrace.h>
 #include <linux/uaccess.h>
 #include <asm/cacheflush.h>
+#include <asm/patch.h>
 
 #ifdef CONFIG_DYNAMIC_FTRACE
 static int ftrace_check_current_call(unsigned long hook_pos,
@@ -46,20 +47,14 @@ static int __ftrace_modify_call(unsigned long hook_pos, unsigned long target,
 {
 	unsigned int call[2];
 	unsigned int nops[2] = {NOP4, NOP4};
-	int ret = 0;
 
 	make_call(hook_pos, target, call);
 
-	/* replace the auipc-jalr pair at once */
-	ret = probe_kernel_write((void *)hook_pos, enable ? call : nops,
-				 MCOUNT_INSN_SIZE);
-	/* return must be -EPERM on write error */
-	if (ret)
+	/* Replace the auipc-jalr pair at once. Return -EPERM on write error. */
+	if (riscv_patch_text_nosync
+	    ((void *)hook_pos, enable ? call : nops, MCOUNT_INSN_SIZE))
 		return -EPERM;
 
-	smp_mb();
-	flush_icache_range((void *)hook_pos, (void *)hook_pos + MCOUNT_INSN_SIZE);
-
 	return 0;
 }
 
-- 
2.25.1


