Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A157583E1B
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 02:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j912PLld5IG4tdcRX+M7q8uKGw40CrpT1fxaNGqaqNM=; b=dYFy4C43Zh1tiU
	g2HVXoBftLaC+67PGlDTxb+gu1UQrdt3fmv00KXcFJCEwUoSaJO6AsEu5NQPar4OgYY2VdnUEovh5
	KkR6Q2nHpI6N8eq72I4NHZihP1WUicU92OdTsPZmxJiafpBEhiuPx9tJTLDVyCYDsFXqcIu2GQEIZ
	nKq2UfFSl0LOvINxkcr57S/zLj+hhW9e2hScMdZU6VA7A1BwwFFchQcd0dep2WGHDFz5VzzvBimbR
	8vOMgBvQkuFaERwHIZYoTEFYcBR16EDrn79vaaqlFc2gaCO2Twhe2aqm8QDV9ejqxGGTXvbuWPdKx
	HwviyYoVerBl59G8gZHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9SL-0006KJ-Nz; Wed, 07 Aug 2019 00:05:29 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9SH-0006Jt-Hz
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 00:05:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so32090176pgg.8
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 17:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=jhhALUmobh5CEeI5zP2L8VoTk0yxy6yH6h0CyFP3HPw=;
 b=DbPmbKsrq9+3wVOIbMu202q9Z5UYCg+A+zvuk5jNM/Zkm5M65SAZzA918+nWakG4fK
 BF1Z2usmkZA3LRl+NLWsk9RNOw1W2uEbycI6ToYPLbo6SSsX1RWL2l3bbrH94Ah+XQwS
 Bw1gxrDP7KwrRmeZQ/jJv9KtWDZ6onVrHz9fPXqXcASZqJPbjetWGDZr2esD1oISTqz2
 JzZZG75eUpawlYd9mtRFKJ7jHPsafqb1kpkjNZABoSPuu6zMow2RVIJanCMbQcjMHmlE
 nacH2IB5XVlmdODw22D0gbqGQ4yTlI0VJ/omRHy1eY8o92LDa57Dnld7JQmNQJ3WklQN
 gx9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=jhhALUmobh5CEeI5zP2L8VoTk0yxy6yH6h0CyFP3HPw=;
 b=efZS0hczhO/TWJb08Z//xk6n8AY8k9F/JcyJPSVxpy8BKY5rcEb1Le0cFczWJoMTFg
 wDFsqPBV0xfpH1NqNBkEYivzC0EmfLAVf622bGCU1qGtwqXxro50O7lNCxF+A8ZLKkWP
 xlmCPypp5CECCPBOa7blVWgY2YSwoNusJC9MtiEldpdmmulH0pXgs0UcPaPo+JBJJyvX
 87B6k9I57g6ZQcjN6t3Q6GePtU9DKBmepQvs2v1eszj67V2qvUgSGoP4XNGIzBh5b1DL
 DoAyFal20Jqsa/gS95liJwy/4oTeuOUfKts3vUdi3jmlmHZ4OoZS9Ssq7PMpRGgYfEC1
 94qg==
X-Gm-Message-State: APjAAAXp/3m4rvZs/qGmJeMmSqkP6M7e9me/UQVjb2QHNRe4mwsZrq4Z
 4fFl9sexhTdahYh/5Pas5Xrc8zSGkORYow==
X-Google-Smtp-Source: APXvYqylLTnV7MbbXLJnK0yysceqHlnfl7fe7Eqssos+F2bnX/qAu1coQyJVXcT6XBFLEq9439EEgw==
X-Received: by 2002:a65:6454:: with SMTP id s20mr4671964pgv.15.1565136324266; 
 Tue, 06 Aug 2019 17:05:24 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 131sm107412628pfx.57.2019.08.06.17.05.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 17:05:23 -0700 (PDT)
Subject: [PATCH] RISC-V: Remove udivdi3
Date: Tue,  6 Aug 2019 17:05:08 -0700
Message-Id: <20190807000508.9477-1-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_170525_597776_BAB70487 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This should never have landed in the first place: it was added as part
of 64-bit divide support for 32-bit systems, but the kernel doesn't
allow this sort of division.  I must have forgotten to remove it.

This patch removes the support.  Since this routine only worked on
64-bit platforms but was only built on 32-bit platforms, it's
essentially just nonsense anyway.

Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
Acked-by: Nicolas Pitre <nico@fluxnic.net>
---
 arch/riscv/lib/Makefile  |  2 --
 arch/riscv/lib/udivdi3.S | 32 --------------------------------
 2 files changed, 34 deletions(-)
 delete mode 100644 arch/riscv/lib/udivdi3.S

diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 8e364ebf37de..267feaa10f6a 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -5,5 +5,3 @@ lib-y	+= memset.o
 lib-y	+= uaccess.o
 
 lib-$(CONFIG_64BIT) += tishift.o
-
-lib-$(CONFIG_32BIT) += udivdi3.o
diff --git a/arch/riscv/lib/udivdi3.S b/arch/riscv/lib/udivdi3.S
deleted file mode 100644
index 3f07476a91a9..000000000000
--- a/arch/riscv/lib/udivdi3.S
+++ /dev/null
@@ -1,32 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2016-2017 Free Software Foundation, Inc.
- */
-
-#include <linux/linkage.h>
-
-ENTRY(__udivdi3)
-	mv	a2, a1
-	mv	a1, a0
-	li	a0, -1
-	beqz	a2, .L5
-	li	a3, 1
-	bgeu	a2, a1, .L2
-.L1:
-	blez	a2, .L2
-	slli	a2, a2, 1
-	slli	a3, a3, 1
-	bgtu	a1, a2, .L1
-.L2:
-	li	a0, 0
-.L3:
-	bltu	a1, a2, .L4
-	sub	a1, a1, a2
-	or	a0, a0, a3
-.L4:
-	srli	a3, a3, 1
-	srli	a2, a2, 1
-	bnez	a3, .L3
-.L5:
-	ret
-ENDPROC(__udivdi3)
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
