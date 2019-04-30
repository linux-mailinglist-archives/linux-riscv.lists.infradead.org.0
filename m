Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 632571012A
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 22:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fX0Hg2uGGWL2SuLvIAjaSZihIfJZCC63IkinLu/PtKE=; b=pDxkNyGsUjpsHy
	ZvGqhNjS1uLpinFm11XQmZKJMzwAiStWtX0MN1F7k5PTVxcrXV2NyWkBRBto1HXXCLGyHYsKFrz+w
	6h2GV1AgqIWIrdnZnlppxYujxk5/l/EVuwhDgQ8Kj4p5fb48LlevElp5pIbks/ilBQj7P2TVj9jby
	7MpQNSqeVCTIJdgYwVrJdieAODaZrnM1RF7S5Z4M4Q50+bTD49K7mh20kCZfbz/fQJnsPS7dTCLqA
	rwrS1o0pqGkSWqPNTgo9aR+KQKzhlv6JVV6UPqn8TDa9L3zQy0rCKt3wHrLV0cp3PTVseV0FuFCxP
	zaZLU5mqgCQvyFwMMDEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZkL-00033e-Qd; Tue, 30 Apr 2019 20:53:01 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZkH-000339-SL
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 20:53:00 +0000
Received: by mail-io1-xd41.google.com with SMTP id c3so13457466iok.6
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 13:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B9Hy4a3RdFFuMwUjDgJCES1xofNbW+S9XHm8kSlhoIY=;
 b=nKAzQWt/Dm7BDoqVSzCW6ER0QxoGozX/5hWMqUITzS8gkK631guRv5PDU+ukrkQJ/i
 u4xNf391YmRIVfWXdvGpdoRWtkoVkF3ie5vi+v/jjTifuWFUUgeOz9bdG6sbd/3euQB/
 lofloEUrZHRB6nV8RVkEf15V1MQdFNbPapOZKDPIpvzGvZuYDBN2S1EHTYLXw6/TS0YA
 z8X0zQTTrIHZXG/VdYsl5itBnAosnmB22MWqYHSAZhIcjCd23RbnalIJuMF5jRhXeDOC
 AxJA5foMPq8fdFem9p/fAi+ICWbDp8+OlxY4gNpbZxpn2dd5Q96M7oF6wmW2TD4Icylj
 2+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B9Hy4a3RdFFuMwUjDgJCES1xofNbW+S9XHm8kSlhoIY=;
 b=Aeuq9KdAjEmCVzkb+nVGeKiUtjkVyvrU6mhTDOfIaZwh2M7P3Bdii96TTqmcH6F5vn
 zYfbP1tUV1h4A40BLkuy0+DKKHd0BeEWX8Umkp5eE3BuGEDKRyzP/b8CykhgOnuAoZTc
 5MmGLRn+T0DVxXb/yrCG+LNHZw4WafHCY7AgsSru3oyaLH+E2bKr2PLEjaQoNE/rhBn8
 ZKMi1V8wOvNSlxjON7+rQcE61LTCyf+WWwpvnUR6AzvYdNkdkBR7dkM1Bg/oLCx1Y23K
 zIpie6X2WQgNHNYgIaRsWQTeCMTKG6pGeG8oEoNzmb3LSC/+DmNMEojqtbO1CIobnoPl
 sufQ==
X-Gm-Message-State: APjAAAXIaltQ5bmXCn7RPrLArz+2bZ01/7cr1jmMU0MHtajhztxFlW+J
 V6Yu5EaHhjesWqZ3aHfPrbNIgg==
X-Google-Smtp-Source: APXvYqw21PFL7bKGctDLLMf5VFRBFsKHaSouywD+5bTb5vBDhNA3808DbZGeJ6vhwqo9AlOAZCjFDA==
X-Received: by 2002:a6b:2c92:: with SMTP id
 s140mr29754469ios.114.1556657576702; 
 Tue, 30 Apr 2019 13:52:56 -0700 (PDT)
