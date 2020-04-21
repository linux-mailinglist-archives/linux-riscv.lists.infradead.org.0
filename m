Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6241B1FCB
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 09:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqdk4PAIqG8nuCO40pczcx65QEF5mBrlQS3vzbn1WpQ=; b=tpemX9rbl16iBx
	9lDmp8JrTEl2sREAXdecmdmx3EDOX8AERieoL1Fswmcjri4VXlfxa2OBNkNT53GSZtXSqKIyOqKA7
	V5WRlmuKLNJ1ramQyVtXIHPeDQKOppmu29u1UiYF8xEl9nItUSq4Orzrpjbj3owRHyK1ImljvZ+LV
	ZuI44VBOsLYS9cBIWG0yNXCqQp9BiKbAeptT8L/eQJ0HOCHS1cXe6EPo0EkaxLknGdx1JOvDEVYvh
	PrtUMbyL5dVkmfMjlDSa5aLXNfWR4YLvDfqonmH0GSNHI4iRvstdWkQ8OI4XBV66VNCanje1Plp5W
	nWNzaA8sAmgDukcqKcQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnMM-0001sm-4c; Tue, 21 Apr 2020 07:30:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnMA-0000xS-9b
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 07:30:13 +0000
Received: by mail-pg1-x543.google.com with SMTP id r4so6382612pgg.4
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 00:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fqdk4PAIqG8nuCO40pczcx65QEF5mBrlQS3vzbn1WpQ=;
 b=VSh9fIaBN7oj6/8mumUuw27O4lo2HM/p1xnMxKeVTUJRCRPKX9hmBeg7FHypkhD8Ky
 ztyl7JHxbH+YNrWyTR5d2CeDf9sn9cy5PW1TDJ1NQqc6R5QGspGYw+5H9egt1u9/hvi6
 PWq8HFs1fccwJDfupHdUAU4lyxrweuGSWBYPYydmRckCUhqCJIp91adXeAcVVmpVlz0W
 qj3F8jypnJBnEbTRJmqzYW7CaK7WAUcFLuchpbjeYz0bBadHfSPJ8oqm6WXLy7SOmIve
 SYAuchx4PSrvwrpc9qQz9QEU0i4cvJ3+YobJsu2QlhCAWkS2Cf/CwRXilEvVtO8XULkz
 Loaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fqdk4PAIqG8nuCO40pczcx65QEF5mBrlQS3vzbn1WpQ=;
 b=ji4rm3LcxkMePS/u/N6CgE2h2DCjqbGlDS/i2paYbnvj3CjSMZOi6zNgkW6IJc0Aw5
 AcDrAd1GwDrMG8QG0G/msSF7A3SsBFO20HE74EUlvWtLOEHyPC0mX7cEczQyZ1Z3tbTA
 YdBqMNu/BwZ6TRUQVEkU+dKBRUitkGtDFQEiwSGmOEDh0jSvcyX4fKR3KUFij9Q0TH70
 q2haHrQFF+Jr4CpcEYXheXrLz4h+zPKlmjdOobioDOOW7CYX6XBOcjLl9hvEkrjLwo6S
 abIJATjAcwyKkKrWg4mLLIwInMq1mrqUyflUzPmuqEcN7GXQpV2rV5mHPLHb2+QSbsaw
 2a+w==
X-Gm-Message-State: AGi0PuZrYgf4cBYEgFdB8ZsXLx1u4iHKGZwANhl+joeACqz5319XnB9D
 w4fs/Ufo5AggnH+2w8OWT8xQoQ==
X-Google-Smtp-Source: APiQypKQkEl7lxNFrJuCVmA5Wbfxd8Nd2XGxeohqm1S94pGJ8zgqHooREJT3fOB7mSU0szcSySZ8hw==
X-Received: by 2002:a63:79c9:: with SMTP id u192mr19776129pgc.7.1587454209688; 
 Tue, 21 Apr 2020 00:30:09 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id t7sm1535200pfh.143.2020.04.21.00.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 00:30:08 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] riscv: Remove the 'riscv_' prefix of function name
Date: Tue, 21 Apr 2020 15:29:59 +0800
Message-Id: <2a1a03d7f9895dd92490b89c926fc7975015e449.1587453338.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587453338.git.zong.li@sifive.com>
References: <cover.1587453338.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_003011_118228_01C58ACE 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Refactor the function name by removing the 'riscv_' prefix, it would be
better unless it could mix up with arch-independent functions.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/include/asm/patch.h |  4 ++--
 arch/riscv/kernel/ftrace.c     |  2 +-
 arch/riscv/kernel/patch.c      | 22 +++++++++++-----------
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/riscv/include/asm/patch.h b/arch/riscv/include/asm/patch.h
index b5918a6e0615..9a7d7346001e 100644
--- a/arch/riscv/include/asm/patch.h
+++ b/arch/riscv/include/asm/patch.h
@@ -6,7 +6,7 @@
 #ifndef _ASM_RISCV_PATCH_H
 #define _ASM_RISCV_PATCH_H
 
