Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CDA1FD629
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 22:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lb2EzuXHb6VzccEj1ycn7TsJzd2ezkjzV+s6RMyTS6M=; b=rEx+WWPS+gZ8w+
	QJNazXTiwipOAZoS5T+RAcnzfm/tjqk9pR0oV/FHaRPfMayltrc5BaS6r9lxzQjOAChN8teUj0JNx
	gBcOaZHqRjrOm076jQkgPtowH0Ch7qynC/q6ahchYugys5yFdhL5GwNigLTH69KEel3yKJs5rLU5g
	6Pv9AEhXC0uhYkTv1ufBfioMfXc/9wttjYYoZhAfccle/vZzG5CClcKY3v4+Z3/kvXdLGTk/Iipbf
	6ckz/2WTwtGHtpT3AO35c+1wjr3feqoobAiEkOKO7oZkZjiOw+UE/MP5a6TxfE+1L7pAWhGAoTrrE
	wDWBu7sOuDamf+AFbiBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jleoy-0006Ij-LW; Wed, 17 Jun 2020 20:38:08 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jleos-0006Hp-TB
 for linux-riscv@lists.infradead.org; Wed, 17 Jun 2020 20:38:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592426282; x=1623962282;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=obXSQxEjICW+Yt8ftMsGWA6aehYecXRDu+nvKJxbC/w=;
 b=EJO/cn7DUCGgJ+YvgYJU3Hy3goKPCxrhYN4gtcPP2paULdDDlQbDBHZX
 qBkC6i4cZURzAjozPh88iJBNva4Xqo2WnlQC4cwYKSLa1yHJXrN6DOPR+
 JGjHLtQCjGPnvvdFvteRHOlgXqXtXtiMgumodFFiOKSC0Grx9U1yzBEiO
 gNh+ASV8VlwVt4EPvTSXVobmvJ8xiwBZRihvN3Bs/rQjMvJhLVLZh2qU4
 J92HifLLy8s3WGDjXGKDiLoByWioKH9DwQg1TGns4g3YKCFMALS2sw4MH
 ypXEZPvb6INT9qF9lf+y+YrPK5/AYR2rsasFKHgljW9SXhy9EmmSyZRQO Q==;
IronPort-SDR: iLiuYrud3UaVxlfXFRArWxO1xcf3W3xAl3FHWF5cHUHzA6L8n/wGH02Xm3vd8ew//+YAzVKHZt
 MlYvRl3LWC386PLord782wVIlmJOQhN/yEPI6m8zYXExtPyn1HHZCZOeTnlLydCWH6g2qq0RBM
 s8uAbXFSG5xlEctnArKtgDvrd39t6Gmz+Gzr/0xCMV1cskVLCwHuCdMztDkB+L2yn41Pv2DUVB
 MKwBNBFDhHkw2RgBfgHoneghH2i/hQe/tRx2v5DdLalY51vRaSs5p1V7z+Rs7v9J1LuBei6oaB
 7Jk=
X-IronPort-AV: E=Sophos;i="5.73,523,1583164800"; d="scan'208";a="249436297"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 18 Jun 2020 04:37:58 +0800
IronPort-SDR: GCyYciZH2O72tUDJanwvVZRn6NM9HmyrsuPWWqPAljt4D5c+BkX1HzDVTa4UUI+HKKRf/hNFHe
 kRb1Vri7ZaKDdDae0zH+l7ZwolFlgJ9P4=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 13:27:12 -0700
IronPort-SDR: zhUy0TZrnbjXxnnsfrT0zttZ0ocHgV32WRoVPnh+Xsp3azyEDgqpotxGdu7x6cjHL7aX3S004I
 Fk5DgEo8B6iA==
WDCIronportException: Internal
Received: from usa003792.ad.shared (HELO yoda.hgst.com) ([10.86.58.133])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Jun 2020 13:37:59 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: Acquire mmap lock before invoking walk_page_range
Date: Wed, 17 Jun 2020 13:37:32 -0700
Message-Id: <20200617203732.2076611-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_133804_709948_147F3B62 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Mike Rapoport <rppt@linux.ibm.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Michel Lespinasse <walken@google.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per walk_page_range documentation, mmap lock should be acquired by the
caller before invoking walk_page_range. mmap_assert_locked gets triggered
without that. The details can be found here.

http://lists.infradead.org/pipermail/linux-riscv/2020-June/010335.html

Fixes: 395a21ff859c(riscv: add ARCH_HAS_SET_DIRECT_MAP support)
Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/mm/pageattr.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
index ec2c70f84994..289a9a5ea5b5 100644
--- a/arch/riscv/mm/pageattr.c
+++ b/arch/riscv/mm/pageattr.c
@@ -151,6 +151,7 @@ int set_memory_nx(unsigned long addr, int numpages)
 
 int set_direct_map_invalid_noflush(struct page *page)
 {
+	int ret;
 	unsigned long start = (unsigned long)page_address(page);
 	unsigned long end = start + PAGE_SIZE;
 	struct pageattr_masks masks = {
@@ -158,11 +159,16 @@ int set_direct_map_invalid_noflush(struct page *page)
 		.clear_mask = __pgprot(_PAGE_PRESENT)
 	};
 
-	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+	mmap_read_lock(&init_mm);
+	ret = walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+	mmap_read_unlock(&init_mm);
+
+	return ret;
 }
 
 int set_direct_map_default_noflush(struct page *page)
 {
+	int ret;
 	unsigned long start = (unsigned long)page_address(page);
 	unsigned long end = start + PAGE_SIZE;
 	struct pageattr_masks masks = {
@@ -170,7 +176,11 @@ int set_direct_map_default_noflush(struct page *page)
 		.clear_mask = __pgprot(0)
 	};
 
-	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+	mmap_read_lock(&init_mm);
+	ret = walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+	mmap_read_unlock(&init_mm);
+
+	return ret;
 }
 
 void __kernel_map_pages(struct page *page, int numpages, int enable)
-- 
2.26.2


