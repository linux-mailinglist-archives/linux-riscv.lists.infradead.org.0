Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D07104942
	for <lists+linux-riscv@lfdr.de>; Thu, 21 Nov 2019 04:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6gUKhwkFuDvg/kaBJkn8WWNxjyL3feDPm9EUsFg3QBs=; b=FNf
	7H2MhffrEkjcb5msbDpFoKPx4AVBGrUKBl4b6KfGBdYceqGnRJtZ8rYVC+VSuLedhLSYtBuUrLmR6
	e+o8PQ+ViY7bFBc0Ijx3IxfhI0JNaQQpcWh+DpeOi96kr7SHtjhDi7t37O85+eWbysn3vKucsWDSx
	vza7++CLhFmVkjx8x46q4Dl0MSpJKAmY2DE+SVm0+y4eXPD21uxcXhKrvUA8iWDR73pDwmYxIeKAO
	m3p+mC0TQfYvAY+y7ffkPbS8gqno8MtJj8O9xCjIWyhpDD2Uhl24qtiuttjsk8qAbJrcag+TlzkH6
	sAjMud7nFw/18a2zeOxXtYXoAG0c5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXd2K-0005iU-Dc; Thu, 21 Nov 2019 03:21:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXd1h-0005BU-Kw
 for linux-riscv@lists.infradead.org; Thu, 21 Nov 2019 03:21:05 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA8AA208CE;
 Thu, 21 Nov 2019 03:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574306461;
 bh=BqQct8MurXEaQBIdn4W/JxxMj+Cw1+0kP+2a1H36etY=;
 h=From:To:Cc:Subject:Date:From;
 b=wkTTcG/LeOpnQx+o0eJ95hmXusT7EtPXbJmXmcWOSzLxoD8b5QuXmh3ozlkv6gdM0
 siTTLCQ1N0XcKG+HqCit0fOPuz0Yn63XPj5QikxODO3Q9mOfxJ7CB7BKkk5FTLOiEJ
 f+ouWsVKT2xqhbUcmsi+aETAPi9pioz+/o3pJV0I=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] riscv: Fix Kconfig indentation
Date: Thu, 21 Nov 2019 04:20:57 +0100
Message-Id: <1574306457-6251-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_192101_823567_41F2AE9E 
X-CRM114-Status: UNSURE (   8.02  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Fix also 7-space and tab+1 space indentation issues.
---
 arch/riscv/Kconfig.socs | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 536c0ef4aee8..f89b73281737 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -1,13 +1,13 @@
 menu "SoC selection"
 
 config SOC_SIFIVE
-       bool "SiFive SoCs"
-       select SERIAL_SIFIVE
-       select SERIAL_SIFIVE_CONSOLE
-       select CLK_SIFIVE
-       select CLK_SIFIVE_FU540_PRCI
-       select SIFIVE_PLIC
-       help
-         This enables support for SiFive SoC platform hardware.
+	bool "SiFive SoCs"
+	select SERIAL_SIFIVE
+	select SERIAL_SIFIVE_CONSOLE
+	select CLK_SIFIVE
+	select CLK_SIFIVE_FU540_PRCI
+	select SIFIVE_PLIC
+	help
+	 This enables support for SiFive SoC platform hardware.
 
 endmenu
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
