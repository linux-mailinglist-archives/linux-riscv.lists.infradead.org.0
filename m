Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C444A1F25D7
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jun 2020 01:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RDUaNHZy74LgucawtJn7rSLVjgjy52WEa9GJJ5x0rc=; b=FHEGKLYhfZxb2B
	xUagl5Ztyuk1JsS2U6yA8Mexe1R4KsXu8ACQtPoB+PEOoLvWwaLAXvT3nPbQfea9RA43CLmHKxbZO
	RvxlrapJ8gByQofa/2QUro+ZIpMhPrFYC0J8igLk3GS/c4ktLzQRuImWS+Gj85jqafG9HHPN8VW+e
	Dto5dZsU093a9imnL0KUxJUfmHL1O94LDitRY3UR6C+UnaOBtRfW/EPAMGuWYRSOMcuitLW5TqWRh
	VnpDsrHvUak7aiRYrjYU9Cw4PCvNHvvrzKZa28UTr7nOH/fGMQ0p9Uazzzb7ABxwXaBkPuR2oTELx
	BRpSCJVQtd6uY2fVoROQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRGX-00086E-Ut; Mon, 08 Jun 2020 23:33:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR1Z-0004L0-AM
 for linux-riscv@lists.infradead.org; Mon, 08 Jun 2020 23:17:52 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1A6B20823;
 Mon,  8 Jun 2020 23:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658268;
 bh=tVHUbJrmSj5WwA+U33l2RkVyEQK1iFhc957Equ35Qzc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=H3KFgVHh7Vwsjb8DII3IIeOx3hlmoEjaqsulhpzrdQXeZRHH3xqCvCrwY2WH600nc
 bWdUkO5i043sAdMGErLoZusyEa2+s9QNAyPDD8RfNsqy2LXugWB9xkeSTwyPN84B+Z
 Oy9TbaAgIX5oj2lrMbdaxESYu83JNPa6y72q2yHM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 275/606] riscv: Fix unmet direct dependencies
 built based on SOC_VIRT
Date: Mon,  8 Jun 2020 19:06:40 -0400
Message-Id: <20200608231211.3363633-275-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161749_505118_C3BCC9BF 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Hulk Robot <hulkci@huawei.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Kefeng Wang <wangkefeng.wang@huawei.com>

[ Upstream commit ab7fbad0c7d7a4f9b320a059a171a92a34b6d409 ]

Fix unmet direct dependencies Warning and fix Kconfig indent.

WARNING: unmet direct dependencies detected for POWER_RESET_SYSCON
  Depends on [n]: POWER_RESET [=n] && OF [=y] && HAS_IOMEM [=y]
  Selected by [y]:
  - SOC_VIRT [=y]

WARNING: unmet direct dependencies detected for POWER_RESET_SYSCON_POWEROFF
  Depends on [n]: POWER_RESET [=n] && OF [=y] && HAS_IOMEM [=y]
  Selected by [y]:
  - SOC_VIRT [=y]

WARNING: unmet direct dependencies detected for RTC_DRV_GOLDFISH
  Depends on [n]: RTC_CLASS [=n] && OF [=y] && HAS_IOMEM [=y] && (GOLDFISH [=y] || COMPILE_TEST [=n])
  Selected by [y]:
  - SOC_VIRT [=y]

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/Kconfig.socs | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index a131174a0a77..f310ad8ffcf7 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -11,13 +11,14 @@ config SOC_SIFIVE
 	  This enables support for SiFive SoC platform hardware.
 
 config SOC_VIRT
-       bool "QEMU Virt Machine"
-       select POWER_RESET_SYSCON
-       select POWER_RESET_SYSCON_POWEROFF
-       select GOLDFISH
-       select RTC_DRV_GOLDFISH
-       select SIFIVE_PLIC
-       help
-         This enables support for QEMU Virt Machine.
+	bool "QEMU Virt Machine"
+	select POWER_RESET
+	select POWER_RESET_SYSCON
+	select POWER_RESET_SYSCON_POWEROFF
+	select GOLDFISH
+	select RTC_DRV_GOLDFISH if RTC_CLASS
+	select SIFIVE_PLIC
+	help
+	  This enables support for QEMU Virt Machine.
 
 endmenu
-- 
2.25.1


