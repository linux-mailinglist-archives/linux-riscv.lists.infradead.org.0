Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0E1D6A6B
	for <lists+linux-riscv@lfdr.de>; Mon, 14 Oct 2019 21:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=on2ZkCnuJ77munhXmmqIf4NVmOUvxENSzngcpTIF35c=; b=Dh5yvMEHrHwdrQ
	jTcFPqt8XbM+COJlAcc5I/SU64kue9fQ3U56UFDn70LPVG7el/GyDQpmSdKrMBUtEz1cadLJDXFQL
	RTi+w432/+KGRnIdj0uh1A4Sh1AG9so5q5aIEddJKguTbcVLsQSlAn2YcqkSoiDh5Whh+PmaGDC6f
	zagqdeybvJRnVrVxjIShxCKB4xDOxqJuKDcBDMPHeaJP6yJt2IefkXSkKh2gbO2Ymt3RGrHWEV9P6
	lp84FLfROF8k8wX44tL+ycbnOaA0QU7oErWHe7aLwwUI0oLFs4n6XBZrY0ILuSxXicejfMoAg3p3o
	0Q1Hx5kNXtD2Qsv1TZWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK6Ri-0005mQ-CY; Mon, 14 Oct 2019 19:55:58 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK6Rf-0005lG-AU
 for linux-riscv@lists.infradead.org; Mon, 14 Oct 2019 19:55:56 +0000
Received: by mail-io1-xd43.google.com with SMTP id w12so40526160iol.11
 for <linux-riscv@lists.infradead.org>; Mon, 14 Oct 2019 12:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=/JsH3ZbaYxFZMIeMJ3El7+phW3uIrRr7HdSlGV8pTHQ=;
 b=fObzh+909uBiKGUOpziEEEhmj2FsPCX2KoKRdvrxJ9eT1/7Dlq6sfzEN2ijztWLcqD
 fbfjk530z0xxRoE9+MWP82tKM5cOqwzGfQLARUauX7cwrB8yk0IdOIu+sTyXNo86h4Js
 BrQWQr9d0aJac3Bxc752pQZelfhuCZ/AiPYEtevrGqzWBA24Nq/Oo+MD8rr/VnbF5ES3
 Ren8P6+tQ/B/L+/qcTuNSQeK/XKFxqj4Oka9n+/N14C7yvUBIrH/QKq342zQ/CMjKQoM
 dQwthSiXFkUXdG1QHylM/CcW9gvaGXHJiGS4huzEpNAuCfoH8NwTtylkMZ3Q6hGCs6Na
 zWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=/JsH3ZbaYxFZMIeMJ3El7+phW3uIrRr7HdSlGV8pTHQ=;
 b=c6mHffyLOmpY9NCFzr/UBS2TSCATCGlzeAAsDfPlH7phg1xApAIxmg3VuTc+lYokE/
 3QUYGBAbH3ZkeNO5OrAAovsMOMkJiU+mwme679eZeZThFxA/6Na8mj8r9HvBUVuC+9Yg
 5SMshwABKcKDafQzz9rL80vn5ZWYuZzOvTcZpGeQuV+ls6oQhQSYIK1AtjRN2JVGV75F
 taiIFra94QMwnD8+zO2cmXO0mis9TWp2pc7NbeZlPh6LstWaIBIatUZ+OPuz54k4KllG
 qU8HtO9FYsBCaE28GtdYH1aZAj4z7PqwSnDZV1/z9CvWQYiR9LjbAkJTz/7BZ6wPTJwL
 /35w==
X-Gm-Message-State: APjAAAWC6GpDmO1Q1YBKTsReqMAHmjb9mIwgKcNxgQmna6qdaoVk7Tro
 uvAGWX8kuDjiL8RcB3HYIEXXWNmrQnA=
X-Google-Smtp-Source: APXvYqxm5qhZp906+C01WcyCOedWZWaarDwDzrPsbekHkTW+M849iW8SeZ6Qg/aoMePGd0j+AEDEzA==
X-Received: by 2002:a92:d24d:: with SMTP id v13mr2390053ilg.112.1571082953416; 
 Mon, 14 Oct 2019 12:55:53 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id t9sm15355764iop.86.2019.10.14.12.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 12:55:52 -0700 (PDT)
Date: Mon, 14 Oct 2019 12:55:49 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: tlbflush: remove confusing comment on
 local_flush_tlb_all()
Message-ID: <alpine.DEB.2.21.9999.1910141254360.12988@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_125555_426434_A2FCED44 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org, alankao@andestech.com,
 andrew@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Remove a confusing comment on our local_flush_tlb_all()
implementation.  Per an internal discussion with Andrew, while it's
true that the fence.i is not necessary, it's not the case that an
sfence.vma implies a fence.i.  We also drop the section about
"flush[ing] the entire local TLB" to better align with the language in
section 4.2.1 "Supervisor Memory-Management Fence Instruction" of the
RISC-V Privileged Specification v20190608.

Fixes: c901e45a999a1 ("RISC-V: `sfence.vma` orderes the instruction cache")
Reported-by: Alan Kao <alankao@andestech.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Andrew Waterman <andrew@sifive.com>
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/tlbflush.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index 37ae4e367ad2..f02188a5b0f4 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -10,10 +10,6 @@
 #include <linux/mm_types.h>
 #include <asm/smp.h>
 
-/*
- * Flush entire local TLB.  'sfence.vma' implicitly fences with the instruction
- * cache as well, so a 'fence.i' is not necessary.
- */
 static inline void local_flush_tlb_all(void)
 {
 	__asm__ __volatile__ ("sfence.vma" : : : "memory");
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
