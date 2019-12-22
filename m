Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3744128D43
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Dec 2019 10:26:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KIitWunSyeLnMHtEeiGjmeyIPwUVMl1eIhxu+Sfy5hc=; b=okPqumxrZXGgc2
	tRm1CBzAZDMaKONQ9+uORoORDk8X36GN8bPLm8brrkY96QmIgsjmV9NNrsitzad7hBPerTwW9h3TD
	tzZPRZ6lwnfs/wHxIx6pTtqKe9ZgCXwWT96taUxsye+13BLmf649XGG7JyZdRjq791ajVScsHsuDy
	q3ZlQa/xKc+tiOVVy8F2QjRC1wgKM5VaGiT3JU/2pvGiXE96WC9kJjqiHcqs7REx95ti2EH5UUCtF
	2f4IsORXQf/ipIt7zUkn9JCEr0MXIU7nsZhya5KTJt4jJtSH/u5ti3d8E3DjIkXSsf1+YwQ5LLg4d
	YEtOyGjYknYbAwRD4CvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iixVC-0002w2-HY; Sun, 22 Dec 2019 09:26:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iixV9-0002vQ-4Z
 for linux-riscv@lists.infradead.org; Sun, 22 Dec 2019 09:26:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id j42so13526504wrj.12
 for <linux-riscv@lists.infradead.org>; Sun, 22 Dec 2019 01:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KIitWunSyeLnMHtEeiGjmeyIPwUVMl1eIhxu+Sfy5hc=;
 b=oVoapp3EJ6Nidja1fo2Z8uXslQjYT3eUXevOEqCDO5PgOl+9fOOiwzobx1rJh1Zmea
 trsIqBu5tWK+83cG4BpennmZjuoZhCJ3k2HHWixxvuNLJNNFldgeAgmZLVn4rqfd9umq
 WqyPwLgd/VBCh+Vns+cT3lysddhCVkCvU3YuKZdlF5rKy6y7oVi9TvfQk7L4n0cECICk
 Bp7RPyijKWafJpEkMgZYGnKG1rs1RIv+pRnOEu28YozZ0fJUSvvY1Z6ZuR9Kl3RunMfy
 jVoYmm11hwry416wwWt57nLY2oDpwFCiQ3dIGCGqfV8a7GLaSvyFEuljJMXQN92uzC8o
 K3vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KIitWunSyeLnMHtEeiGjmeyIPwUVMl1eIhxu+Sfy5hc=;
 b=a2mRQhzBbR2SdbKHK073S7xj+GavID1fOjSYrAZSCX3GJDlbQqcy7y/2LrxaTUbcfc
 0mkVIJmZu0nby4nj2AC6urANhEESx5I7x7DXzWOwvJVwKZUYtFJLJOfY8XVlzK9VG/5K
 hXZaj6b/nmIdEd0FY69POVlzGzzDbzEicziFwAZxX55qvFK9gXqf0kfZ70D4zSCA3aS8
 DcSS2Fc/JSOkHbJFM8NEb8331PPbJ5U6JT0oo/FKi0N9IuTn8u+kTvzaFjAIP++wEheb
 MyYQtLImvvgs5BCTo9zsNhBxiyjkUSJI/JJn0+tbkBqlBow9/z9x9l4Y8Y5gQrDhudkd
 +fFQ==
X-Gm-Message-State: APjAAAW6a3b7UHe7l2Kk6dsiSu7FrptTZwYeAmuS+D73Gz4+nrjb2fW4
 dQxl4EN//+U9uLtLVyTJR+Q=
X-Google-Smtp-Source: APXvYqx8WI8Dl7wc0dw2T0b0O/LScVz7TvfFgr+xY+c89yZJ60OKlIBw6cXDKGyBc3rXZBEJcJaxcQ==
X-Received: by 2002:a5d:5345:: with SMTP id t5mr25575258wrv.0.1577006773068;
 Sun, 22 Dec 2019 01:26:13 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:a03f:40f6:4600:2964:178a:86d6:5be5])
 by smtp.gmail.com with ESMTPSA id 18sm8009947wmf.1.2019.12.22.01.26.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 01:26:12 -0800 (PST)
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: fix compile failure with EXPORT_SYMBOL() & !MMU
Date: Sun, 22 Dec 2019 10:26:04 +0100
Message-Id: <20191222092604.92217-1-luc.vanoostenryck@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_012615_204849_D605DBFF 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
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
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, kbuild test robot <lkp@intel.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When support for !MMU was added, the declaration of
__asm_copy_to_user() & __asm_copy_from_user() were #ifdefed
out hence their EXPORT_SYMBOL() give an error message like:
  .../riscv_ksyms.c:13:15: error: '__asm_copy_to_user' undeclared here
  .../riscv_ksyms.c:14:15: error: '__asm_copy_from_user' undeclared here

Since these symbols are not defined with !MMU it's wrong to export them.
Same for __clear_user() (even though this one is also declared in
include/asm-generic/uaccess.h and thus doesn't give an error message).

Fix this by doing the EXPORT_SYMBOL() directly where these symbols
are defined: inside lib/uaccess.S itself.

Fixes 6bd33e1ece528f67646db33bf97406b747dafda0
Reported-by: kbuild test robot <lkp@intel.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>

---

Note: this is only compile tested, not link tested, because the 
      config given in the bot's report gives me several other
      unrelared failure.

 arch/riscv/kernel/riscv_ksyms.c | 3 ---
 arch/riscv/lib/uaccess.S        | 4 ++++
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/riscv_ksyms.c b/arch/riscv/kernel/riscv_ksyms.c
index 4800cf703186..2a02b7eebee0 100644
--- a/arch/riscv/kernel/riscv_ksyms.c
+++ b/arch/riscv/kernel/riscv_ksyms.c
@@ -9,8 +9,5 @@
 /*
  * Assembly functions that may be used (directly or indirectly) by modules
  */
-EXPORT_SYMBOL(__clear_user);
-EXPORT_SYMBOL(__asm_copy_to_user);
-EXPORT_SYMBOL(__asm_copy_from_user);
 EXPORT_SYMBOL(memset);
 EXPORT_SYMBOL(memcpy);
diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
index fecd65657a6f..f29d2ba2c0a6 100644
--- a/arch/riscv/lib/uaccess.S
+++ b/arch/riscv/lib/uaccess.S
@@ -1,4 +1,5 @@
 #include <linux/linkage.h>
+#include <asm-generic/export.h>
 #include <asm/asm.h>
 #include <asm/csr.h>
 
@@ -66,6 +67,8 @@ ENTRY(__asm_copy_from_user)
 	j 3b
 ENDPROC(__asm_copy_to_user)
 ENDPROC(__asm_copy_from_user)
+EXPORT_SYMBOL(__asm_copy_to_user)
+EXPORT_SYMBOL(__asm_copy_from_user)
 
 
 ENTRY(__clear_user)
@@ -108,6 +111,7 @@ ENTRY(__clear_user)
 	bltu a0, a3, 5b
 	j 3b
 ENDPROC(__clear_user)
+EXPORT_SYMBOL(__clear_user)
 
 	.section .fixup,"ax"
 	.balign 4
-- 
2.24.0