-int riscv_patch_text_nosync(void *addr, const void *insns, size_t len);
-int riscv_patch_text(void *addr, u32 insn);
+int patch_text_nosync(void *addr, const void *insns, size_t len);
+int patch_text(void *addr, u32 insn);
 
 #endif /* _ASM_RISCV_PATCH_H */
diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
index ce69b34ff55d..fb1e2b8fe254 100644
--- a/arch/riscv/kernel/ftrace.c
+++ b/arch/riscv/kernel/ftrace.c
@@ -51,7 +51,7 @@ static int __ftrace_modify_call(unsigned long hook_pos, unsigned long target,
 	make_call(hook_pos, target, call);
 
 	/* Replace the auipc-jalr pair at once. Return -EPERM on write error. */
-	if (riscv_patch_text_nosync
+	if (patch_text_nosync
 	    ((void *)hook_pos, enable ? call : nops, MCOUNT_INSN_SIZE))
 		return -EPERM;
 
diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
index 8a4fc65ee022..de28f23f65cb 100644
--- a/arch/riscv/kernel/patch.c
+++ b/arch/riscv/kernel/patch.c
@@ -11,7 +11,7 @@
 #include <asm/cacheflush.h>
 #include <asm/fixmap.h>
 
-struct riscv_insn_patch {
+struct patch_insn {
 	void *addr;
 	u32 insn;
 	atomic_t cpu_count;
@@ -43,7 +43,7 @@ static void __kprobes patch_unmap(int fixmap)
 	clear_fixmap(fixmap);
 }
 
-static int __kprobes riscv_insn_write(void *addr, const void *insn, size_t len)
+static int __kprobes patch_insn_write(void *addr, const void *insn, size_t len)
 {
 	void *waddr = addr;
 	bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
@@ -69,18 +69,18 @@ static int __kprobes riscv_insn_write(void *addr, const void *insn, size_t len)
 	return ret;
 }
 #else
-static int __kprobes riscv_insn_write(void *addr, const void *insn, size_t len)
+static int __kprobes patch_insn_write(void *addr, const void *insn, size_t len)
 {
 	return probe_kernel_write(addr, insn, len);
 }
 #endif /* CONFIG_MMU */
 
-int __kprobes riscv_patch_text_nosync(void *addr, const void *insns, size_t len)
+int __kprobes patch_text_nosync(void *addr, const void *insns, size_t len)
 {
 	u32 *tp = addr;
 	int ret;
 
-	ret = riscv_insn_write(tp, insns, len);
+	ret = patch_insn_write(tp, insns, len);
 
 	if (!ret)
 		flush_icache_range((uintptr_t) tp, (uintptr_t) tp + len);
@@ -88,14 +88,14 @@ int __kprobes riscv_patch_text_nosync(void *addr, const void *insns, size_t len)
 	return ret;
 }
 
-static int __kprobes riscv_patch_text_cb(void *data)
+static int __kprobes patch_text_cb(void *data)
 {
-	struct riscv_insn_patch *patch = data;
+	struct patch_insn *patch = data;
 	int ret = 0;
 
 	if (atomic_inc_return(&patch->cpu_count) == 1) {
 		ret =
-		    riscv_patch_text_nosync(patch->addr, &patch->insn,
+		    patch_text_nosync(patch->addr, &patch->insn,
 					    GET_INSN_LENGTH(patch->insn));
 		atomic_inc(&patch->cpu_count);
 	} else {
@@ -107,14 +107,14 @@ static int __kprobes riscv_patch_text_cb(void *data)
 	return ret;
 }
 
-int __kprobes riscv_patch_text(void *addr, u32 insn)
+int __kprobes patch_text(void *addr, u32 insn)
 {
-	struct riscv_insn_patch patch = {
+	struct patch_insn patch = {
 		.addr = addr,
 		.insn = insn,
 		.cpu_count = ATOMIC_INIT(0),
 	};
 
-	return stop_machine_cpuslocked(riscv_patch_text_cb,
+	return stop_machine_cpuslocked(patch_text_cb,
 				       &patch, cpu_online_mask);
 }
-- 
2.26.1


