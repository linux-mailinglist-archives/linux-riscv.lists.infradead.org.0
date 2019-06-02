Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0479B322A2
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiXWsaCYS/ds5WByT/Y6oKcFBoUOFeDflX9REXZxoPo=; b=pclEJXIyC27h07
	rzboh/JQ67dbc8eUt9TyeCNMKBuS2978KDUDWuH822Bz8NWlr5YeFBjtlkdi6QsNSkxgV75pFM5op
	daEhLE6pB/q9P980MYSLPlxsB5WzmT+YM+Ea9TAGGfoTZagzGbTR7R0Eh5QMJ0HSuJx1vwz9fi+8g
	Ivvxn1Lv0pHptbjncRD0i38rjGQX5IIK5F+zZ6QjT5A08juJ46fYglrscELxZm8UswH493nn0ILVZ
	5DEG3N1a0e9DvbS52sKAcZdyl8bHeRWy5XYvEDw6xH1HNVVQ+4r1xSJmpofNKKiJFEf1+jyXkT4if
	Xoo7nvW7CUfQnogOOVpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLUM-0004ev-Ss; Sun, 02 Jun 2019 08:05:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLUI-0004BS-2w
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:05:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id d18so9200797wrs.5
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lVmMBuEiI1TSAqk1FfU1U7RUZqQknARWWYl0UzTN3/Y=;
 b=N0+66sdsXoQBYe50js1Hd52DvXCm4tFQava67j46KPwocptMhSkacRnEsrzP08Sv6M
 ZO4VUhIwToGBw8eN/1xJi368/FFSszJMbNCn5PezA6EG+vz8FUys0h/WIhvgZ6Sb7dJX
 arodLadOwkTr6yi8k0komr+0GlJYEFNAfKRXeHBIKNSGA+FWbi9Lg3jhdhV4LvCF6gA+
 pX0CT4cSJOtDf3SNJj3EVTLwumDy3eb6KNuOjL2UKl6p66l8keQ9xiKBwQdgj529JNXM
 PUwHCxI9d13KHE5/iJxSHMTnVwJ1alpsZRWvIyrqmjXXUliRLsyle0kZsAGfffvmBszF
 s/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lVmMBuEiI1TSAqk1FfU1U7RUZqQknARWWYl0UzTN3/Y=;
 b=Aw2V0YEu3kohUi5zWk4irjpL73Vy/MuogNTVEjTMVpjF7re2SRaCM+CmsOcxEQ7jdn
 vbP1jowGfrFc2f2QJfrIg4LfrM61uKwNaYgIT0XkVuHTps+LluG2Md8peKnEGYgoCwv2
 GLpmCDosCvB37REnYLAwQ+Db0gHV7MVNeNONE51pPyuXCdg+ECCB8PpMHoOtu0ww1wnm
 ejG5F4GKltup6LWQKbJmpZf+tCvey9vWgMavM3X5qy00W5LIggwOnmKnU718Ofgv8Hhz
 /onE9Y16CpcfrN1l9HpTZ1zwRMpz6FxnwxVlgBmT9JoSyfXmEk81j6esP7/ZJsmM7j3v
 K2rQ==
X-Gm-Message-State: APjAAAXYkR2PFbN9hwZmHJbqE25Xiy16Ygm0UPgIsDq/lP1GVAKSYHcq
 q7ujj5O1Mma+Hq0DiZYGUitt8Q==
X-Google-Smtp-Source: APXvYqwLy0yWkg8fh1zyhbcW1Qh35LNKhxDQz/zoicwalKTyGXTF96bXuh+t5ibVzUNKdpqPOru/Jg==
X-Received: by 2002:adf:eb0f:: with SMTP id s15mr1040541wrn.147.1559462704760; 
 Sun, 02 Jun 2019 01:05:04 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id l190sm10186301wml.16.2019.06.02.01.05.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:05:04 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 1/5] arch: riscv: add support for building DTB files from
 DT source data
Date: Sun,  2 Jun 2019 01:04:56 -0700
Message-Id: <20190602080500.31700-2-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190602080500.31700-1-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010506_171589_12A2C448 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Paul Walmsley <paul@pwsan.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Similar to ARM64, add support for building DTB files from DT source
data for RISC-V boards.

This patch starts with the infrastructure needed for SiFive boards.
Boards from other vendors would add support here in a similar form.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
---
 arch/riscv/boot/dts/Makefile | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 arch/riscv/boot/dts/Makefile

diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
new file mode 100644
index 000000000000..dcc3ada78455
--- /dev/null
+++ b/arch/riscv/boot/dts/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+subdir-y += sifive
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
