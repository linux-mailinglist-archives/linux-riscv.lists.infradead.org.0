Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4EBBA3EF
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Sep 2019 20:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUCqQ6O74gONoR/6frmIBLDzoU4VAAY0JeXPlVkcXxg=; b=LamcVPzoE6pNht
	uwPSNUAcVwOpqM1dfvrPCgiLKG7g1TEf3LhpQlQ6wAnZrHyDdVPv2Bjx9J1Yhh1lzeepOicEG+A18
	m3wx6i5dhJcYrdsKAaah0Ds16i9d/2Oeup1yN2uJpCttOnMXPShdAzRb8ncYGritMNLM5GO/Adrvc
	05jCcnUGDyXHuv9LsPNC511QPrlwVDRT6wfrYADaJV1A5MlSxG/GZn7uFFWH9QFaLVMF86N1DF+Lh
	EMY6n4CJlt/+gjWjhVtwWDJx6RBOOevaQA/fFu2MrBCeUBVzhWQKA/ah0wO1jGPppE6I/mnWn6hzs
	LT5f1zs3fX2IMU4GK/zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC6rr-0006XO-UJ; Sun, 22 Sep 2019 18:45:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC6rm-0006WU-Et
 for linux-riscv@lists.infradead.org; Sun, 22 Sep 2019 18:45:53 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 257CE208C2;
 Sun, 22 Sep 2019 18:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569177950;
 bh=CiyScJoSbjEh1dk6sz0/OoVDGfhZZEA9aBDwuupZISg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eZk0IM6MlZWnejsLOTihBFvyinJpeZBFn9Asjxeyq2CCoGWgh3g9YU0MK7m50OTzL
 yizhyijHi/0ZsYqnPEEzWrz5TthwnQdVL+axShQN2Yj2WzYRDBYyJXBbSFBvLtRJKf
 2yzsFyw3qZker2EFFzPVZadEAg/mzQZ+vs4RUkw4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 056/203] RAS: Build debugfs.o only when enabled in
 Kconfig
Date: Sun, 22 Sep 2019 14:41:22 -0400
Message-Id: <20190922184350.30563-56-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922184350.30563-1-sashal@kernel.org>
References: <20190922184350.30563-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_114550_516570_B0E58B4F 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, kbuild test robot <lkp@intel.com>,
 x86@kernel.org, linux-riscv@lists.infradead.org, Borislav Petkov <bp@suse.de>,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Valdis Kletnieks <valdis.kletnieks@vt.edu>

[ Upstream commit b6ff24f7b5101101ff897dfdde3f37924e676bc2 ]

In addition, the 0day bot reported this build error:

  >> drivers/ras/debugfs.c:10:5: error: redefinition of 'ras_userspace_consumers'
      int ras_userspace_consumers(void)
          ^~~~~~~~~~~~~~~~~~~~~~~
     In file included from drivers/ras/debugfs.c:3:0:
     include/linux/ras.h:14:19: note: previous definition of 'ras_userspace_consumers' was here
      static inline int ras_userspace_consumers(void) { return 0; }
                      ^~~~~~~~~~~~~~~~~~~~~~~

for a riscv-specific .config where CONFIG_DEBUG_FS is not set. Fix all
that by making debugfs.o depend on that define.

 [ bp: Rewrite commit message. ]

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Signed-off-by: Borislav Petkov <bp@suse.de>
Cc: Tony Luck <tony.luck@intel.com>
Cc: linux-edac@vger.kernel.org
Cc: x86@kernel.org
Link: http://lkml.kernel.org/r/7053.1565218556@turing-police
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ras/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ras/Makefile b/drivers/ras/Makefile
index ef6777e14d3df..6f0404f501071 100644
--- a/drivers/ras/Makefile
+++ b/drivers/ras/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_RAS)	+= ras.o debugfs.o
+obj-$(CONFIG_RAS)	+= ras.o
+obj-$(CONFIG_DEBUG_FS)	+= debugfs.o
 obj-$(CONFIG_RAS_CEC)	+= cec.o
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
