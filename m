Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4AC9639D
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 17:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/Qps5HpprmGrqV00uQx1xT0VgKVKMNDeJ2aziSrRzc=; b=pZK7exRUklIK+F
	gqtKAxYeteOg+BzBoPyojJHt5ZeA3sZn8pZXvUQ6877YwwRXuoEoYjj/FPQJuQRvTSMfJm8P15Yha
	antVs9RHnBc77dF4gD8eRQ8qYGJV0iZRilPevLk8/zjAT4mMuStelS6Z6Gb+NSQ4lnA/NlGJIROtF
	HefGjPKjew8l7t2BkJ1g+J4ih8+0jD3+8ibUQhcLJPmfkQwOxryyLcELx26kLsHfH65CzlG1o3aWO
	PuoQLDaZ+V432L8ViRY5O/JNL/rHPVNVOfv5YtXrVmhvXAuYHWVH/6PZ/+mQ80w/QNPdT3qaXFuyC
	SJFAmwZVWs6Aw2Z2GnIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05eT-0001LO-P6; Tue, 20 Aug 2019 15:02:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05aw-0005C9-52; Tue, 20 Aug 2019 14:58:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B9042AFE1;
 Tue, 20 Aug 2019 14:58:44 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v2 11/11] mm: refresh ZONE_DMA and ZONE_DMA32 comments in
 'enum zone_type'
Date: Tue, 20 Aug 2019 16:58:19 +0200
Message-Id: <20190820145821.27214-12-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820145821.27214-1-nsaenzjulienne@suse.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075846_515331_9DB7F9AA 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: phill@raspberryi.org, f.fainelli@gmail.com, frowand.list@gmail.com,
 linux-kernel@vger.kernel.org, eric@anholt.net, mbrugger@suse.com,
 linux-rpi-kernel@lists.infradead.org, akpm@linux-foundation.org,
 will@kernel.org, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

These zones usage has evolved with time and the comments were outdated.
This joins both ZONE_DMA and ZONE_DMA32 explanation and gives up to date
examples on how they are used on different architectures.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes in v2:
- Try another approach merging both zones explanations into one
- Address Christoph's comments
- If this approach doesn't get much traction I'll just drop the patch
  from the series as it's not really essential

 include/linux/mmzone.h | 46 +++++++++++++++++++++++++-----------------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index d77d717c620c..9c150223d41f 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -356,33 +356,41 @@ struct per_cpu_nodestat {
 #endif /* !__GENERATING_BOUNDS.H */
 
 enum zone_type {
-#ifdef CONFIG_ZONE_DMA
 	/*
-	 * ZONE_DMA is used when there are devices that are not able
-	 * to do DMA to all of addressable memory (ZONE_NORMAL). Then we
-	 * carve out the portion of memory that is needed for these devices.
-	 * The range is arch specific.
+	 * ZONE_DMA and ZONE_DMA32 are used when there are peripherals not able
+	 * to DMA to all of the addressable memory (ZONE_NORMAL).
+	 * On architectures where this area covers the whole 32 bit address
+	 * space ZONE_DMA32 is used. ZONE_DMA is left for the ones with smaller
+	 * DMA addressing constraints. This distinction is important as a 32bit
+	 * DMA mask is assumed when ZONE_DMA32 is defined. Some 64-bit
+	 * platforms may need both zones as they support peripherals with
+	 * different DMA addressing limitations.
+	 *
+	 * Some examples:
+	 *
+	 *  - i386 and x86_64 have a fixed 16M ZONE_DMA and ZONE_DMA32 for the
+	 *    rest of the lower 4G.
+	 *
+	 *  - arm only uses ZONE_DMA, the size, up to 4G, may vary depending on
+	 *    the specific device.
+	 *
+	 *  - powerpc only uses ZONE_DMA, the size, up to 2G, may vary
+	 *    depending on the specific device.
 	 *
-	 * Some examples
+	 *  - s390 uses ZONE_DMA fixed to the lower 2G.
 	 *
-	 * Architecture		Limit
-	 * ---------------------------
-	 * parisc, ia64, sparc	<4G
-	 * s390, powerpc	<2G
-	 * arm			Various
-	 * alpha		Unlimited or 0-16MB.
+	 *  - arm64 uses ZONE_DMA to mark the area addresable by all
+	 *    peripherals on the device, and ZONE_DMA32 for the rest of the
+	 *    lower 4G. ZONE_DMA32 might be left empty.
 	 *
-	 * i386, x86_64 and multiple other arches
-	 * 			<16M.
+	 *  - ia64 and riscv only use ZONE_DMA32.
+	 *
+	 *  - parisc uses neither.
 	 */
+#ifdef CONFIG_ZONE_DMA
 	ZONE_DMA,
 #endif
 #ifdef CONFIG_ZONE_DMA32
-	/*
-	 * x86_64 needs two ZONE_DMAs because it supports devices that are
-	 * only able to do DMA to the lower 16M but also 32 bit devices that
-	 * can only do DMA areas below 4G.
-	 */
 	ZONE_DMA32,
 #endif
 	/*
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
