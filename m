Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E3447955
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 06:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FJiIscfpcsUxgQDGZEWWMxsHMbo9vKHuHeamjKuGTqo=; b=OHtv/2F2p+A9mQ
	z8Hrs8C0y2Rg0A2MptNeT/hFCSVD0AwEYXyyD+jrLMcmMNVZ+R3H/O5Xn5d5vtOyadiBcf3qOkgpe
	YSpGRyP8qINpieXw0votZS/VBGLmZc+9HHlGwr9TPMuNfWX20q2G+pOjA5WhgoM3sutXRByghLAxK
	p5GVobTID1GtxS0908KoXL/v8/walnA3WquCC2dm79X6UsFvkI5LfVDChV/unEUio+2yJC+ayHtOi
	somJy7oMd94BWoJzulmzX1WDNWBAMILKxwlj098YoGSNaM2TCuVu71IxKD5fTgYBr7qxHClO1q05s
	TQIg1PvOpme3W5Wl4ZpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcjE1-0007pP-R5; Mon, 17 Jun 2019 04:26:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcjDy-0007p4-P7
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 04:26:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id c6so7514879wml.0
 for <linux-riscv@lists.infradead.org>; Sun, 16 Jun 2019 21:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=RBNiMJD5FfAdQuk6MMHusz66jclF3VVqDvwsCd1pAGg=;
 b=H6vLyzbInHCY1xUpkq913lfehoCeZL9Ch5xgudduOvc8T5PqPja1Hb8gEDsgfgBsB4
 WBi2Ug5Z85Vp5bxFQX+9Nt7eZ73zO/5dMkuxaBzTFhaWScMjyzGmviDHhdVS306UPlfj
 87wBVYmFZuKRfMDyGs7+vPIP1sjfubEv3tyks8akIhAFz9sy3jdjLUoTzSGI7BW3TY6z
 eQv6Ynnd+z4reEF2/vn1NNTZbCsoRHhnhgCZFrA8ReRWBDle0zkTXHHnH0SbYYY+BpOd
 IcWWjpGSrLv6kP8Vl2kYtynWMsl19mcCuhtUqCYSIseX4olXR2oKohc151ETXlJBiA12
 HCRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=RBNiMJD5FfAdQuk6MMHusz66jclF3VVqDvwsCd1pAGg=;
 b=qg1aUhf5S6ADahj1bE9K3skL51V5u1xmpnGpX4ohdhBSwjJYC+X0L4QCPYy5EF5RSJ
 QO/uC9ycaOxnMIrjxKfU9h2uAb5mKqjm4Nsrno4H4RkGECHeNTpiPRwGTz45uiQxE+sT
 jik8n6slRp19x11LJ2NxhhmFxEMB2vkz/70hDDe/kh4iwAjOcykMiLWXPkTmBBGzA7zs
 GKB7I0cQ4WxyGAiyOusX/JWbvTopNwCxbbmcTJ0UymsyuiN2WnQuNEpWv5a1uJhseoOB
 SWJTKao6EgNeMLDGDNnNoKCsIn+sz/5FHGVvchnj09D4oxtaWnuFO1SmkCHglssBp/3e
 r6kg==
X-Gm-Message-State: APjAAAXb4lBfeLxrnwCTSzZ4qUF87raWH0PRfzG2dkhLy/RC1eMF+PIj
 xDdc1f743JJO8zPvjM99WZPDPdtd73Y580VkIvmbTSA2hyw=
X-Google-Smtp-Source: APXvYqzSynzNpnyLa4q/HvjF2nFLmH+26Y/dpEk9qn5KN4b9maokmZAJwlsF3d2RvAldzwhucwcvBCwose0vo0Qg5F4=
X-Received: by 2002:a1c:b604:: with SMTP id g4mr17371456wmf.111.1560745588799; 
 Sun, 16 Jun 2019 21:26:28 -0700 (PDT)
MIME-Version: 1.0
From: ShihPo Hung <shihpo.hung@sifive.com>
Date: Mon, 17 Jun 2019 12:26:17 +0800
Message-ID: <CALoQrwdLANaOaYiGvFxt23PBdHcgcc_LWVFORNwrAXWBhOyJsA@mail.gmail.com>
Subject: [PATCH v2] riscv: mm: synchronize MMU after pte change
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_212630_823169_C7ABCED7 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 stable@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Because RISC-V compliant implementations can cache invalid entries
in TLB, an SFENCE.VMA is necessary after changes to the page table.
This patch adds an SFENCE.vma for the vmalloc_fault path.

Signed-off-by: ShihPo Hung <shihpo.hung@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: linux-riscv@lists.infradead.org
Cc: stable@vger.kernel.org
---
 arch/riscv/mm/fault.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index 88401d5..a1c7b39 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -29,6 +29,7 @@

 #include <asm/pgalloc.h>
 #include <asm/ptrace.h>
+#include <asm/tlbflush.h>

 /*
  * This routine handles page faults.  It determines the address and the
@@ -281,6 +282,16 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
        pte_k = pte_offset_kernel(pmd_k, addr);
        if (!pte_present(*pte_k))
            goto no_context;
+
+       /*
+        * The kernel assumes that TLBs don't cache invalid entries, but
+        * in RISC-V, SFENCE.VMA specifies an ordering constraint, not a
+        * cache flush; it is necessary even after writing invalid entries.
+        * Relying on flush_tlb_fix_spurious_fault would suffice, but
+        * the extra traps reduce performance.  So, eagerly SFENCE.VMA.
+        */
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
