Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C27E1A1CE7
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 09:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkJsQ5wK/x/TlqEbA+mDNHgNHjaEj7vOian5h3Az/dI=; b=dqXWl9dnRLkWKo
	HPAORMPD7nclg/tKAEfrayTyGEQROL0ZEFwhq9G3mkEvLaacTvZlbQV/kpNAffmYT6oassl2If/yR
	dUQIFCaSTwEHA0FIltlP/isUW+/0bl02cebHxyfgh2DC1+iz3jLA01Z4jt+e0uLKu74Z1KHOjzm/4
	NI9Cw5HbZ41uTG7CA+sd7u/+UYIY5u26DuZl2uXztqi2MrxiLudulNPTYALTSKCt1h6tIIj2rkjHq
	oAEvPGZOFhT/D7Oge9roP/bJT3czwgcsvKIwqB6nsJEzCdnMo3J9cZLu7qvUslFAkQVlCWQrO6UVf
	dcGx/GfcfBUnVt1Ssc1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5aL-0007We-Pi; Wed, 08 Apr 2020 07:57:21 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5aF-0007Qp-Mb
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 07:57:17 +0000
Received: by mail-pg1-x541.google.com with SMTP id m13so2970197pgd.8
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 00:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XkJsQ5wK/x/TlqEbA+mDNHgNHjaEj7vOian5h3Az/dI=;
 b=GoQ2lksF14YYCaOtMuoKYM7vT3Yx9eYSzDJeBCT1onK+swzFQVmrxQNz8A0Tx1UV7w
 N4ukqiuGUz7US9jG6G1pNTsCLz0BIPllR5BjjArtNUhj2U6cj8SyMJrr0nyeieYkUBWS
 lRuu0Ksmv3TE6giCaCh0dC879/19i4O751Yez/1Q6bLNmfw/Avdp1LOLgu3G/M+9XGP2
 OD2j9gih+Y+EHJJMt6O6mMQ8IEtjo/iu/nAwwpROg7jmT5q2oS8i+Fyi2h759BYMgIic
 FXmTCxNbmRzSoqCsLEcV0QdM/JF3rA1UzVR/48veI1V1jXkwkN5Aj5Sh4zsr73xcomL4
 u3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XkJsQ5wK/x/TlqEbA+mDNHgNHjaEj7vOian5h3Az/dI=;
 b=ZAIioFoDcwrb3AQr1EZNbxZOH6picyYZTRd44/yMDH69uYspBupbOy/QQ814kH7RzS
 4z73sA0Ek6yqUq9QKfqN1FA09zPmZ4tKP7g5v/EVLi6brAWW1MReoVaW+HXUA1E2HSRX
 Ie4eJMnYzFIQy0R3hWEFyAdIHOMN7pv2FHjpQDiJo3bazRKvvyzGyDj2FZDu2fZ4OI5N
 HgZFWPgnyEK5xQDZ3Nb4UtsXo554Cflr7cIHIb7x3My0Q4AbAhJg4GhGNokYKyFZxQ80
 0CBOBGECWdywZXm9mEboROJBSW3vbxYo8dOsQmGE+mhAT0iFzpg7AaZeCyEnrRMXe/3j
 tY2g==
X-Gm-Message-State: AGi0PuY1JQe9h3I8UYkfxyNRFj5BogiEqIIMvLh6gt66+qY+6sSDISH+
 cyOA9Uvvzs5sAxW3krz/V0voqw==
X-Google-Smtp-Source: APiQypJAFMM/eXRWkh6FXOGZKFYt6ev58qcGDr+z+KrnA0/S0UYY70C6txy6deaM8WjT5DJ2UcB/OQ==
X-Received: by 2002:a62:1e84:: with SMTP id e126mr6071812pfe.315.1586332634924; 
 Wed, 08 Apr 2020 00:57:14 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d85sm485599pfd.157.2020.04.08.00.57.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 00:57:14 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/9] riscv: patch code by fixmap mapping
Date: Wed,  8 Apr 2020 15:56:58 +0800
Message-Id: <27f31750f58cd0ad2805579b16b001aa88103688.1586332296.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586332296.git.zong.li@sifive.com>
References: <cover.1586332296.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_005715_755718_A775B000 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On strict kernel memory permission, the ftrace have to change the
permission of text for dynamic patching the intructions. Use
riscv_patch_text_nosync() to patch code instead of probe_kernel_write.

Signed-off-by: Zong Li <zong.li@sifive.com>
Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 arch/riscv/kernel/ftrace.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
index c40fdcdeb950..08396614d6f4 100644
--- a/arch/riscv/kernel/ftrace.c
+++ b/arch/riscv/kernel/ftrace.c
@@ -7,9 +7,23 @@
 
 #include <linux/ftrace.h>
 #include <linux/uaccess.h>
+#include <linux/memory.h>
 #include <asm/cacheflush.h>
+#include <asm/patch.h>
 
 #ifdef CONFIG_DYNAMIC_FTRACE
+int ftrace_arch_code_modify_prepare(void) __acquires(&text_mutex)
+{
+	mutex_lock(&text_mutex);
+	return 0;
+}
+
+int ftrace_arch_code_modify_post_process(void) __releases(&text_mutex)
+{
+	mutex_unlock(&text_mutex);
+	return 0;
+}
+
 static int ftrace_check_current_call(unsigned long hook_pos,
 				     unsigned int *expected)
 {
@@ -46,20 +60,14 @@ static int __ftrace_modify_call(unsigned long hook_pos, unsigned long target,
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
+	if (patch_text_nosync
+	    ((void *)hook_pos, enable ? call : nops, MCOUNT_INSN_SIZE))
 		return -EPERM;
 
-	smp_mb();
-	flush_icache_range((void *)hook_pos, (void *)hook_pos + MCOUNT_INSN_SIZE);
-
 	return 0;
 }
 
-- 
2.26.0


