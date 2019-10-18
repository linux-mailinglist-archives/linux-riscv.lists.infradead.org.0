Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860ABDBB05
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 02:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCMQHEosBwQejWlYWflYt72uNcBflhyJybYLD93EBVQ=; b=lAjhy7iMS8anoS
	92jvikYZuV0pvTsd7nfut6Juo+COrja7HgGO0ZiWza6lLudz4HaIPYVzBdlbD04YxPlQolBD7Zgtq
	qj2j9jkNGYjFcsX24LRFwzfTkwIWZHrA78AwAmsC2QGGIpWcpiun675FxEuRx5ch62WCzGkgTVLnp
	hj2zWcwNNlFuHi+Yqn8NaQx1Eqdjvs1FauhTq8SKYiO89vg5tSyLl3B7RlSaFyVLUq/Qypn+GezWN
	51Kx7CAUzHmnCwkyER4M+kb6u4ukjFeAi6mUKzJ02jD+I5GdkOQAn9aszTHH6iP4B9JfLJCSWlksU
	yW18ylt6hwiruTCxngCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGSy-00038G-Ar; Fri, 18 Oct 2019 00:50:04 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGSp-0002zE-19
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 00:49:56 +0000
Received: by mail-il1-x142.google.com with SMTP id l12so3947009ilq.4
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 17:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4tqK11FCKTtpeNb/kdkdcZSh26BkLSHk7+0eLJudgpA=;
 b=ZvTWtpJ+nGkxprJPx8rmfN7XS5Qq2GtsH0AcO7eQ4AA+DVUuYgTUYKgLOfBC58zTdg
 MkX46qmHUxwbyjT5I+b4s5zYTfoA8wAdQi8yudp0VZQBtBDzIYvChI0fsvsHNsvl1Vjy
 K106IKyMVkt4xyN7MeQb5BXp3SKlNKfNnfGgi1WHub9iOlUnq9inCvPNvdvLrXp0+QdX
 SLc+d4YyumaMZ8yio9VNa4Eoe208BDnbf6RCi7UvBFdFUg300TbvbefHgxVTXLH75uSW
 i9I65+Y2vS28kr5uacQqvIrsyjCv8nmfdKdSY4aJOBRzFTGTGR/2K3BInGi+5HNHl5Ps
 /qww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4tqK11FCKTtpeNb/kdkdcZSh26BkLSHk7+0eLJudgpA=;
 b=gSunwSofrBX8K1AgxOOIHBP4qm+M0ZHyQ0zUX9Knpgowhs1U0GUaHzshlnfhrqGVxI
 6HaYhtrwUqjUg57JcWT8FKWqHQl5hYIN0fLLBsrWtO1pDbooXGHovYVbVAKzxWLRZcFT
 VkZDpvLm6z3m4p1Vh7Udo/LGhHLYH2E0fPJTNDWX0HmxiR8m2WG+BvP64zzmF2R053Sq
 rSV1v+oB8NMor53aZxpMKCmcawMy3etHhoZxgX62JuqVqyWkO350YF+wJJBOqzFwCW0k
 od96IKj8DsrGL/D0KUb1guDm9m8CeUtH640ObHmVHrHIyw9Z/SP+C3PhcyuDUxvxdven
 5CFw==
X-Gm-Message-State: APjAAAWRBlTxoyOC54arWyCRkuVCr9Vw4U9+e1fw7tjTXoxOtAhETAKZ
 TmNfYJH0/ZwwmFNRcETBElb0GUGYzDw=
X-Google-Smtp-Source: APXvYqx61FSX1Z9aRADptVioZHqTaHtzqSS3y6mMidOa+MlccNOkjPJf8zqFwN5wT354dI1p5zD0wA==
X-Received: by 2002:a92:c6ca:: with SMTP id v10mr7634877ilm.133.1571359794270; 
 Thu, 17 Oct 2019 17:49:54 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z20sm1493891iof.38.2019.10.17.17.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 17:49:53 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 4/8] riscv: ensure RISC-V C model definitions are passed to
 static analyzers
Date: Thu, 17 Oct 2019 17:49:25 -0700
Message-Id: <20191018004929.3445-5-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018004929.3445-1-paul.walmsley@sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_174955_107828_A6FE1238 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Static analysis tools such as sparse don't set the RISC-V C model
preprocessor directives such as "__riscv_cmodel_medany", set by the C
compilers.  This causes the static analyzers to evaluate different
preprocessor paths than C compilers would.  Fix this by defining the
appropriate C model macros in the static analyzer command lines.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index f5e914210245..0247a90bd4d8 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -47,9 +47,11 @@ KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
 
 ifeq ($(CONFIG_CMODEL_MEDLOW),y)
 	KBUILD_CFLAGS += -mcmodel=medlow
+	CHECKFLAGS += -D__riscv_cmodel_medlow
 endif
 ifeq ($(CONFIG_CMODEL_MEDANY),y)
 	KBUILD_CFLAGS += -mcmodel=medany
+	CHECKFLAGS += -D__riscv_cmodel_medany
 endif
 ifeq ($(CONFIG_MODULE_SECTIONS),y)
 	KBUILD_LDS_MODULE += $(srctree)/arch/riscv/kernel/module.lds
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
