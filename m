Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36D6D89A0
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 09:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JijI2+D2fCQacZoRInkQa+cgqJgMGizmf3apBOO7OKY=; b=gV6sy/P1WPtMyv
	XWDiZLEC3BAvAViJvKmwGpHoElg783XC/w7pBY59jItVgvXFsM6vg7H2JaN15ed8kgpuqWF577V6r
	yaAjzAmCK7yV+/dQ/WnmfFafj7foRlLf6Bv2MHY7sRWTUVGmS1BtA8pjmOok2m+xG8mTc5EhYMfEA
	pGf4mL7McblV+zyY0nrThQxH/8zSkp/6IeksvqkzlgTC+qnamldUuWkLXwiMAXVfgwrCBU5ijGcR/
	24Q0DR17WojZ/wjjYGHIm8r6CtV0l7O/cPbYVrwEqdOtJ0v9cTnrwcfJo+aJykldCgE/xtFPKcGbW
	jXTNtqZifiHKNIMAAOQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdp9-0003zR-BY; Wed, 16 Oct 2019 07:34:23 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdp6-0003yG-14
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 07:34:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id h195so14159918pfe.5
 for <linux-riscv@lists.infradead.org>; Wed, 16 Oct 2019 00:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=pK2qwDb6039LW4fpVN7sB6lBT8h6fpy8/DAwlCYdB60=;
 b=ldLjKQ/2qpgiAHYu/ICIETehZvhdoXt5ztL5XbWzpuswY8fqmRkLZrDrw2PkpR9G9/
 yWWZFA7Ns+sGE/T2YpTj/vJfuzu0djXQvm2ymdi9hfJrJUwLg/oqhjNsQ6K3cJfH/NCN
 PVLcg60N/qmIiF5uUHiryyBEeNywkmTgNudmvbPQHhrOwG4vwG+TrSvrfUF0RrH2FCE6
 jN3MGHcQCb2YUM/Vivd7KPqzybdWbltY3MdR9WRjw4lBGkD8xLtd65uBGMsXxYmFsEnD
 LL8ytrVqLI8yC8sTLVHY7BOunZaiKp7CbOivpkxrPhf8TrdRYJJjiIqaqScO9Y93nl+c
 QuOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=pK2qwDb6039LW4fpVN7sB6lBT8h6fpy8/DAwlCYdB60=;
 b=d5Sn7laV1zh3kvtWQYyQNyhNa4PCGUSNPhAN7trLEEoZJQhLHBVXjy5IX6tSwuJXDN
 zu9ohDm0sGyFphgCfh1nw/uRCagay8efq6RpsnbYEC4J5eblQ6YJ8Nhu1DsSaxxavdw0
 rI2gR0mF4DRWrzL4ixYetH//CUTTl/E0CQFTj+tGGMSzOAiE7foNZ+0wcHEEXdua4olv
 4xL4WY9p0WOkEHRI3ElSKyvEXi/6y2M31074SecD2nvGXbasW8NIHiVuBWtpHgTb7vAb
 XjVrKCsXh5bcN5ZqQU1X0oKF2NoT1suc5p8uPDPVC12/JtWVQeYn0oM6SldoMjkOsApm
 z3Nw==
X-Gm-Message-State: APjAAAXMgKS/KsFDMu9PI+0DqxFH/c+LofJXoLNsxUjrA7P3+tJvHNGP
 tcAUqH4hhtAZXZPM28OEmNBoxg==
X-Google-Smtp-Source: APXvYqwSkcsw+C+K2IFO+yRj+DBcxD9V8gX+qJfV1KUfjuPnIvFguE9Pi5u0/yESJK7ryR7aUNfipg==
X-Received: by 2002:aa7:9907:: with SMTP id z7mr43342933pff.133.1571211258753; 
 Wed, 16 Oct 2019 00:34:18 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id 126sm26574767pgg.10.2019.10.16.00.34.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:34:18 -0700 (PDT)
From: greentime.hu@sifive.com
To: greentime.hu@sifive.com, green.hu@gmail.com, paul.walmsley@sifive.com,
 palmer@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: fix virtual address overlapped in FIXADDR_START and
 VMEMMAP_START
Date: Wed, 16 Oct 2019 15:34:08 +0800
Message-Id: <20191016073408.7299-1-greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_003420_101549_E1666D93 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Greentime Hu <greentime.hu@sifive.com>

This patch fixes the virtual address layout in pgtable.h.
The virtual address of FIXADDR_START and VMEMMAP_START should not be overlapped.
These addresses will be existed at the same time in Linux kernel that they can't
be overlapped.

Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/include/asm/pgtable.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 4f4162d90586..b927fb4ecf1c 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -87,14 +87,6 @@ extern pgd_t swapper_pg_dir[];
 #define VMALLOC_END      (PAGE_OFFSET - 1)
 #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
 
-#define FIXADDR_TOP      VMALLOC_START
-#ifdef CONFIG_64BIT
-#define FIXADDR_SIZE     PMD_SIZE
-#else
-#define FIXADDR_SIZE     PGDIR_SIZE
-#endif
-#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
-
 /*
  * Roughly size the vmemmap space to be large enough to fit enough
  * struct pages to map half the virtual address space. Then
@@ -108,6 +100,14 @@ extern pgd_t swapper_pg_dir[];
 
 #define vmemmap		((struct page *)VMEMMAP_START)
 
+#define FIXADDR_TOP      (VMEMMAP_START)
+#ifdef CONFIG_64BIT
+#define FIXADDR_SIZE     PMD_SIZE
+#else
+#define FIXADDR_SIZE     PGDIR_SIZE
+#endif
+#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
+
 /*
  * ZERO_PAGE is a global shared page that is always zero,
  * used for zero-mapped memory areas, etc.
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
