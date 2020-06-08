Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAC91F25D9
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jun 2020 01:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksiaa1RWBb1teG4g4SWPYdNX6zYO0emda8Tw+Rf9Pg0=; b=eE9lVEyoM4xrh6
	0zXeKal/rYxobcbgezpXBf2Fvx7yh6GEud6lukt0dOOtPsG1blLYIopKoiGgtF+K70zCxDkoocNc7
	mOdgBIwR58S9RIxEIjw3s7fkNaskH1spH8vbzLlAJ1e024Tw6mDFx4C2UvW0t853tnhDQh9yCoPEf
	/9vh7H1YS6M0JzgiF7qryUBVjOdjl0uVJbT88EVG+kHt9QLdn22wSh8flbB1jv2ZwxdJ2wRxuPXuZ
	8DTj760P0Bs7NWH1h7EWH12pecLbuJXneLiRrdgIfZ8Cf4sPkXFciFrvi9F3TIG+u0yXpi5Ml/zJT
	0IFQPAi06Wz0YLwGKg3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRGf-0008FG-EN; Mon, 08 Jun 2020 23:33:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR1b-0004N2-As
 for linux-riscv@lists.infradead.org; Mon, 08 Jun 2020 23:17:54 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24CB8208B3;
 Mon,  8 Jun 2020 23:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658270;
 bh=6N2uRjlh/wR1nNEdVNdwFs6zFXOV8xD1YmT4D8/8yAo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PRFvQrP15fNWw2hQONRjTx33+HM3NYkUeOERdRBuwYg/gJiA9WFqc6ysMS5Akgp44
 btz0aobii1fQ7DltuZPH2UClLzQe5t7we0NZ4Qc4h61PFaVpM38deD+cART8t/tzJy
 e1S56TmmM37P+ZZf63k3LQdow7VkVWH59UuNmaFA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 277/606] riscv: Add pgprot_writecombine/device and
 PAGE_SHARED defination if NOMMU
Date: Mon,  8 Jun 2020 19:06:42 -0400
Message-Id: <20200608231211.3363633-277-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161751_545865_52B755B5 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Hulk Robot <hulkci@huawei.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Kefeng Wang <wangkefeng.wang@huawei.com>

[ Upstream commit fa8174aa225fe3d53b37552e5066e6f0301dbabd ]

Some drivers use PAGE_SHARED, pgprot_writecombine()/pgprot_device(),
add the defination to fix build error if NOMMU.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/include/asm/mmio.h    | 2 ++
 arch/riscv/include/asm/pgtable.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/asm/mmio.h b/arch/riscv/include/asm/mmio.h
index a2c809df2733..56053c9838b2 100644
--- a/arch/riscv/include/asm/mmio.h
+++ b/arch/riscv/include/asm/mmio.h
@@ -16,6 +16,8 @@
 
 #ifndef CONFIG_MMU
 #define pgprot_noncached(x)	(x)
+#define pgprot_writecombine(x)	(x)
+#define pgprot_device(x)	(x)
 #endif /* CONFIG_MMU */
 
 /* Generic IO read/write.  These perform native-endian accesses. */
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 393f2014dfee..05b92987f500 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -460,6 +460,7 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 
 #else /* CONFIG_MMU */
 
+#define PAGE_SHARED		__pgprot(0)
 #define PAGE_KERNEL		__pgprot(0)
 #define swapper_pg_dir		NULL
 #define VMALLOC_START		0
-- 
2.25.1


