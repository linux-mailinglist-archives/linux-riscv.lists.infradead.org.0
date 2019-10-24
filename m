Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6545E3FCE
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 00:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUa/fa2HzsuJN6TEbjgFeKiNG/JpvnBX+5lWSJ3z5Ro=; b=m56AX6Nndm8I7p
	khFM/pxoyXRLZmijOBxgeN9EJctHXVjxCE/Nt9QbiQzUvuderLMrPc+Aw3J+WdjP83CfQ95gsSWH/
	cWGLRGwp+Qdjq5q/WzSfjXtn3pD4O9STd6rIW60eHSkn3ypZePUBXqVJaR02BiJdWgmOshLwnRu7d
	Yagr318prWZBrYrgv/U/zuokaMvn/YGKdloHZhzeG818Niz+Q8pD3/71loChl/kPf5Q/AMezvpkYc
	lWI+txYaKrfpMmHHE9vxhaBb4UORCyl0usJNPK9jdH3xDVVyUVfKIw2Y72AWIzmQWMVSq8Prp56nX
	9/tELALfB17CPgT21xiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm4J-00007J-IM; Thu, 24 Oct 2019 22:58:59 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNm4E-0008U2-AI
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 22:58:56 +0000
Received: by mail-io1-xd43.google.com with SMTP id w12so182626iol.11
 for <linux-riscv@lists.infradead.org>; Thu, 24 Oct 2019 15:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zeQmt6u0IaAwxJA3Xr74ItciPuMbvDn1BaL/hvbUKXg=;
 b=b3/XSJ+O5O2Gq9FzuNn0Uu/akEHr9eQLEYece+tdjHUli0bi76e6mlu+ecEXZFxiAp
 Ljc0byqB0MIV/CHTl9B2bAoogNrlyv2uDqSL0iZo0tmNiB5NVzbVzYpyvUIptUanpWlc
 z1q1gdmzwiadf0IqBYOkY9mgq1ei4hrlGza2QhKB4ND1IJVbO5jku2EL1Up8rgjGxcg+
 8foDFH3Q4l2Zhp0C2CcIxj3XuApoxpJtHgcZNet0LrTPt+Km0qS1edVy81+DMeUEfJrL
 +Fpok6BHiKFbB7czCXWxGcVrYI+4rXcyY83WEIM2h6jAdYBrJILWmr4qJZHPovdQUJad
 WFfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zeQmt6u0IaAwxJA3Xr74ItciPuMbvDn1BaL/hvbUKXg=;
 b=rymXPeWDj0Ptk78UskXXqAtOMn0P/PDEiTwDE0NGI+UHwZ8vmQxRq9EGezXUVZ2mgW
 SJxyTxp/a+OmX9YOOxZN7/bv+fCl4xNE2XyWpMKjIEUFOAY23LB99tD1vsDvHD9/e8K4
 dloMMLd7MQ2elNyxXz9PFm/xrwrQDhTRy2i8AwK1c/ReVRbeJoPFhSoN922JtsR50yDp
 h4TrjA7pF6Mab931hFWf7n1mJ/NVpIbaRIch1EPNX88vHrhjBsDtS5zZPBU+I8sbf7kx
 qe9yZxA37IxtJwJi5hVU+OKjcmYdAAKafs/UuJ+DKXU8dIzTABrFkrou17jXzvXWKBn8
 8iMA==
X-Gm-Message-State: APjAAAXY3IvPRLuaVhCgaKApCJPAAWH/OY9THMSvqePuFT9Rb1ug/tsi
 XNA6sWa4c5mNQjj2Hs87n2zWYr1zCD8=
X-Google-Smtp-Source: APXvYqyFQvQ7ooZCu9FvinAHLoiUHRgF4BxNJh1ys5uNZfuLn4uFT7NwtQG/gV4UiS3gGJsl5Rb5ZQ==
X-Received: by 2002:a5e:9e07:: with SMTP id i7mr649587ioq.42.1571957932920;
 Thu, 24 Oct 2019 15:58:52 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b18sm58112ilo.70.2019.10.24.15.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 15:58:52 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v4 2/6] riscv: init: merge split string literals in
 preprocessor directive
Date: Thu, 24 Oct 2019 15:58:34 -0700
Message-Id: <20191024225838.27743-3-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024225838.27743-1-paul.walmsley@sifive.com>
References: <20191024225838.27743-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155854_363627_FDA1B4E3 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <anup.patel@wdc.com>, linux-kernel@vger.kernel.org, hch@lst.dev,
 greentime.hu@sifive.com, Christoph Hellwig <hch@lst.de>,
 luc.vanoostenryck@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

sparse complains loudly when string literals associated with
preprocessor directives are split into multiple, separately quoted
strings across different lines:

arch/riscv/mm/init.c:341:9: error: Expected ; at the end of type declaration
arch/riscv/mm/init.c:341:9: error: got "not use absolute addressing."
arch/riscv/mm/init.c:358:9: error: Trying to use reserved word 'do' as identifier
arch/riscv/mm/init.c:358:9: error: Expected ; at end of declaration
[ ... ]

It turns out this doesn't compile.  The existing Linux practice for
this situation is simply to use a single long line.  So, fix by
concatenating the strings.

This patch should have no functional impact.

This version incorporates changes based on feedback from Luc Van
Oostenryck <luc.vanoostenryck@gmail.com>.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Link: https://lore.kernel.org/linux-riscv/CAAhSdy2nX2LwEEAZuMtW_ByGTkHO6KaUEvVxRnba_ENEjmFayQ@mail.gmail.com/T/#mc1a58bc864f71278123d19a7abc083a9c8e37033
Fixes: 387181dcdb6c1 ("RISC-V: Always compile mm/init.c with cmodel=medany and notrace")
Cc: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/mm/init.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 07af7b1e4069..573463d1c799 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -339,8 +339,7 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
  */
 
 #ifndef __riscv_cmodel_medany
-#error "setup_vm() is called from head.S before relocate so it should "
-	"not use absolute addressing."
+#error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
 #endif
 
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
