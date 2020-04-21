Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBF81B1FD0
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 09:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcpN/XiWAS11rrSyAPDkJjBumx0MxRm5WZVge7KIbAo=; b=n4EDroUkwKvv+B
	o7ioItROBXwaq9v0FZlpZOo65Me9obNWRozszhVStW6zzqzCJ/QxekOkAEp4LmPFFhg9yLIfsl2Pe
	3VFxSxmtqjsOP00RyheO5qwJjuMJivwIJOq/0egOQaz+nVgxOBySeqAbyd0ddfTUwLNtby2qNFVqv
	zipfKh/XF2+O/4mg6rXwbqFLqxpQI5XqHCOG0rBmUOKqmwoxyeVqfUJoFosQRmFg+kiRUWwO+jqFf
	wcKCPXL3fUF3V2UQlp+qk/vGSBOn5xx8Hh5aYOm/S+cSmSUbCYW/HtWxx3WgLf6uxTy1cGhtGsG5t
	mQOw4CxvN6vl29uIeEgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnMT-00021C-Tk; Tue, 21 Apr 2020 07:30:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnMF-0001X2-8T
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 07:30:22 +0000
Received: by mail-pg1-x542.google.com with SMTP id o185so5846164pgo.3
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 00:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jcpN/XiWAS11rrSyAPDkJjBumx0MxRm5WZVge7KIbAo=;
 b=JYud2tk/6N1f/uA3Roin6jRKpujCUbSPMrF6i9FoQB5BBtRZdMWS2QDvmbGoiKXuHQ
 TDJj/ngfSraP8Mgl2WbSqs24kJu21un2zHnQLwfvaMGYfPtOqrMKCa2QduYauvYJbz3h
 w0PahAK5WeZx4jNZPQla+DMTr3GaHJl5cUk/lxLT+tWlXON9MwDRw6ECsx77m6IrTsqB
 OtwIkUQ21sYyZFNNbMMJJkZZZaJbuHpbMVIROyl64ij3wzDGXwh317pbsSbtRiNHkxYX
 2MJYC8inZ2bawqZRbmJOyQduZ2SLoosXOpfV1h5k5eFX0TzlRK2hakQaLJS5eoo+1jgf
 lm+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jcpN/XiWAS11rrSyAPDkJjBumx0MxRm5WZVge7KIbAo=;
 b=nZA13Cu0NsaUIDbuuwIU2UlhCtwVrXWqCovIrwEV0n743Is9Iea/6yrhFVOkWy84j9
 CDHL75Y+ON+8sw6ZwVgmON/48c8lI9Lu6H8DsRmcexr7pvIuY1lZXoUb5FxiFfPyfOhP
 4D8yZnUe7uA3lenoleao+uqPQBg8V9e8+YdMAJVW6gc2ULxi4vD5dX3Ei2t6atOFg9T6
 XpA+Kcl91gJVMbuPlU2ATHLKu2VuyZcIc36y/XhYLR8SYe6EfeLCqlvXVpcXWnfVgPzp
 CYhay6TwQGLF1M1PshnpFp44dmGjguOcCkGid+3WLxj7vqCLPK87KWpgZbcF4x3AMqdu
 zYfg==
X-Gm-Message-State: AGi0PubBQjcXk2rYxzbuLfC5uAP9ybuS/sm1sWUudSPPoUumMrmkKxqm
 ZPghvvTgj0tXacZF1XlSwvNLDw==
X-Google-Smtp-Source: APiQypJAkMhSjNf221KM9EVsZIhg2TPkidVKczHxUwbnnXw5dVzEe4kTer4jWi34bhipomvboJ76vg==
X-Received: by 2002:a63:a519:: with SMTP id n25mr19759868pgf.256.1587454213662; 
 Tue, 21 Apr 2020 00:30:13 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id t7sm1535200pfh.143.2020.04.21.00.30.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 00:30:13 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] riscv: Use text_mutex instead of patch_lock
Date: Tue, 21 Apr 2020 15:30:01 +0800
Message-Id: <4d5bf5e362523d48a89891942eb986d98b0584e1.1587453338.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587453338.git.zong.li@sifive.com>
References: <cover.1587453338.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_003015_413430_B7181B51 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

We don't need the additional lock protection when patching the text.

There are two patching interfaces here:
 - patch_text: patch code and always synchronize with stop_machine()
 - patch_text_nosync: patch code without synchronization, it's caller's
                      responsibility to synchronize all CPUs if needed.

For the first one, stop_machine() is protected by its own mutex, and
also the irq is already disabled here.

For the second one, in risc-v real case now, it would be used to ftrace
patching the mcount function, since it already running under
kstop_machine(), no other thread will run, so we could use text_mutex
on ftrace side.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/ftrace.c | 13 +++++++++++++
 arch/riscv/kernel/patch.c  | 13 +++++++------
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
index fb1e2b8fe254..08396614d6f4 100644
--- a/arch/riscv/kernel/ftrace.c
+++ b/arch/riscv/kernel/ftrace.c
@@ -7,10 +7,23 @@
 
 #include <linux/ftrace.h>
 #include <linux/uaccess.h>
+#include <linux/memory.h>
 #include <asm/cacheflush.h>
 #include <asm/patch.h>
 
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
diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
index 8acb9ae2da08..5805791cd5b5 100644
--- a/arch/riscv/kernel/patch.c
+++ b/arch/riscv/kernel/patch.c
@@ -5,6 +5,7 @@
 
 #include <linux/spinlock.h>
 #include <linux/mm.h>
+#include <linux/memory.h>
 #include <linux/uaccess.h>
 #include <linux/stop_machine.h>
 #include <asm/kprobes.h>
@@ -18,8 +19,6 @@ struct patch_insn {
 };
 
 #ifdef CONFIG_MMU
-static DEFINE_RAW_SPINLOCK(patch_lock);
-
 static void *patch_map(void *addr, int fixmap)
 {
 	uintptr_t uintaddr = (uintptr_t) addr;
@@ -49,10 +48,14 @@ static int patch_insn_write(void *addr, const void *insn, size_t len)
 {
 	void *waddr = addr;
 	bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
-	unsigned long flags = 0;
 	int ret;
 
-	raw_spin_lock_irqsave(&patch_lock, flags);
+	/*
+	 * Before reaching here, it was expected to lock the text_mutex
+	 * already, so we don't need to give another lock here and could
+	 * ensure that it was safe between each cores.
+	 */
+	lockdep_assert_held(&text_mutex);
 
 	if (across_pages)
 		patch_map(addr + len, FIX_TEXT_POKE1);
@@ -66,8 +69,6 @@ static int patch_insn_write(void *addr, const void *insn, size_t len)
 	if (across_pages)
 		patch_unmap(FIX_TEXT_POKE1);
 
-	raw_spin_unlock_irqrestore(&patch_lock, flags);
-
 	return ret;
 }
 NOKPROBE_SYMBOL(patch_insn_write);
-- 
2.26.1


