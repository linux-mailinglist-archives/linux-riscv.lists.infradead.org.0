Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077901268DA
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Dec 2019 19:20:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=63anrj2+kB+ni6RTxQeJ0XnLzlsqh6yzjjNORsKYt7U=; b=sPdpE2xG6Xd+vufOt+bu+tnNbK
	6EBS32pzo3rjzZNsqzpJathB8zO4HyV83Ch6L0Wti8q2OlOlwK9jqHsuIljF9vOXieaj+wrUPWd2F
	qLDBS6yjckPeyltF8pRtaFrt2ay5MUWC/THQ5++Y12p28SR8lLZpINMZaRjgMaUGHJeofP1XHNm6w
	KF7toHof6ZPXz+dKssNgnd7YzGk60XtD699cRO4mFIpEF147llJ+f60GqcZfiwIyDHgFmX8bCex1q
	js6t8KlRDG3lH6991tPpmz3vuq6aEN8YAM6dpS37xoQY3wCT9WFpLMDSn48TLvsI8axBpB9Puw8x7
	dnhxzo4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0P3-0007tJ-5F; Thu, 19 Dec 2019 18:20:01 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0Oz-0007sf-6W
 for linux-riscv@lists.infradead.org; Thu, 19 Dec 2019 18:19:59 +0000
Received: from orion.localdomain ([77.9.67.183]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MfbwW-1i22sl1zi4-00g1kL; Thu, 19 Dec 2019 19:19:47 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drivers: clk: make gpio-gated clock support optional
Date: Thu, 19 Dec 2019 19:19:14 +0100
Message-Id: <20191219181914.6015-1-info@metux.net>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:jpHLwXNk9hOLka9uvW//uJQnzAGMKxKM6PXIdnWgi5UdfcFPP+1
 qkK0BKGr8o0uMs0aLjei1OLw/VfwDVzrMMX8YdAgKDP0WTG6UAnGMSg5IgKoQv33epGyvmU
 fmwygj1HeGDDsFI+mnsMGJYDe3g2Ad+7b1ZBSWFf1aXz8ugcDazSaGJTI75cUqF1AglVx8k
 VNx7FW/KSmUFk1d4iDdcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sZrDCi3e6so=:SovrMjBvwFTmI8GTl4TqmU
 srSdn+cnFcrzRx4RsShLdt4hxCM3koBsYCyWjP57HxiKQi+nITWLO1c1j1wAYVRDCcWDr2UJx
 tSQyvXQJMLN6p7Kz5kAWBVDqtxrtPQ1T1V0byUtC/qDMqZIz1nTyI4bgs0484Zj3hSJUrYMAB
 9gCPyHZ+nI3rUN+5vaUfw7wqyJFEpDfI7PdYgtGK2da81sZNfdEDuesmQyRSGuh0WClTDMzXl
 ugor+XYc9uVj5IKsb9VRGhoGCLc+kifuR+M2fw8nZkgefFJaxDablwdPy5XCDakR+4UvW1ODV
 1zy3ZeHhmmrynmMzPuQotPq0R6t1iAvpViyvu0QIuMRxjBAu+fzx75gFw/Qc+bBFiAFq9CTyq
 mHEpXB20lFUpfKhc3pPNxZdkXtI/6JVOPiZxtR52RgDoet3oaBvUZ3fl6TRnQTV8e8J5xvuTf
 yg6bel6FwI3cgJBrIzIUDHygS4PftZonnyAS5KBSYio2Z2P2Bn+vnn5su3FP6oSzO1a12u+Rk
 LP5hRaX5t1uoob6PgJ2M+283T2UziMnqiwPTv9cu2YTAHgjad9M/H9VFzed7PqUqHmqr5tVjS
 7qGqtUIeWL0X7VGkqx2v9kYw4+jJVu474kHtb4trmJPDX26TQrS9bDi7a5td+6jUqy4SH2P5x
 dium3iEh95GQ4OlIeBIsZviVWIxezaEHd3CZfp5Dv41S1wGFwM36EbhzjI1L/Lnaox22cfEQw
 MZiTkeEANK8cKo9/kex7VxiASlW44PYO270FO2LMyW/3DLkZtM0jOog5Z1lSfC2PidlwveRoH
 ZMjbooPVm+xA9xol4nQiEMNjWxzwcjQlImPE5tbm65VEjwStCkSQ/Z2uBUEp7jGEG16+qrrSd
 529HVRNCzLi0enpkZ1SQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_101957_532338_25ADA110 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: sboyd@kernel.org, matthias.bgg@gmail.com, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The gpio-gate-clock / gpio-mux-clock driver isn't used much,
just by a few ARM SoCs, so there's no need to always include
it unconditionally.

Thus make it optional, but keep it enabled by default.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 drivers/clk/Kconfig  | 7 +++++++
 drivers/clk/Makefile | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 45653a0e6ecd..880f89c46f6f 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -23,6 +23,13 @@ config COMMON_CLK
 menu "Common Clock Framework"
 	depends on COMMON_CLK
 
+config COMMON_CLK_GPIO
+	tristate "GPIO gated clock support"
+	default y
+	---help---
+	  Supports gpio gated clocks, which can be enabled/disabled via
+	  gpio output.
+
 config COMMON_CLK_WM831X
 	tristate "Clock driver for WM831x/2x PMICs"
 	depends on MFD_WM831X
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 0696a0c1ab58..2b614126672a 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -11,7 +11,7 @@ obj-$(CONFIG_COMMON_CLK)	+= clk-multiplier.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-mux.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-composite.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-fractional-divider.o
-obj-$(CONFIG_COMMON_CLK)	+= clk-gpio.o
+obj-$(CONFIG_COMMON_CLK_GPIO)	+= clk-gpio.o
 ifeq ($(CONFIG_OF), y)
 obj-$(CONFIG_COMMON_CLK)	+= clk-conf.o
 endif
-- 
2.11.0


