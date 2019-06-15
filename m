Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9682D46EA0
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Jun 2019 08:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QZfTy8PmITIvaQgkgBK621wlTLAeyFSlTTksvqO/bsg=; b=FGJ
	15xnmWaMG0ZJn/WaHw2jKYQmmJStnv6NfejMoJ/DLq2VQH1YQ7gxxiXfhw+yTN0gLtBbmlwHaIrEA
	uvt5WOHOVLgmA387KWRP8OngdKq9XZ/Ng7H6h3I+Cj9DVV/XIk2QWm/MZZcZ7cByI1XCnA46BV3SE
	ivvWwbZ9IW673fovp5fqjZp8ptcetRMJnl/5mAJzvZFWPclaL3lClEVe4/GGItX5MaNdO8pDn+SNg
	fIWkp1wUmMw352c57xBqTAYsjfEs56WsWhaR2tsuAEuxF3nmi6ivhMB03OpCAIdgZZbrghguWlxp2
	oqjeNpFCtd2RE0slo+4y+Z994Tr9MhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc2TW-0005Oc-B9; Sat, 15 Jun 2019 06:47:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc2TS-0005OH-RD
 for linux-riscv@lists.infradead.org; Sat, 15 Jun 2019 06:47:40 +0000
Received: by mail-wm1-x344.google.com with SMTP id f17so1738069wme.2
 for <linux-riscv@lists.infradead.org>; Fri, 14 Jun 2019 23:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=Tqto8TpzrKiSf87J1N565C2uBRF7PRYsjWDcH9XDq5o=;
 b=DT4oBDpi66bsGV8XNToIoDaQNj3L99uacGd3HPYf8qC+4bR6e9BRYyRhXn9kNLwGoc
 iPkRyK3bZ/rfN8li22uN805J/9MS2MxkhmgBy2f8B+5WzCAwldhmxu0jNdLlRlirLU8z
 yPGxDsj/q4YjGeElK1kbq8VildASUlHESrQBHOVfWhrS5FdMePF3gaI4XttXTBjiJxSt
 pCNLaNQSJT0uBe8XWbSS6tBi3hiTsE365GLGY00sO7hFS8aRIpW23Lp+fTPSp8r9oyH7
 x4t7KMlDpmtGS5KO7c33p16gn/Bt0xBUzJ8UzI2NCHFcTLLqayNfuRQSlPfwBfvqZ+YF
 wtLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Tqto8TpzrKiSf87J1N565C2uBRF7PRYsjWDcH9XDq5o=;
 b=Rh7zfb1FzWrTR6hG67+bk2NPLvqrZIK1oJ1pInXYuARUYr6+1ubNfTXM5EUIVkpbYe
 XwgX1cC8x3oEntYdITS4bOch6oGcHB9nwVExNAbSUllrh9kY8TlrZtk+lMYHhBEXgnFw
 TAcYVWscWD4aFXXd5HMh13tV3jDaUhi/tI0/GV/z5aJhqubtbckDxL0FJ+b+1zcgT3di
 49MHh2M6fk/4GWulz51EhhKk/ZP1z7UkbeSc0dMy5D22E4rd/gkFCgnZCRfw4mqlQHUJ
 nX6LZwRYZIu/8DMnJGlJXinnspPWASlg4UdVc5gTO200wiwgNOKuJyD5djZge6z6yE2v
 kPrg==
X-Gm-Message-State: APjAAAWdEu+0r+8GRFfqpq05Sl9RzEdm4OzP/xGi9d4QrMQcX+42IT9c
 KBsgbIgO4cw/xKsnVXGny54jp/k2VIdXSqIIklpxxGwh6/8=
X-Google-Smtp-Source: APXvYqyes2wNKQxm4PmmPAgh9nDDVJXfeVA1WN8PUBcGfMIehD5WoBHJ9grixAhQUTgaf6mutydVKhzRPxTLo3G0WPw=
X-Received: by 2002:a7b:c933:: with SMTP id h19mr10990470wml.52.1560581257448; 
 Fri, 14 Jun 2019 23:47:37 -0700 (PDT)
MIME-Version: 1.0
From: ShihPo Hung <shihpo.hung@sifive.com>
Date: Sat, 15 Jun 2019 14:47:24 +0800
Message-ID: <CALoQrwfqpaTQ=9F7CrLHKo-fJ7oEt45g3tiFG3E5jyAr5zT2Zw@mail.gmail.com>
Subject: [PATCH] riscv: mm: synchronize MMU after pte change
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_234738_881034_626856F2 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Because RISC-V compliant implementations can cache invalid entries in TLB,
an SFENCE.VMA is necessary after changes to the page table.
This patch adds an SFENCE.vma for the vmalloc_fault path.

Signed-off-by: ShihPo Hung <shihpo.hung@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: linux-riscv@lists.infradead.org

---
 arch/riscv/mm/fault.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index 88401d5..3d8fa95 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -29,6 +29,7 @@

 #include <asm/pgalloc.h>
 #include <asm/ptrace.h>
+#include <asm/tlbflush.h>

 /*
  * This routine handles page faults.  It determines the address and the
@@ -281,6 +282,9 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
        pte_k = pte_offset_kernel(pmd_k, addr);
        if (!pte_present(*pte_k))
            goto no_context;
+
+       local_flush_tlb_page(addr);
+
        return;
    }
 }
--
2.7.4

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
