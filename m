Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF193122CAE
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 14:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sU3/bXls/KxSfTSBjP7Np2j+r9tPORCUpNYt9Wkb3H0=; b=mZEwmfrxLWl6c5
	YU67EgJufagGUyjUJwiccEtpuuTPYZPFkwwRj+6wLQtBdc1okxh2Ny9o80Hy3uEAS7homxvSCjGvs
	fi+ZRBKNka7zSu6IEENsKUiGsEz7+w8/UJT6AspuG4uMsJYo+IHvBaFfYHL9EwRpWpnm2tKdi1XMl
	s8XMMd0HTxv7Xh8YPKCLqQJxXd54wcBCwdxjBBjOmbKLQxFgcTo9O00/iZjK6DuwSA+IhQVDYeNn1
	P0tuVARRAfrWOGRv5qz0iD155HsNkuh7gh64+m02hleZwpA8lxtfCynHSJuznQJwDEA6Uae1xF66G
	CpgaAa+R/aLmdTFNyPdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihChZ-0001S1-Su; Tue, 17 Dec 2019 13:15:49 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihChV-0001Qw-4X
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 13:15:46 +0000
Received: by mail-lf1-x143.google.com with SMTP id 203so6922765lfa.12
 for <linux-riscv@lists.infradead.org>; Tue, 17 Dec 2019 05:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sU3/bXls/KxSfTSBjP7Np2j+r9tPORCUpNYt9Wkb3H0=;
 b=twFugwKSClwiFK9pIgO7mjoL4y1fANzpnWPPg1wTwIqKjgn28prcOM+dKfdME6pPlr
 mCdNiBpOP+4uMXMLqy5xOkm+8ju4XmEzlmbOZv+jp9MJcBW8Tpsa+43t30Q0QyeF4fz/
 V7KhLWSeYmhf7QGIyronz1vpg1TNGz5Wdjack0nIBKi02PK0lyfges9NJP8KXzWsQfGu
 l/7U42ugm/C1W8txFBY3pz1L1Hw0HTDMxmSVa2G+t4wojhhLcIE5AsfyHoLx4/A8F5S8
 4Ys7J8x8oGdJtp4M1ovdF2QfV52sG6TRqJlZ24+s0vMgy360bKS1/NDdT1NwxRXIsV73
 fw6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sU3/bXls/KxSfTSBjP7Np2j+r9tPORCUpNYt9Wkb3H0=;
 b=J2DO2PR4boNg8aefS3xcRgTLPPB22/YbUG37E3x2BLxrM3I1KYabNISC6DswSbT0++
 FB7vZgg5G2QOCy2OQqrQniIff9knSTa/cxj5hAEwXEXKdY/bGoOQrI0vrIIrz633VwdL
 wSFMbvM1kUiOhzmlzrqYIUZolX/Wb0vrOOe91Yt1COBXyHwppSJzC99Tii9OMu2XspUG
 G3hD9vnEo9BuG5ZJPHw81HMryFcc58ModEGYPieJrKReD3RfXepby4t8pbSSH6oUfwIY
 Gkt3cVlX/RfywPrvDoyoq4Jjf8J3BwQ7yc0sr4O23USORjOvLdu+Xp9Bggzt2VCs30ui
 8gyQ==
X-Gm-Message-State: APjAAAVILK4Mm3fSo/1bQnTXpm+tanll7jgZtDFexhATB+AkDF/ScO7U
 5581yKzgLFnq5UibUQdx8FE=
X-Google-Smtp-Source: APXvYqywhi8tqotujrJmmue0owfK8Nn+XvY+KJWNp05k9D+frrRUuC1R33dTRUTctM4JFWfvDFsyvg==
X-Received: by 2002:ac2:4436:: with SMTP id w22mr2676170lfl.185.1576588542951; 
 Tue, 17 Dec 2019 05:15:42 -0800 (PST)
Received: from localhost.localdomain (78-63-27-146.static.zebra.lt.
 [78.63.27.146])
 by smtp.gmail.com with ESMTPSA id q14sm12548416ljm.68.2019.12.17.05.15.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 05:15:42 -0800 (PST)
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
X-Google-Original-From: David Abdurachmanov <david.abdurachmanov@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Greentime Hu <greentime.hu@sifive.com>,
 Mike Rapoport <rppt@linux.ibm.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, Alexandre Ghiti <alex@ghiti.fr>,
 Logan Gunthorpe <logang@deltatee.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] define vmemmap before pfn_to_page calls
Date: Tue, 17 Dec 2019 15:15:28 +0200
Message-Id: <20191217131530.513096-1-david.abdurachmanov@sifive.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_051545_184825_F408042B 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

pfn_to_page call depends on `vmemmap` being available before the call.
This caused compilation errors in Fedora/RISCV with 5.5-rc2 and was caused
by NOMMU changes which moved declarations after functions definitions.

Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
Fixes: 6bd33e1ece52 ("riscv: add nommu support")
---
 arch/riscv/include/asm/pgtable.h | 34 ++++++++++++++++----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 7ff0ed4f292e..d8c89e6e6b3d 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -90,6 +90,23 @@ extern pgd_t swapper_pg_dir[];
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
+#define vmemmap		((struct page *)VMEMMAP_START)
+
 static inline int pmd_present(pmd_t pmd)
 {
 	return (pmd_val(pmd) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
@@ -400,23 +417,6 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
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
2.23.0


