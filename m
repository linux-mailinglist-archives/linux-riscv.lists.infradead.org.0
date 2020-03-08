Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E78517D30F
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Mar 2020 10:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUh++vFamLUxH/hWUySklGX02oSayeX6dA7qunXUjac=; b=cFTpP7zREFu7aE
	1ibjz8nPrJd2ahOd57UBfc2Ox+XzsEMdPbrwhnId4CcSYCWoEwooOstsplYF/XaBBToL7Lte7pD5l
	1OPf1rvy5LNZDgw34eCejtbRmByG1vFULkGct+uOXCP/9weIZVedEjp3OxgOz8/d3cGbhPYWwQPlX
	4DNzR3ychiqCorZ/wbnHWgPY1VcsoxopQUn0Pn31QornGtKhNMkrYlDjnFz3xKmRFPJnLaRQ47A0j
	efvcy+mUq/t/ePLNFFSnOMKfYu+5AtPHkVBwXBhadRDi1AwoWG1Eagqzn3bgy43SLrgENrjXNvP2M
	duUStJHU3G7peYa0tprw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAscy-0002kR-Gp; Sun, 08 Mar 2020 09:53:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAscp-0002SR-IT
 for linux-riscv@lists.infradead.org; Sun, 08 Mar 2020 09:53:36 +0000
Received: from localhost.localdomain (unknown [89.208.247.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF0F82084E;
 Sun,  8 Mar 2020 09:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583661214;
 bh=mIeF30dk8XepLf65MsnIOdXD9aNqAhyxQIdY1ux2I4U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oncBC7OEpGbGBhNHsUFoTc6m6jijE7vStDC2neSm6LzZpaM0vxsYZJRL1o+mVZeG6
 ERWPjYq/0Th/usgmJFYQBdNNLE+/eM/Yv9L4iW5NtWmREw0A/4ITjKRLvFYNx2W5Q1
 OJCbxrpoDh3j9EQ/5yPf0VT9G6bCsKAhqHu4AsL8=
From: guoren@kernel.org
To: paul.walmsley@sifive.com, palmer@dabbelt.com, Anup.Patel@wdc.com,
 greentime.hu@sifive.com
Subject: [RFC PATCH V3 06/11] riscv: Add has_vector detect
Date: Sun,  8 Mar 2020 17:49:49 +0800
Message-Id: <20200308094954.13258-7-guoren@kernel.org>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20200308094954.13258-1-guoren@kernel.org>
References: <20200308094954.13258-1-guoren@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_015335_640797_DD3A4126 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
 linux-riscv@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

This patch is to detect "has_vector" at time of CPU feature
parsing.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/kernel/cpufeature.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c8527d770c98..c9ab24e3c79e 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -16,6 +16,9 @@ unsigned long elf_hwcap __read_mostly;
 #ifdef CONFIG_FPU
 bool has_fpu __read_mostly;
 #endif
+#ifdef CONFIG_VECTOR
+bool has_vector __read_mostly;
+#endif
 
 void riscv_fill_hwcap(void)
 {
@@ -73,4 +76,9 @@ void riscv_fill_hwcap(void)
 	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
 		has_fpu = true;
 #endif
+
+#ifdef CONFIG_VECTOR
+	if (elf_hwcap & COMPAT_HWCAP_ISA_V)
+		has_vector = true;
+#endif
 }
-- 
2.17.0


