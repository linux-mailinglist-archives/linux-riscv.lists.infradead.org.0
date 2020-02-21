Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E713F166D1D
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 03:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCnRku7aM70HyAAc+r9OSumncSqlXmUg2yjLr43iIfs=; b=tH4tcyb2FFONaZ
	o0bsFAD1qP6Py+l7JAiGT581gtqvO1DNW9nHd7H8vohcHVVl4M3WyaG6Gor9f9P+O2f8LYiI2Ud0S
	OGCFOakbupn9xIc9SOaCyEN8gVV4j7AdARscQJBc6Si3ZGmi8wVriMPfFaHPOp/FV0oAZM3fEQN0y
	VJ8Ck77N6gg+ToCqSO6veI1cFWsPtxo5OHxkSw9OaWKq2YaFawQkfWbCi5k3pYipeKtWeRfbxZdFk
	gAleHDYLZXn5d4eNWXi1jzl7cZMhIHxH2m6kxAKCbr8JmBysumNjDrEWKB7e2A27YfeV2otqRQvJU
	6o4XbQ69YUyLe36KbuDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yMx-0006Ej-9P; Fri, 21 Feb 2020 02:48:47 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yMt-0006EN-Jg
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 02:48:44 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r67so88657pjb.0
 for <linux-riscv@lists.infradead.org>; Thu, 20 Feb 2020 18:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UCnRku7aM70HyAAc+r9OSumncSqlXmUg2yjLr43iIfs=;
 b=WqfOzVTg9Hr8U2AMQVIYpiWGpvl0NuZJtcdMnVVdZukwHisxFfgl/QcidiFPpKSi8a
 ctr8INPH8KoRUl1c6FwxBJ025SvkX2OXQgckD1SrOQKGK1eeJmPH7kvckJlGUFgPG82/
 X4aJzpf3HNSPQcZH84DzP82TDli2xFOp0etJMhIRIjwuG3Znee81OGzVdrc7dHuEBDmU
 bxs3y+IDmu150YVaSdDhoQ2Ry9Y8zzeyiPbionBTuzSb6HHVIZ4qgtClRxnXSgHeJ23j
 njadmrcP338wRJuurRluOdviLs8dykKrMKaz6tFcdRrTMdFir0PIbERNllaPJ4uvTEhR
 9mWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UCnRku7aM70HyAAc+r9OSumncSqlXmUg2yjLr43iIfs=;
 b=UTsJrEWTn9rum6rqgX84Ih6OGN08IEkrozoyqHPVrx5DVx+sMbhz6PooglEnk2Ksdi
 RT7funi38AldhnKfC3123AysNeyt1mNaXveLldnZOINlSw6Pgj0g+UFS8mI+hYlsO4AX
 PxbpV8seRHm9I6YcL7l6OqcHnvLAINV2qZalzBVS1k18q0246d1LiGmjRguWlLEYjk7n
 J6fpCuA8lsnOxGMxduv+C3hx/1cUDtNmObEVufiAD+7gpzI1D8Q290isZKifcMH2P8yD
 fFnHCDm704usMUA7pFRwPMD5WZYj3g+a22qyWeCmTi3HK+PPK4Dy3dpAyPD0be+o4qCj
 s0TA==
X-Gm-Message-State: APjAAAUcCdb8Aqdogv+KEbZUjzYDJtJ2wcP5O3nYn1Hn02q1+SGHF10k
 kk/pT9UvT+5pmQw5yL7dcxzVo9egVU2xbw==
X-Google-Smtp-Source: APXvYqyOwtTFcyvCxpdLFTVvhSdfGFsynFwOuv3p310ZEa+KxrK0PB6ikVebOeeUNiwm+EHj8l8GWg==
X-Received: by 2002:a17:902:61:: with SMTP id 88mr33906874pla.17.1582253322350; 
 Thu, 20 Feb 2020 18:48:42 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id 28sm618810pgl.42.2020.02.20.18.48.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Feb 2020 18:48:41 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH V2 1/2] riscv: avoid the PIC offset of static percpu data in
 module beyond 2G limits
Date: Fri, 21 Feb 2020 10:47:54 +0800
Message-Id: <1582253275-28181-2-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582253275-28181-1-git-send-email-vincent.chen@sifive.com>
References: <1582253275-28181-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_184843_650419_CF8DB79C 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 deanbo422@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The compiler uses the PIC-relative method to access static variables
instead of GOT when the code model is PIC. Therefore, the limitation of
the access range from the instruction to the symbol address is +-2GB.
Under this circumstance, the kernel cannot load a kernel module if this
module has static per-CPU symbols declared by DEFINE_PER_CPU(). The reason
is that kernel relocates the .data..percpu section of the kernel module to
the end of kernel's .data..percpu. Hence, the distance between the per-CPU
symbols and the instruction will exceed the 2GB limits. To solve this
problem, the kernel should place the loaded module in the memory area
[&_end-2G, VMALLOC_END].

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Suggested-by: Alexandre Ghiti <alex@ghiti.fr>
Suggested-by: Anup Patel <anup@brainfault.org>
Tested-by: Alexandre Ghiti <alex@ghiti.fr>
Tested-by: Carlos de Paula <me@carlosedp.com>

---
 arch/riscv/kernel/module.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/riscv/kernel/module.c b/arch/riscv/kernel/module.c
index b7401858d872..ef81a75b1302 100644
--- a/arch/riscv/kernel/module.c
+++ b/arch/riscv/kernel/module.c
@@ -8,6 +8,10 @@
 #include <linux/err.h>
 #include <linux/errno.h>
 #include <linux/moduleloader.h>
+#include <linux/vmalloc.h>
+#include <linux/sizes.h>
+#include <asm/pgtable.h>
+#include <asm/sections.h>
 
 static int apply_r_riscv_32_rela(struct module *me, u32 *location, Elf_Addr v)
 {
@@ -386,3 +390,15 @@ int apply_relocate_add(Elf_Shdr *sechdrs, const char *strtab,
 
 	return 0;
 }
+
+#if defined(CONFIG_MMU) && defined(CONFIG_64BIT)
+#define VMALLOC_MODULE_START \
+	 max(PFN_ALIGN((unsigned long)&_end - SZ_2G), VMALLOC_START)
+void *module_alloc(unsigned long size)
+{
+	return __vmalloc_node_range(size, 1, VMALLOC_MODULE_START,
+				    VMALLOC_END, GFP_KERNEL,
+				    PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
+				    __builtin_return_address(0));
+}
+#endif
-- 
2.7.4


