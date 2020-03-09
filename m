Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D17217DA97
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 09:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FB/FaS6maNFx1G9rifhLlVqm/rM7x/H1XFd6gLMSMDU=; b=r/r/1mOfiNOvBl
	HZAgVhKKhzhAfGCZBK873WvHXG/avCAl7k60skKb0InEJqg4azi4QYS7lhUFd6nXDIiz7qihbpiTB
	HnYkoBjG3MgvdmfPQ9xbbjPB89IAg4FjHqJoQAf/i3a6/JY+a7FdCKnqYQra/67e9z2xgALvdVxwx
	IFbD3fWATxhYoJdZdyistiZjZNt3VJ6vbEHYSai6OGbrKZkKR/uZoXAf+YoNgkvjsrdzuVDcluO4h
	7iXJOlyxbotFASaYlrwe9rVg1PfuV3lkFqdlCTj4yn73dd2PIHJYFJcHw34B3Jen8KCgC2S6mnPV7
	AEjZvCpEeMlLu6SNXK3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDgV-0005uy-Fw; Mon, 09 Mar 2020 08:22:47 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDgQ-0005pu-8M
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 08:22:43 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l36so1270070pjb.3
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 01:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FB/FaS6maNFx1G9rifhLlVqm/rM7x/H1XFd6gLMSMDU=;
 b=YS4VWjcIzeXzEasAyfAvYoSY4xprd+s7Wos2ERuoNAlrVKG7Fx0HIv0sqNsBwuLcad
 YwyAQno4NvMm0cuwXi8xX4qbwAq24e9BHJULt7K4znUU1XTyqlpe4/Ku86KvfuBm5RCt
 JkXAfaFtDTKMpYAVjVpTcHdSaKRw6r17IZY8qKK3BkfD4ah5HbhY4k94YgkAPb42tUFk
 QHApoeA/VpcE5xNVrCm6RFlcxgAfGEurGZPdnxxhmmjqgAsptqKwrUCgUXJxVeTtp1gB
 ArQ3R3kgsumnWJy/3jts4vRoWOhf6l2rdrTcZSYOgn0gMGBTgB1qhIHnFh3N9tFad5dW
 H2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FB/FaS6maNFx1G9rifhLlVqm/rM7x/H1XFd6gLMSMDU=;
 b=nAUBuxKdndnmzhbSvqAf0reVxXDuehxtlIwEY772uSliw0V4uraSQONQiBXvXnnqPo
 KP8zKyfBH881MdN7+pR6U1br1jE019U6sfXAr7ykwaqDxT2HjRfxyJCYb8kBR13f3lkc
 3x0qP7kzLfdntLcCSb1Kk1XhQKEGuKagxuMP4HDwV+el15JwmxaocPd/KDyd4JtLTeeF
 5U7LM11UqGWrvmoUypp/7WvPb1Jw+/FZoYtRWD0eMrH8XHtdPvXOkjMjp6LQn/VLWxK7
 4FudG8MGA2D3K5WTi37byALn4JICKymOLII+Ip9Ii6VzC7VQ2giGj7XdQiEhz0Jjm3E2
 Zm8w==
X-Gm-Message-State: ANhLgQ28bQ2I/ClWMg42I5b5/VyrvSsES/XzlmiA61nIFbUaBtsPDy6X
 /qlL8cqeWMe1ZGINSAGt6hQWLg==
X-Google-Smtp-Source: ADFU+vtYBlYnlDmnFgHYWW0c9/rw3sUEXeJnbKVGnTIceDYQXrhIh+B4aSQk5qInCE+mA6QZ1Hy5Tg==
X-Received: by 2002:a17:902:7d8f:: with SMTP id
 a15mr14993550plm.107.1583742161781; 
 Mon, 09 Mar 2020 01:22:41 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id v5sm18364779pfn.64.2020.03.09.01.22.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 01:22:41 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/9] riscv: add ARCH_HAS_SET_DIRECT_MAP support
Date: Mon,  9 Mar 2020 16:22:22 +0800
Message-Id: <3875093ee6a6e980919009bb86b7193def05e2e8.1583741997.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583741997.git.zong.li@sifive.com>
References: <cover.1583741997.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_012242_336049_AA698CBE 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

Add set_direct_map_*() functions for setting the direct map alias for
the page to its default permissions and to an invalid state that cannot
be cached in a TLB. (See d253ca0c ("x86/mm/cpa: Add set_direct_map_*()
functions")) Add a similar implementation for RISC-V.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig                  |  1 +
 arch/riscv/include/asm/set_memory.h |  3 +++
 arch/riscv/mm/pageattr.c            | 24 ++++++++++++++++++++++++
 3 files changed, 28 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 76ed36543b3a..07bf1a7c0dd2 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -60,6 +60,7 @@ config RISCV
 	select HAVE_EBPF_JIT if 64BIT
 	select EDAC_SUPPORT
 	select ARCH_HAS_GIGANTIC_PAGE
+	select ARCH_HAS_SET_DIRECT_MAP
 	select ARCH_HAS_SET_MEMORY
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
index 936f08063566..a9783a878dca 100644
--- a/arch/riscv/include/asm/set_memory.h
+++ b/arch/riscv/include/asm/set_memory.h
@@ -14,4 +14,7 @@ int set_memory_rw(unsigned long addr, int numpages);
 int set_memory_x(unsigned long addr, int numpages);
 int set_memory_nx(unsigned long addr, int numpages);
 
+int set_direct_map_invalid_noflush(struct page *page);
+int set_direct_map_default_noflush(struct page *page);
+
 #endif /* _ASM_RISCV_SET_MEMORY_H */
diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
index fcd59ef2835b..7be6cd67e2ef 100644
--- a/arch/riscv/mm/pageattr.c
+++ b/arch/riscv/mm/pageattr.c
@@ -148,3 +148,27 @@ int set_memory_nx(unsigned long addr, int numpages)
 {
 	return __set_memory(addr, numpages, __pgprot(0), __pgprot(_PAGE_EXEC));
 }
+
+int set_direct_map_invalid_noflush(struct page *page)
+{
+	unsigned long start = (unsigned long)page_address(page);
+	unsigned long end = start + PAGE_SIZE;
+	struct pageattr_masks masks = {
+		.set_mask = __pgprot(0),
+		.clear_mask = __pgprot(_PAGE_PRESENT)
+	};
+
+	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+}
+
+int set_direct_map_default_noflush(struct page *page)
+{
+	unsigned long start = (unsigned long)page_address(page);
+	unsigned long end = start + PAGE_SIZE;
+	struct pageattr_masks masks = {
+		.set_mask = PAGE_KERNEL,
+		.clear_mask = __pgprot(0)
+	};
+
+	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+}
-- 
2.25.1


