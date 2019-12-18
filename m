Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA3A1241A2
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Dec 2019 09:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yMJjOAhIzheu14B4aOvGzeJWtYIQ1QEezPPz+lKiEmE=; b=SdZ1R67ccpMerI
	VXstQNP7XbJS1wN4lM8ktTI2nVEbKuPwPvJ5Zwu3uL22lOCgM5tupnWntuhDoehy5pJ4mQJQbJ/lk
	Wdpq1YuQMEDCiFK5HnIk5cwGmSIiVoOmnlNluXy87O2xUncAEZe9eL4cg82luT4/Qs74/8t4zwsP4
	s6VLHefzBkw/UNnIre0uWke6m/PBgWxFZyauXZRrPEwtvlsJm4Hmh164TlNIL7c0VHBsstQLWowMs
	VEWV4O+yVAhaJZQIbwXrldynQNvQQHIN9pOwmaj3k6P15Z1ryStTQURXl8elURX3lnbE8ALfQ/e66
	hr6QRo2mudUXkcRgg9kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUh1-00072Q-Rs; Wed, 18 Dec 2019 08:28:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihUgy-00071z-05
 for linux-riscv@lists.infradead.org; Wed, 18 Dec 2019 08:28:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so1255160wrh.5
 for <linux-riscv@lists.infradead.org>; Wed, 18 Dec 2019 00:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yMJjOAhIzheu14B4aOvGzeJWtYIQ1QEezPPz+lKiEmE=;
 b=Lp1KSgZ6INSYA5JSybOiENZq20hSCbKyoto/I24wVBb9/7qnO7zYlauk/WO2Z3tlLw
 MAZ77NiEZCoKXUFBkIlh0d/FMyRUQl0vadGHWJzySQOEqYPZUBl41NU9JPeKcN3yqn7r
 E1XZjGTpYA583Dw4d8X5Pq41EqRVvTTOWhmQ2N2MLn8KUETtRAWKlxYXsDIG105vFlp4
 cIkhLSp9B6wt6oiYzr+mYnO+qcHHrUNz0VuDfsj5znzwj7qifVWHl8ae43M/Bdd8+41K
 dwm2W03a3As+A3UM7DMhkHsmlw0AT3PcxXoYpBf0ZbkbGZtt43r/2Mka7asYsi6T4dDp
 j/yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yMJjOAhIzheu14B4aOvGzeJWtYIQ1QEezPPz+lKiEmE=;
 b=pzOGRdPUCjpRL2ZA8+frHdiOdYSdxr/XKe+AJmro0hHQZsm6FVdg7HLRX5PzuXnxkF
 6Tx1XgOETDlubI6k/3vZSjqG09cJrqxn8T6Q81aDmQxtJQgauGOwXJ3mFVnf171EfLkA
 1YW3To34j0VkIHgTjLftnMMr1dVo5uRNI5gMZFMEaZh90bMUFxULVO64TCm0jXO6MmsY
 Xych7Gy237eW+oAcAduWo+EWqQjYnGeQRxlU6WVCcP5qo2MBN9fvwW4H1W36m5H/F4/j
 KJ24tiDgxjbdAogMaJmGj8LKaO9/yVQ/qncH4IYW0fECu1jWiGsNipiaUkf/pobK2l6i
 L3dQ==
X-Gm-Message-State: APjAAAXx6Kjsq9rgfc17iUAYqFcpYHxCOtYmkK0ng2E/ZepiFbt9vwtL
 i4si1g6vKifpgKFsrU1ZWdZd2/CFFvo=
X-Google-Smtp-Source: APXvYqz2hPmvQA+b5bhpb/9dzuG9/IQOYezjagYgbzpVHXDchyUxdy2KJFxpptGjOdA6bt8fP/Q/TQ==
X-Received: by 2002:a5d:608a:: with SMTP id w10mr1268616wrt.136.1576657702457; 
 Wed, 18 Dec 2019 00:28:22 -0800 (PST)
Received: from localhost.localdomain (78-63-27-146.static.zebra.lt.
 [78.63.27.146])
 by smtp.gmail.com with ESMTPSA id o4sm1683699wrx.25.2019.12.18.00.28.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 00:28:21 -0800 (PST)
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
X-Google-Original-From: David Abdurachmanov <david.abdurachmanov@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 "Stefan O'Rear" <sorear2@gmail.com>, Yash Shah <yash.shah@sifive.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] define vmemmap before pfn_to_page calls
Date: Wed, 18 Dec 2019 10:28:11 +0200
Message-Id: <20191218082814.895851-1-david.abdurachmanov@sifive.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_002824_067174_8F1FFA3C 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: david.abdurachmanov@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

pfn_to_page & page_to_pfn depend on vmemmap being available before the calls
if kernel is configured with CONFIG_SPARSEMEM_VMEMMAP=y. This was caused
by NOMMU changes which moved vmemmap definition bellow functions definitions
calling pfn_to_page & page_to_pfn.

Noticed while compiled 5.5-rc2 kernel for Fedora/RISCV.

v2:
- Add a comment for vmemmap in source

Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
Fixes: 6bd33e1ece52 ("riscv: add nommu support")
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/pgtable.h | 38 ++++++++++++++++++--------------
 1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 7ff0ed4f292e..36ae01761352 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -90,6 +90,27 @@ extern pgd_t swapper_pg_dir[];
 #define __S110	PAGE_SHARED_EXEC
 #define __S111	PAGE_SHARED_EXEC
 
+#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
+#define VMALLOC_END      (PAGE_OFFSET - 1)
+#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
+
+/*
+ * Roughly size the vmemmap space to be large enough to fit enough
+ * struct pages to map half the virtual address space. Then
+ * position vmemmap directly below the VMALLOC region.
+ */
+#define VMEMMAP_SHIFT \
+	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
+#define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
+#define VMEMMAP_END	(VMALLOC_START - 1)
+#define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
+
+/*
+ * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if kernel
+ * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
+ */
+#define vmemmap		((struct page *)VMEMMAP_START)
+
 static inline int pmd_present(pmd_t pmd)
 {
 	return (pmd_val(pmd) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
@@ -400,23 +421,6 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 #define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
 #define __swp_entry_to_pte(x)	((pte_t) { (x).val })
 
-#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
-#define VMALLOC_END      (PAGE_OFFSET - 1)
-#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
-
-/*
- * Roughly size the vmemmap space to be large enough to fit enough
- * struct pages to map half the virtual address space. Then
- * position vmemmap directly below the VMALLOC region.
- */
-#define VMEMMAP_SHIFT \
-	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
-#define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
-#define VMEMMAP_END	(VMALLOC_START - 1)
-#define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
-
-#define vmemmap		((struct page *)VMEMMAP_START)
-
 #define PCI_IO_SIZE      SZ_16M
 #define PCI_IO_END       VMEMMAP_START
 #define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
-- 
2.24.1


