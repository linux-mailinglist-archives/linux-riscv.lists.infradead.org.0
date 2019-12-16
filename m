Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C27E12009C
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 10:14:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QO2XYproH0t5I47F5mhtBi9AMEJLuvvc53hQXLZNLWQ=; b=f0EuKugw/yPQKD
	bq+1yfzOuhfypRCfoEUZ/9UPDpjuDoORGiaXXX3NooqMeThr7J6h+2cX47HpHJSG/YtN4QHKqdB86
	IUr6BS9OE1rhI+GPS63H64T+nt1OnKj+fOErQgXDfmGlYeKJQs2I2TD7Pnd2rGJB09E78plkd3XZu
	s4KOQqfcb5lmnjTnq0KxfBcK1mlIyV7zbqOdy9Fo0Ou5CPQh+Q8lX0QKKq93IMBShCVt3EgOjnejd
	CkJiqUCepK8it6mc1HedcY9n5nDMo0OaZyRIF4Nc/vcXSAt9NooJ3xNYlad/peVLE/sEnGEVdTvuV
	Pf9V3RXOkEJgOdPNpF/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmSM-0003hV-40; Mon, 16 Dec 2019 09:14:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmS8-0003U9-TG
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 09:14:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id x185so5245090pfc.5
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 01:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QO2XYproH0t5I47F5mhtBi9AMEJLuvvc53hQXLZNLWQ=;
 b=AoKOXKO/1ir4bT+D1DlgUf1isDtUDWHygosuKaYk74JMk0vJNwzkDiuuwuQ9fngA1n
 oYb73MSGF+jaWJ0xNyXkE3jFt6O6avV/NLsFX5CLRbXiXupSyDFL8eEjKRdY6tNTBZXp
 WYawDjkXM9XmDchvoTvdFZh9lgNhR5sHnoqZT/02LTG5dszcvAlzWP6dKegVdNbF+9NX
 yORcbNJ30Z9aWZLfWCleQxTYiGtFnBeJPQnNcpnFvi/zfjB11qmMKay7tQBLZ7C2ZDCZ
 kZ8WRsNgPuAH7N723ElFNiM5b8rNYxcLlOdf39fvw7um1NXRXMrzqtcdIH6p8kY6RNbE
 nYvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QO2XYproH0t5I47F5mhtBi9AMEJLuvvc53hQXLZNLWQ=;
 b=eW7sT3DsrG+lZvAxc8EGveYQm8KNzXE7iHYnj3hNgmdMIHcw8n8TIjZGtooN0NYJap
 n+IqR/Q/8I6D78pzjDLiRUh1jR/XFGEtMiynIo9QKGsH8bxw2Wicyp3LXuHYD3ZXCkV0
 fd1SKm/ZuJEPyj8+gIU6nlkLMniM7HILB3PpoVE2waZElHnpm9ifR9hRk9czofFdN/OL
 5cteWv/WWZfEmPzBJg87sSX1hpBnqG/PVPwwQg49qJr2H13CA0hH//+7F55A+lksvlvM
 NtGExBL7g744XHQUL12ZcVc5IRtMcD9Jtk7rC1ltFC+xJC1VQFFtcWJk+hMLFhmVxMtQ
 xhrw==
X-Gm-Message-State: APjAAAVGxcWXBYr1FS0F9XlY2n05QrIZMrLz/CYUCXH4gTjvLY58lH5S
 Y45JATgIgl+klH9fBvW0rkDysqeE4TY=
X-Google-Smtp-Source: APXvYqxUgfQ3E9jefxz8vWiRidBaCpHKdCxu+LuYaqveP9Nh/uP6bKmQCD9Iwj5dJoI/m61t7uUpKg==
X-Received: by 2002:a63:4d4c:: with SMTP id n12mr17283981pgl.212.1576487648452; 
 Mon, 16 Dec 2019 01:14:08 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr04-ext.fm.intel.com.
 [192.55.55.39])
 by smtp.gmail.com with ESMTPSA id x21sm12505033pfn.164.2019.12.16.01.14.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 01:14:08 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next v2 6/9] riscv,
 bpf: provide RISC-V specific JIT image alloc/free
Date: Mon, 16 Dec 2019 10:13:40 +0100
Message-Id: <20191216091343.23260-7-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216091343.23260-1-bjorn.topel@gmail.com>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_011408_964292_67AE4C73 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-riscv@lists.infradead.org, bpf@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This commit makes sure that the JIT images is kept close to the kernel
text, so BPF calls can use relative calling with auipc/jalr or jal
instead of loading the full 64-bit address and jalr.

The BPF JIT image region is 128 MB before the kernel text.

Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 arch/riscv/include/asm/pgtable.h |  4 ++++
 arch/riscv/net/bpf_jit_comp.c    | 13 +++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 7ff0ed4f292e..cc3f49415620 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -404,6 +404,10 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 #define VMALLOC_END      (PAGE_OFFSET - 1)
 #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
 
+#define BPF_JIT_REGION_SIZE	(SZ_128M)
+#define BPF_JIT_REGION_START	(PAGE_OFFSET - BPF_JIT_REGION_SIZE)
+#define BPF_JIT_REGION_END	(VMALLOC_END)
+
 /*
  * Roughly size the vmemmap space to be large enough to fit enough
  * struct pages to map half the virtual address space. Then
diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index 8aa19c846881..46cff093f526 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -1656,3 +1656,16 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
 					   tmp : orig_prog);
 	return prog;
 }
+
+void *bpf_jit_alloc_exec(unsigned long size)
+{
+	return __vmalloc_node_range(size, PAGE_SIZE, BPF_JIT_REGION_START,
+				    BPF_JIT_REGION_END, GFP_KERNEL,
+				    PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
+				    __builtin_return_address(0));
+}
+
+void bpf_jit_free_exec(void *addr)
+{
+	return vfree(addr);
+}
-- 
2.20.1


