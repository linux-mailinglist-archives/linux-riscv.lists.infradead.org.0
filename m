Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEC2960C7
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 15:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMOsBi5+dGEsChAcA0Xq026ejfuvJhj/+2iboZq0NW4=; b=ikA8OWOIdAWK+M
	mlkm9d/XT03PWK39VWj7jarK6fbCIjh7P4wjls72UAAy7yB1SywQJsx1zun3eJlNx0e16TlBUXKNg
	PtpN0A+Yjf3kWT/w2PNSNqvUGrtM2OUrtllFXGb9WgEJDi5+CEEcQ50N5z8NAiIwUWu++Bu03eb73
	gmmbs9uUcU4x0PRjJHj/bWyDLjWIPcZ4R3lsEUem0eCE5eJIQc14/Ywm0JIMhDdQ162YA3XG0xAxP
	ZYIarf2VSLEwH/03G55AMdMgR4qEwOZAd+GmNTJ448z+pEVKKnoWB4n1RczZnV0JvMbfrkMVwiUK1
	v9N/IbGOzG04roP7dwnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04Ps-0004qO-GI; Tue, 20 Aug 2019 13:43:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04OT-0003dW-S2
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 13:41:51 +0000
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D566522DA9;
 Tue, 20 Aug 2019 13:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566308509;
 bh=f7YM/3Q8L0ApNqXbbo71GtoGj0NE8twR1TW8alf6JmQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q3ba/jVFYHd63Ji++MgUNvgg8NctFGLPOAIPZDzuIo82b49paINMJ4Qy5OUpvt9l3
 Lcd8tAlh88FUkjc944iV2Uufb8d4b0MFPpJIAo1md5C4a8uysL4mswS8E8Ji4fHkGV
 QSNRAS2cLvat523za9YoIp/nc+/qrVfo8WusNGqA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 37/44] riscv: fix flush_tlb_range() end address
 for flush_tlb_page()
Date: Tue, 20 Aug 2019 09:40:21 -0400
Message-Id: <20190820134028.10829-37-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820134028.10829-1-sashal@kernel.org>
References: <20190820134028.10829-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_064150_079062_4DE335E1 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Andreas Schwab <schwab@suse.de>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Paul Walmsley <paul.walmsley@sifive.com>

[ Upstream commit eb93685847a9055283d05951c1b205e737f38533 ]

The RISC-V kernel implementation of flush_tlb_page() when CONFIG_SMP
is set is wrong.  It passes zero to flush_tlb_range() as the final
address to flush, but it should be at least 'addr'.

Some other Linux architecture ports use the beginning address to
flush, plus PAGE_SIZE, as the final address to flush.  This might
flush slightly more than what's needed, but it seems unlikely that
being more clever would improve anything.  So let's just take that
implementation for now.

While here, convert the macro into a static inline function, primarily
to avoid unintentional multiple evaluations of 'addr'.

This second version of the patch fixes a coding style issue found by
Christoph Hellwig <hch@lst.de>.

Reported-by: Andreas Schwab <schwab@suse.de>
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/include/asm/tlbflush.h | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index 687dd19735a7e..4d9bbe8438bf6 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -53,10 +53,17 @@ static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
 }
 
 #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
-#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
+
 #define flush_tlb_range(vma, start, end) \
 	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
-#define flush_tlb_mm(mm) \
+
+static inline void flush_tlb_page(struct vm_area_struct *vma,
+				  unsigned long addr)
+{
+	flush_tlb_range(vma, addr, addr + PAGE_SIZE);
+}
+
+#define flush_tlb_mm(mm)				\
 	remote_sfence_vma(mm_cpumask(mm), 0, -1)
 
 #endif /* CONFIG_SMP */
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
