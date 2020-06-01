Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845021E9C3B
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 05:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6w12OW+K+I9R5NQdCthivkvKzwtZ1OoRyTY2uq+lN4c=; b=NrHDVaOIumaZc3
	PlvAbWIqvzcp8nN123BieezBf+imukdl+JJL6PIhkNJiDCxsIyxK/1dNC89KBY5sGwYutHH1LDCxq
	T3GJQSxzhLuarq1Euj54X6gp9cSbgDkQShlM7WeBI+EKTj/7VmCRNJ0z4FQvkWEh5ENB37W9NCinx
	VYHpVM+Kx8invVxmZbBfefIzo0uXAgvedzpkKiKGLvTZl+L47Qer2cQsaAA7aooXF9G9jcea1xzMw
	4puQqbTcL1KR5PkpdtS9sVBy/mgYrzHbJWiFWEAcHaIlZa6pjbDpfMDRj+8vAn68tVh4mVQxzcmwh
	GYK5iNE45JuXzxPS2/XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbY8-0002jW-4z; Mon, 01 Jun 2020 03:55:44 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbY4-0002j5-Qk
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 03:55:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh7so3689170plb.11
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 20:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6w12OW+K+I9R5NQdCthivkvKzwtZ1OoRyTY2uq+lN4c=;
 b=TOAw6Ras8RSROXZrvTynbBHkwYdZDYCIQ0AF0pgOqIdmv68zyzPORgLOLu2ipxfTZ0
 7KX0GPPnSFhLHgqp/lzPw6hVkMtQY4pfn22MxWDJ6RGLqPIuPbTOk66wOO+AlJum85Mp
 JI+S5i8ll5ijMMQpZ26/hr/vfl4Xtic7s11vfc4BypLV9XZguFEnn3q1txXqPykVLwW8
 lffHmMtSBSS+LkZDt8A1D0MgyGlyhVNXGzQxiT2NjLHVZh3Z0LmNgnEZaYz3cyspfcKg
 nT6b/AmmkZLPVL4cKjwB2cz6JjbcPNQp2yKR6Hv/TKZ8tU2J0MJrzRhluua/M87DnM7I
 1IGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6w12OW+K+I9R5NQdCthivkvKzwtZ1OoRyTY2uq+lN4c=;
 b=XEkHqJI8HLSg99G3YIEeGczOgVJG1QkSeULxGcIFfLt7eCVwbWQHP3ot1aCf+G9Oqj
 ygZKo5qBTDPySF3nKCmS2H+Jr+gV7s7CyYzC9kbAgnBejJ1tttlIDvEuIXcGGKFGSdun
 NwaQ7s/VH1TSfrWz9Hh9CgY48jpuKwac6Gm7Ig1z4VB3iZI8tMkeDYPs/1m0AvQeFUoD
 U43MOJgjpmyAMBBqi7I43XAcP/4QDZRAJBTNwKG6VKLZQ4ycL1mS+xJFE5QbnapCsIvA
 qbl8lG3C3EFvA1/pwPYPJ2LfUiT8g6W9XPoGwFClv0XZcxuNWazoFqNHPjL4AeEZM1n1
 gHGQ==
X-Gm-Message-State: AOAM530nY1xanp9sHX+jKmxK/s382Tf16C6ye5UeD/fis8Ok5l+rFrhv
 p09h+4UJk0HGD3Rmm4dvZCo3h2tevhc=
X-Google-Smtp-Source: ABdhPJwAX1BkjToVS00l+gu6Xb0uMQbR12tT9R4btFlIsvOg3TtBEMFsFfCFvcp7IC/LYh8Kh0Ot1g==
X-Received: by 2002:a17:90a:de97:: with SMTP id
 n23mr20754832pjv.164.1590983738977; 
 Sun, 31 May 2020 20:55:38 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id x5sm13166841pfo.8.2020.05.31.20.55.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 May 2020 20:55:38 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: fix build warning of missing prototypes
Date: Mon,  1 Jun 2020 11:55:32 +0800
Message-Id: <7acb6dcf9975bbf3aff4be3b01320fd1b5ba30c1.1590983619.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_205540_896441_8696C959 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbuild test robot <lkp@intel.com>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the missing header in file, it was losed in original implementation.

The warning message as follows:
 - no previous prototype for 'patch_text_nosync' [-Wmissing-prototypes]
 - no previous prototype for 'patch_text' [-Wmissing-prototypes]

Signed-off-by: Zong Li <zong.li@sifive.com>
Reported-by: kbuild test robot <lkp@intel.com>
---
 arch/riscv/kernel/patch.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
index 5805791cd5b5..d4a64dfed342 100644
--- a/arch/riscv/kernel/patch.c
+++ b/arch/riscv/kernel/patch.c
@@ -11,6 +11,7 @@
 #include <asm/kprobes.h>
 #include <asm/cacheflush.h>
 #include <asm/fixmap.h>
+#include <asm/patch.h>
 
 struct patch_insn {
 	void *addr;
-- 
2.26.2


