Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBF11A0F88
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 16:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYuVFCggRo9I8GvVGPv9n9TMuc3y+S8enCWZ0r9b2Rg=; b=GD+c0Md0v7B5Hx
	cffoYkK41lUhY51FpCpi1K6iJWjnYKRE6KyXPjNzXNEkaFWGfivrHcCn/fBuuD+OBy9/EgsBH3uKE
	Q5h7SsnuHtFjTHjTcGwdvaqmjd6CyCHTu/pd1U0tbQDBq3p/oEnjz86sH3H+NtOxWZEGgwNG3aFsb
	om0BFaCfa2/ifbu2B/X3PSrlIVKvWN514En2I0P34RbAN54nMoSqwTjHIB17qxPNTKUUosET4ntfc
	qi+wjYbYchyTm0QolZwlwCTfeSpd6ISozcAsVIKW8QfLqVl65ACjHr+iE3dhjgzeX43f0DvHjyZNm
	7AywkuaNaIYoeK3vTlTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpVP-0006GO-HN; Tue, 07 Apr 2020 14:47:11 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpVI-0006AZ-S0
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 14:47:06 +0000
Received: by mail-pj1-x1041.google.com with SMTP id fh8so850305pjb.5
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 07:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kYuVFCggRo9I8GvVGPv9n9TMuc3y+S8enCWZ0r9b2Rg=;
 b=Dp2cyuiV3Zq2urQAMh7yiuZ3tl4kdNTj0CnDofGx5CYcevhuKy6HPSG4E7W9b0Q7Y0
 2uRjZtKohnI7E8ZgkiEw8px7x+qMhXPYizZnM37q5PEOBdTSXVfkFm1rceB9zklVQOkX
 1LPAhRh1htLQX11lcxKXodjYAR/tQZSpZ31ln21dus97h07gwSbhgcUgQebQncnDJVxG
 FTmWLZgq3KfB2/OjR+yXpBM8YXWRHKJp+WLQ2haAVfKXzKbFkVmcTQIrch4ZHhaQgeM+
 pnouesMXOGAoFz4QI/DgUrFHdTMGktQ4jJzfrqzYGwFkYxCBwnkXraurAUu5y22zedFW
 bdyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kYuVFCggRo9I8GvVGPv9n9TMuc3y+S8enCWZ0r9b2Rg=;
 b=EKTmE1/OmWUkUSOpltAYXjNyUCgZR/IaBXzKfWsGAHKB1sh9D4alogNBI0Ah1SjuuQ
 ggEtg/A0Pi5xUSdWHJ6JMYLaAqrxOjQI7N0AfsMBbPmAFALQ94QjHzvriTZSe790KUCd
 hM4fERDxyfGweLQpfful3Vq24Oy4YttFwrPRh8KTLNLDUwYhU8hGFwMORXZ5cbWVH+WW
 z9CrLYW6eOP8EMkFigt3ILsKEXgebbA0QzEAISKpk6i/ZLHlhz7++T9b7WVW36VQDCCY
 f2Kheb3mgEuNDMxlnt6VXANr+Bi3RCevcTfN87BeJuMy1n1VdZxqPOCZxd593JzwJFmY
 9vqQ==
X-Gm-Message-State: AGi0PuZR3J2CuN9ohulJkPRuREM6VSeFfQygbDXAn5J1ucZSSSN5j4B2
 uUXi7QohxLvO7U4qoMOkQh0VmQ==
X-Google-Smtp-Source: APiQypJeg8iV+Is/jjghotuLsws3LW3MbtvTfDLRSrO+mQADIEt6UxaVlUqnEGdv59l9qdnUHdBNhw==
X-Received: by 2002:a17:90b:4c84:: with SMTP id
 my4mr3182095pjb.3.1586270824425; 
 Tue, 07 Apr 2020 07:47:04 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id y15sm14190093pfc.206.2020.04.07.07.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:47:04 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/9] riscv: patch code by fixmap mapping
Date: Tue,  7 Apr 2020 22:46:48 +0800
Message-Id: <0b6ad2759b47731a83008b46dbbed7c92e68cae2.1586265122.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586265122.git.zong.li@sifive.com>
References: <cover.1586265122.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_074704_925365_18C5B00C 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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