Received: from viisi.lan (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 v134sm1998052ita.16.2019.04.30.13.52.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 13:52:55 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: sboyd@kernel.org,
	mturquette@baylibre.com
Subject: [PATCH v4 1/2] clk: analogbits: add Wide-Range PLL library
Date: Tue, 30 Apr 2019 13:50:58 -0700
Message-Id: <20190430205055.25673-2-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430205055.25673-1-paul.walmsley@sifive.com>
References: <20190430205055.25673-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_135257_926594_51C5CBC0 
X-CRM114-Status: GOOD (  23.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Walmsley <paul@pwsan.com>, Wesley Terpstra <wesley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Megan Wachs <megan@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add common library code for the Analog Bits Wide-Range PLL (WRPLL) IP
block, as implemented in TSMC CLN28HPC.

There is no bus interface or register target associated with this PLL.
This library is intended to be used by drivers for IP blocks that
expose registers connected to the PLL configuration and status
signals.

Based on code originally written by Wesley Terpstra
<wesley@sifive.com>:
https://github.com/riscv/riscv-linux/commit/999529edf517ed75b56659d456d221b2ee56bb60

This version incorporates several changes requested by Stephen
Boyd <sboyd@kernel.org>.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Cc: Wesley Terpstra <wesley@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Megan Wachs <megan@sifive.com>
Cc: linux-clk@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 MAINTAINERS                                   |   6 +
 drivers/clk/Kconfig                           |   2 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/analogbits/Kconfig                |   2 +
 drivers/clk/analogbits/Makefile               |   3 +
 drivers/clk/analogbits/wrpll-cln28hpc.c       | 364 ++++++++++++++++++
 include/linux/clk/analogbits-wrpll-cln28hpc.h |  79 ++++
 7 files changed, 457 insertions(+)
 create mode 100644 drivers/clk/analogbits/Kconfig
 create mode 100644 drivers/clk/analogbits/Makefile
 create mode 100644 drivers/clk/analogbits/wrpll-cln28hpc.c
 create mode 100644 include/linux/clk/analogbits-wrpll-cln28hpc.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 5c38f21aee78..a8abcc960839 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -960,6 +960,12 @@ F:	drivers/iio/adc/ltc2497*
 X:	drivers/iio/*/adjd*
 F:	drivers/staging/iio/*/ad*
 
+ANALOGBITS PLL LIBRARIES
+M:	Paul Walmsley <paul.walmsley@sifive.com>
+S:	Supported
+F:	drivers/clk/analogbits/*
+F:	include/linux/clk/analogbits*
+
 ANDES ARCHITECTURE
 M:	Greentime Hu <green.hu@gmail.com>
 M:	Vincent Chen <deanbo422@gmail.com>
diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index e705aab9e38b..8a0e77f791ab 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 
 config CLKDEV_LOOKUP
 	bool
@@ -297,6 +298,7 @@ config COMMON_CLK_FIXED_MMIO
 	  Support for Memory Mapped IO Fixed clocks
 
 source "drivers/clk/actions/Kconfig"
+source "drivers/clk/analogbits/Kconfig"
 source "drivers/clk/bcm/Kconfig"
 source "drivers/clk/hisilicon/Kconfig"
 source "drivers/clk/imgtec/Kconfig"
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 1db133652f0c..091ee1d8af65 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -64,6 +64,7 @@ obj-$(CONFIG_COMMON_CLK_XGENE)		+= clk-xgene.o
 
 # please keep this section sorted lexicographically by directory path name
 obj-y					+= actions/
+obj-y					+= analogbits/
 obj-$(CONFIG_COMMON_CLK_AT91)		+= at91/
 obj-$(CONFIG_ARCH_ARTPEC)		+= axis/
 obj-$(CONFIG_ARC_PLAT_AXS10X)		+= axs10x/
diff --git a/drivers/clk/analogbits/Kconfig b/drivers/clk/analogbits/Kconfig
new file mode 100644
index 000000000000..b5fd60c7f136
--- /dev/null
+++ b/drivers/clk/analogbits/Kconfig
@@ -0,0 +1,2 @@
+config CLK_ANALOGBITS_WRPLL_CLN28HPC
+	bool
diff --git a/drivers/clk/analogbits/Makefile b/drivers/clk/analogbits/Makefile
new file mode 100644
index 000000000000..bf017447451e
--- /dev/null
+++ b/drivers/clk/analogbits/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_CLK_ANALOGBITS_WRPLL_CLN28HPC)	+= wrpll-cln28hpc.o
diff --git a/drivers/clk/analogbits/wrpll-cln28hpc.c b/drivers/clk/analogbits/wrpll-cln28hpc.c
new file mode 100644
index 000000000000..1fbee63f0305
--- /dev/null
+++ b/drivers/clk/analogbits/wrpll-cln28hpc.c
@@ -0,0 +1,364 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018-2019 SiFive, Inc.
+ * Wesley Terpstra
+ * Paul Walmsley
+ *
+ * This library supports configuration parsing and reprogramming of
+ * the CLN28HPC variant of the Analog Bits Wide Range PLL.  The
+ * intention is for this library to be reusable for any device that
+ * integrates this PLL; thus the register structure and programming
+ * details are expected to be provided by a separate IP block driver.
+ *
+ * The bulk of this code is primarily useful for clock configurations
+ * that must operate at arbitrary rates, as opposed to clock configurations
+ * that are restricted by software or manufacturer guidance to a small,
+ * pre-determined set of performance points.
+ *
+ * References:
+ * - Analog Bits "Wide Range PLL Datasheet", version 2015.10.01
+ * - SiFive FU540-C000 Manual v1p0, Chapter 7 "Clocking and Reset"
+ *   https://static.dev.sifive.com/FU540-C000-v1.0.pdf
+ */
+
+#include <linux/bug.h>
+#include <linux/err.h>
+#include <linux/log2.h>
+#include <linux/math64.h>
+#include <linux/clk/analogbits-wrpll-cln28hpc.h>
+
+/* MIN_INPUT_FREQ: minimum input clock frequency, in Hz (Fref_min) */
+#define MIN_INPUT_FREQ			7000000
+
+/* MAX_INPUT_FREQ: maximum input clock frequency, in Hz (Fref_max) */
+#define MAX_INPUT_FREQ			600000000
+
+/* MIN_POST_DIVIDE_REF_FREQ: minimum post-divider reference frequency, in Hz */
+#define MIN_POST_DIVR_FREQ		7000000
+
+/* MAX_POST_DIVIDE_REF_FREQ: maximum post-divider reference frequency, in Hz */
+#define MAX_POST_DIVR_FREQ		200000000
+
+/* MIN_VCO_FREQ: minimum VCO frequency, in Hz (Fvco_min) */
+#define MIN_VCO_FREQ			2400000000UL
+
+/* MAX_VCO_FREQ: maximum VCO frequency, in Hz (Fvco_max) */
+#define MAX_VCO_FREQ			4800000000ULL
+
+/* MAX_DIVQ_DIVISOR: maximum output divisor.  Selected by DIVQ = 6 */
+#define MAX_DIVQ_DIVISOR		64
+
+/* MAX_DIVR_DIVISOR: maximum reference divisor.  Selected by DIVR = 63 */
+#define MAX_DIVR_DIVISOR		64
+
+/* MAX_LOCK_US: maximum PLL lock time, in microseconds (tLOCK_max) */
+#define MAX_LOCK_US			70
+
+/*
+ * ROUND_SHIFT: number of bits to shift to avoid precision loss in the rounding
+ *              algorithm
+ */
+#define ROUND_SHIFT			20
+
+/*
+ * Private functions
+ */
+
+/**
+ * __wrpll_calc_filter_range() - determine PLL loop filter bandwidth
+ * @post_divr_freq: input clock rate after the R divider
+ *
+ * Select the value to be presented to the PLL RANGE input signals, based
+ * on the input clock frequency after the post-R-divider @post_divr_freq.
+ * This code follows the recommendations in the PLL datasheet for filter
+ * range selection.
+ *
+ * Return: The RANGE value to be presented to the PLL configuration inputs,
+ *         or a negative return code upon error.
+ */
+static int __wrpll_calc_filter_range(unsigned long post_divr_freq)
+{
+	if (post_divr_freq < MIN_POST_DIVR_FREQ ||
+	    post_divr_freq > MAX_POST_DIVR_FREQ) {
+		WARN(1, "%s: post-divider reference freq out of range: %lu",
+		     __func__, post_divr_freq);
+		return -ERANGE;
+	}
+
+	switch (post_divr_freq) {
+	case 0 ... 10999999:
+		return 1;
+	case 11000000 ... 17999999:
+		return 2;
+	case 18000000 ... 29999999:
+		return 3;
+	case 30000000 ... 49999999:
+		return 4;
+	case 50000000 ... 79999999:
+		return 5;
+	case 80000000 ... 129999999:
+		return 6;
+	}
+
+	return 7;
+}
+
+/**
+ * __wrpll_calc_fbdiv() - return feedback fixed divide value
+ * @c: ptr to a struct wrpll_cfg record to read from
+ *
+ * The internal feedback path includes a fixed by-two divider; the
+ * external feedback path does not.  Return the appropriate divider
+ * value (2 or 1) depending on whether internal or external feedback
+ * is enabled.  This code doesn't test for invalid configurations
+ * (e.g. both or neither of WRPLL_FLAGS_*_FEEDBACK are set); it relies
+ * on the caller to do so.
+ *
+ * Context: Any context.  Caller must protect the memory pointed to by
+ *          @c from simultaneous modification.
+ *
+ * Return: 2 if internal feedback is enabled or 1 if external feedback
+ *         is enabled.
+ */
+static u8 __wrpll_calc_fbdiv(struct wrpll_cfg * const c)
+{
+	return (c->flags & WRPLL_FLAGS_INT_FEEDBACK_MASK) ? 2 : 1;
+}
+
+/**
+ * __wrpll_calc_divq() - determine DIVQ based on target PLL output clock rate
+ * @target_rate: target PLL output clock rate
+ * @vco_rate: pointer to a u64 to store the computed VCO rate into
+ *
+ * Determine a reasonable value for the PLL Q post-divider, based on the
+ * target output rate @target_rate for the PLL.  Along with returning the
+ * computed Q divider value as the return value, this function stores the
+ * desired target VCO rate into the variable pointed to by @vco_rate.
+ *
+ * Context: Any context.  Caller must protect the memory pointed to by
+ *          @vco_rate from simultaneous access or modification.
+ *
+ * Return: a positive integer DIVQ value to be programmed into the hardware
+ *         upon success, or 0 upon error (since 0 is an invalid DIVQ value)
+ */
+static u8 __wrpll_calc_divq(u32 target_rate, u64 *vco_rate)
+{
+	u64 s;
+	u8 divq = 0;
+
+	if (!vco_rate) {
+		WARN_ON(1);
+		goto wcd_out;
+	}
+
+	s = div_u64(MAX_VCO_FREQ, target_rate);
+	if (s <= 1) {
+		divq = 1;
+		*vco_rate = MAX_VCO_FREQ;
+	} else if (s > MAX_DIVQ_DIVISOR) {
+		divq = ilog2(MAX_DIVQ_DIVISOR);
+		*vco_rate = MIN_VCO_FREQ;
+	} else {
+		divq = ilog2(s);
+		*vco_rate = (u64)target_rate << divq;
+	}
+
+wcd_out:
+	return divq;
+}
+
+/**
+ * __wrpll_update_parent_rate() - update PLL data when parent rate changes
+ * @c: ptr to a struct wrpll_cfg record to write PLL data to
+ * @parent_rate: PLL input refclk rate (pre-R-divider)
+ *
+ * Pre-compute some data used by the PLL configuration algorithm when
+ * the PLL's reference clock rate changes.  The intention is to avoid
+ * computation when the parent rate remains constant - expected to be
+ * the common case.
+ *
+ * Returns: 0 upon success or -ERANGE if the reference clock rate is
+ * out of range.
+ */
+static int __wrpll_update_parent_rate(struct wrpll_cfg *c,
+				      unsigned long parent_rate)
+{
+	u8 max_r_for_parent;
+
+	if (parent_rate > MAX_INPUT_FREQ || parent_rate < MIN_POST_DIVR_FREQ)
+		return -ERANGE;
+
+	c->parent_rate = parent_rate;
+	max_r_for_parent = div_u64(parent_rate, MIN_POST_DIVR_FREQ);
+	c->max_r = min_t(u8, MAX_DIVR_DIVISOR, max_r_for_parent);
+
+	c->init_r = DIV_ROUND_UP_ULL(parent_rate, MAX_POST_DIVR_FREQ);
+
+	return 0;
+}
+
+/**
+ * wrpll_configure() - compute PLL configuration for a target rate
+ * @c: ptr to a struct wrpll_cfg record to write into
+ * @target_rate: target PLL output clock rate (post-Q-divider)
+ * @parent_rate: PLL input refclk rate (pre-R-divider)
+ *
+ * Compute the appropriate PLL signal configuration values and store
+ * in PLL context @c.  PLL reprogramming is not glitchless, so the
+ * caller should switch any downstream logic to a different clock
+ * source or clock-gate it before presenting these values to the PLL
+ * configuration signals.
+ *
+ * The caller must pass this function a pre-initialized struct
+ * wrpll_cfg record: either initialized to zero (with the
+ * exception of the .name and .flags fields) or read from the PLL.
+ *
+ * Context: Any context.  Caller must protect the memory pointed to by @c
+ *          from simultaneous access or modification.
+ *
+ * Return: 0 upon success; anything else upon failure.
+ */
+int wrpll_configure_for_rate(struct wrpll_cfg *c, u32 target_rate,
+			     unsigned long parent_rate)
+{
+	unsigned long ratio;
+	u64 target_vco_rate, delta, best_delta, f_pre_div, vco, vco_pre;
+	u32 best_f, f, post_divr_freq;
+	u8 fbdiv, divq, best_r, r;
+	int range;
+
+	if (c->flags == 0) {
+		WARN(1, "%s called with uninitialized PLL config", __func__);
+		return -EINVAL;
+	}
+
+	/* Initialize rounding data if it hasn't been initialized already */
+	if (parent_rate != c->parent_rate) {
+		if (__wrpll_update_parent_rate(c, parent_rate)) {
+			pr_err("%s: PLL input rate is out of range\n",
+			       __func__);
+			return -ERANGE;
+		}
+	}
+
+	c->flags &= ~WRPLL_FLAGS_RESET_MASK;
+
+	/* Put the PLL into bypass if the user requests the parent clock rate */
+	if (target_rate == parent_rate) {
+		c->flags |= WRPLL_FLAGS_BYPASS_MASK;
+		return 0;
+	}
+
+	c->flags &= ~WRPLL_FLAGS_BYPASS_MASK;
+
+	/* Calculate the Q shift and target VCO rate */
+	divq = __wrpll_calc_divq(target_rate, &target_vco_rate);
+	if (!divq)
+		return -1;
+	c->divq = divq;
+
+	/* Precalculate the pre-Q divider target ratio */
+	ratio = div64_u64((target_vco_rate << ROUND_SHIFT), parent_rate);
+
+	fbdiv = __wrpll_calc_fbdiv(c);
+	best_r = 0;
+	best_f = 0;
+	best_delta = MAX_VCO_FREQ;
+
+	/*
+	 * Consider all values for R which land within
+	 * [MIN_POST_DIVR_FREQ, MAX_POST_DIVR_FREQ]; prefer smaller R
+	 */
+	for (r = c->init_r; r <= c->max_r; ++r) {
+		f_pre_div = ratio * r;
+		f = (f_pre_div + (1 << ROUND_SHIFT)) >> ROUND_SHIFT;
+		f >>= (fbdiv - 1);
+
+		post_divr_freq = div_u64(parent_rate, r);
+		vco_pre = fbdiv * post_divr_freq;
+		vco = vco_pre * f;
+
+		/* Ensure rounding didn't take us out of range */
+		if (vco > target_vco_rate) {
+			--f;
+			vco = vco_pre * f;
+		} else if (vco < MIN_VCO_FREQ) {
+			++f;
+			vco = vco_pre * f;
+		}
+
+		delta = abs(target_rate - vco);
+		if (delta < best_delta) {
+			best_delta = delta;
+			best_r = r;
+			best_f = f;
+		}
+	}
+
+	c->divr = best_r - 1;
+	c->divf = best_f - 1;
+
+	post_divr_freq = div_u64(parent_rate, best_r);
+
+	/* Pick the best PLL jitter filter */
+	range = __wrpll_calc_filter_range(post_divr_freq);
+	if (range < 0)
+		return range;
+	c->range = range;
+
+	return 0;
+}
+
+/**
+ * wrpll_calc_output_rate() - calculate the PLL's target output rate
+ * @c: ptr to a struct wrpll_cfg record to read from
+ * @parent_rate: PLL refclk rate
+ *
+ * Given a pointer to the PLL's current input configuration @c and the
+ * PLL's input reference clock rate @parent_rate (before the R
+ * pre-divider), calculate the PLL's output clock rate (after the Q
+ * post-divider).
+ *
+ * Context: Any context.  Caller must protect the memory pointed to by @c
+ *          from simultaneous modification.
+ *
+ * Return: the PLL's output clock rate, in Hz.  The return value from
+ *         this function is intended to be convenient to pass directly
+ *         to the Linux clock framework; thus there is no explicit
+ *         error return value.
+ */
+unsigned long wrpll_calc_output_rate(struct wrpll_cfg * const c,
+				     unsigned long parent_rate)
+{
+	u8 fbdiv;
+	u64 n;
+
+	if (c->flags & WRPLL_FLAGS_EXT_FEEDBACK_MASK) {
+		WARN(1, "external feedback mode not yet supported");
+		return ULONG_MAX;
+	}
+
+	fbdiv = __wrpll_calc_fbdiv(c);
+	n = parent_rate * fbdiv * (c->divf + 1);
+	n = div_u64(n, c->divr + 1);
+	n >>= c->divq;
+
+	return n;
+}
+
+/**
+ * wrpll_calc_max_lock_us() - return the time for the PLL to lock
+ * @c: ptr to a struct wrpll_cfg record to read from
+ *
+ * Return the minimum amount of time (in microseconds) that the caller
+ * must wait after reprogramming the PLL to ensure that it is locked
+ * to the input frequency and stable.  This is likely to depend on the DIVR
+ * value; this is under discussion with the manufacturer.
+ *
+ * Return: the minimum amount of time the caller must wait for the PLL
+ *         to lock (in microseconds)
+ */
+unsigned int wrpll_calc_max_lock_us(struct wrpll_cfg * const c)
+{
+	return MAX_LOCK_US;
+}
diff --git a/include/linux/clk/analogbits-wrpll-cln28hpc.h b/include/linux/clk/analogbits-wrpll-cln28hpc.h
new file mode 100644
index 000000000000..1c1b4f5caf6d
--- /dev/null
+++ b/include/linux/clk/analogbits-wrpll-cln28hpc.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2018-2019 SiFive, Inc.
+ * Wesley Terpstra
+ * Paul Walmsley
+ */
+
+#ifndef __LINUX_CLK_ANALOGBITS_WRPLL_CLN28HPC_H
+#define __LINUX_CLK_ANALOGBITS_WRPLL_CLN28HPC_H
+
+#include <linux/types.h>
+
+/* DIVQ_VALUES: number of valid DIVQ values */
+#define DIVQ_VALUES				6
+
+/*
+ * Bit definitions for struct wrpll_cfg.flags
+ *
+ * WRPLL_FLAGS_BYPASS_FLAG: if set, the PLL is either in bypass, or should be
+ *	programmed to enter bypass
+ * WRPLL_FLAGS_RESET_FLAG: if set, the PLL is in reset
+ * WRPLL_FLAGS_INT_FEEDBACK_FLAG: if set, the PLL is configured for internal
+ *	feedback mode
+ * WRPLL_FLAGS_EXT_FEEDBACK_FLAG: if set, the PLL is configured for external
+ *	feedback mode (not yet supported by this driver)
+ */
+#define WRPLL_FLAGS_BYPASS_SHIFT		0
+#define WRPLL_FLAGS_BYPASS_MASK		BIT(WRPLL_FLAGS_BYPASS_SHIFT)
+#define WRPLL_FLAGS_RESET_SHIFT		1
+#define WRPLL_FLAGS_RESET_MASK		BIT(WRPLL_FLAGS_RESET_SHIFT)
+#define WRPLL_FLAGS_INT_FEEDBACK_SHIFT	2
+#define WRPLL_FLAGS_INT_FEEDBACK_MASK	BIT(WRPLL_FLAGS_INT_FEEDBACK_SHIFT)
+#define WRPLL_FLAGS_EXT_FEEDBACK_SHIFT	3
+#define WRPLL_FLAGS_EXT_FEEDBACK_MASK	BIT(WRPLL_FLAGS_EXT_FEEDBACK_SHIFT)
+
+/**
+ * struct wrpll_cfg - WRPLL configuration values
+ * @divr: reference divider value (6 bits), as presented to the PLL signals
+ * @divf: feedback divider value (9 bits), as presented to the PLL signals
+ * @divq: output divider value (3 bits), as presented to the PLL signals
+ * @flags: PLL configuration flags.  See above for more information
+ * @range: PLL loop filter range.  See below for more information
+ * @output_rate_cache: cached output rates, swept across DIVQ
+ * @parent_rate: PLL refclk rate for which values are valid
+ * @max_r: maximum possible R divider value, given @parent_rate
+ * @init_r: initial R divider value to start the search from
+ *
+ * @divr, @divq, @divq, @range represent what the PLL expects to see
+ * on its input signals.  Thus @divr and @divf are the actual divisors
+ * minus one.  @divq is a power-of-two divider; for example, 1 =
+ * divide-by-2 and 6 = divide-by-64.  0 is an invalid @divq value.
+ *
+ * When initially passing a struct wrpll_cfg record, the
+ * record should be zero-initialized with the exception of the @flags
+ * field.  The only flag bits that need to be set are either
+ * WRPLL_FLAGS_INT_FEEDBACK or WRPLL_FLAGS_EXT_FEEDBACK.
+ */
+struct wrpll_cfg {
+	u8 divr;
+	u8 divq;
+	u8 range;
+	u8 flags;
+	u16 divf;
+/* private: */
+	u32 output_rate_cache[DIVQ_VALUES];
+	unsigned long parent_rate;
+	u8 max_r;
+	u8 init_r;
+};
+
+int wrpll_configure_for_rate(struct wrpll_cfg *c, u32 target_rate,
+			     unsigned long parent_rate);
+
+unsigned int wrpll_calc_max_lock_us(struct wrpll_cfg *c);
+
+unsigned long wrpll_calc_output_rate(struct wrpll_cfg *c,
+				     unsigned long parent_rate);
+
+#endif /* __LINUX_CLK_ANALOGBITS_WRPLL_CLN28HPC_H */
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
