Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D331C1B1FCF
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 09:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WDP1SMH7S0gCqpLudhaUhXZhK0yEhskeGa9kdwQxh4=; b=EliU7/llcwwg5X
	jX82Sm+LVwh/VsbvSgCrcRAwRfiW9n59KPyCe/ME1TAzU4JDTTEUPAJ2avACslgz6AqjgSkDcJzyb
	Ju9O5xUGCwBRKgJFR/7/BtE+Zk1tr5q4Xqo2GRj8Y8WTfNO1iUm7nlyS7GuYI5kQ2B95uQT92smpB
	c5i1Itq2ryVZM00isoT4z4zKvuZdPY+Ydvhc2ctLC5cS7TyEjStI+dsA6T5mJOTwJmMtcFCnGRz/z
	HjliSOjDI7vI47uRW0Y+aTLipWMrHlRS8M22RY1tX3w2BKglDAktbPvYOPmAz3955Ghbyj2Q8AvDf
	lbiZN6vrdngiqHDMdtwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnMP-0001wV-82; Tue, 21 Apr 2020 07:30:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnMC-0001D4-9Z
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 07:30:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id r4so6382664pgg.4
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 00:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4WDP1SMH7S0gCqpLudhaUhXZhK0yEhskeGa9kdwQxh4=;
 b=D7E7YCQkPau74cH6jcUzcy5Yz55VXMbppI8DPPkOwo4imWbzJ01JFL5vyQn3xfm4SG
 SEKdbZBdqa+Qjv4s7fIY9hSNLLfGK97lhTksdkGtOZDfoBnq18rM7U8HD9FPq6GavRxT
 oPQIa6bv2VkOAMLxnWkoS12OHcWmyrC5JI/vom9Ksyj3Oq81VPD0YOILAI4bq+ktQJ/M
 EHiZH8ZxhGeUe0WKAEtIl/Nu81moyISZ6Tb50hF04itJbfncIt5UXOkJCxPU5rZ0gxky
 wNJcnGXKSnplkL4rDvMyCMw6q/jy7N/Ni67Z0ggJEsbcehYGEDze3nSBSKMj5WLiBYIT
 ZhAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4WDP1SMH7S0gCqpLudhaUhXZhK0yEhskeGa9kdwQxh4=;
 b=nUtbj5AW/2hLbJ/7F1OB6zKUKp9EiqQ0q2UgdV190uG6RawR7khBCcBZg++OF6aeJY
 JIYkVFqdNAkD24P8QrDK9eE5p0GMTp7rCqrRSqJEqV+CRDauZUsYB3+p8XGXeFSrnaH/
 ORdYBH8+PXs/7BzVjT/dWt7Y3GsJrtDdnkKz4Ng5OmrG4APxaYFdjpbKwKKOSzSd8rKC
 rB0DDV14R6805i17GS8OrkAhsPw5BZzQHfha7vR3ZMa0FseBDJmf+IL0w81fm3cWD8rq
 Rm39Yut3IgG7gaTYQbwdv4Gl4x04VuuYhXniMX27ayOiE/PtxEMsoQrFu7T+BeogjpOE
 WZLQ==
X-Gm-Message-State: AGi0PuaZk4Wc6IXCdgFW4MF19JOhxZaPNQus34Rxsnyvfja0XjOJFVHH
 DIRrBZC+oGNQRfLnCdwGUPeuWQ==
X-Google-Smtp-Source: APiQypLh/ynGfDBOcHwhG6BfHszacpO3EvqFZChIUyhgkVVVqIUwEdQMhJVZDDjeY5DtQCaFIjqXQA==
X-Received: by 2002:a63:4d4f:: with SMTP id n15mr19479072pgl.399.1587454211726; 
 Tue, 21 Apr 2020 00:30:11 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id t7sm1535200pfh.143.2020.04.21.00.30.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 00:30:11 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] riscv: Use NOKPROBE_SYMBOL() instead of __krpobes
 annotation
Date: Tue, 21 Apr 2020 15:30:00 +0800
Message-Id: <79fd8bc7c1d80c35124ab542cb3306a7209e08e7.1587453338.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587453338.git.zong.li@sifive.com>
References: <cover.1587453338.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_003012_351165_A5CFF6F7 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

The __kprobes annotation is old style, so change it to NOKPROBE_SYMBOL().

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/patch.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
index de28f23f65cb..8acb9ae2da08 100644
--- a/arch/riscv/kernel/patch.c
+++ b/arch/riscv/kernel/patch.c
@@ -20,7 +20,7 @@ struct patch_insn {
 #ifdef CONFIG_MMU
 static DEFINE_RAW_SPINLOCK(patch_lock);
 
-static void __kprobes *patch_map(void *addr, int fixmap)
+static void *patch_map(void *addr, int fixmap)
 {
 	uintptr_t uintaddr = (uintptr_t) addr;
 	struct page *page;
@@ -37,13 +37,15 @@ static void __kprobes *patch_map(void *addr, int fixmap)
 	return (void *)set_fixmap_offset(fixmap, page_to_phys(page) +
 					 (uintaddr & ~PAGE_MASK));
 }
+NOKPROBE_SYMBOL(patch_map);
 
-static void __kprobes patch_unmap(int fixmap)
+static void patch_unmap(int fixmap)
 {
 	clear_fixmap(fixmap);
 }
+NOKPROBE_SYMBOL(patch_unmap);
 
-static int __kprobes patch_insn_write(void *addr, const void *insn, size_t len)
+static int patch_insn_write(void *addr, const void *insn, size_t len)
 {
 	void *waddr = addr;
 	bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
@@ -68,14 +70,16 @@ static int __kprobes patch_insn_write(void *addr, const void *insn, size_t len)
 
 	return ret;
 }
+NOKPROBE_SYMBOL(patch_insn_write);
 #else
-static int __kprobes patch_insn_write(void *addr, const void *insn, size_t len)
+static int patch_insn_write(void *addr, const void *insn, size_t len)
 {
 	return probe_kernel_write(addr, insn, len);
 }
+NOKPROBE_SYMBOL(patch_insn_write);
 #endif /* CONFIG_MMU */
 
-int __kprobes patch_text_nosync(void *addr, const void *insns, size_t len)
+int patch_text_nosync(void *addr, const void *insns, size_t len)
 {
 	u32 *tp = addr;
 	int ret;
@@ -87,8 +91,9 @@ int __kprobes patch_text_nosync(void *addr, const void *insns, size_t len)
 
 	return ret;
 }
+NOKPROBE_SYMBOL(patch_text_nosync);
 
-static int __kprobes patch_text_cb(void *data)
+static int patch_text_cb(void *data)
 {
 	struct patch_insn *patch = data;
 	int ret = 0;
@@ -106,8 +111,9 @@ static int __kprobes patch_text_cb(void *data)
 
 	return ret;
 }
+NOKPROBE_SYMBOL(patch_text_cb);
 
-int __kprobes patch_text(void *addr, u32 insn)
+int patch_text(void *addr, u32 insn)
 {
 	struct patch_insn patch = {
 		.addr = addr,
@@ -118,3 +124,4 @@ int __kprobes patch_text(void *addr, u32 insn)
 	return stop_machine_cpuslocked(patch_text_cb,
 				       &patch, cpu_online_mask);
 }
+NOKPROBE_SYMBOL(patch_text);
-- 
2.26.1


