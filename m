Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D951DCE79
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E8+52qOd6OYsJA0IAuDUlklFM5FuC3gblo2C3E++JqA=; b=nNz2QKBYJaJHlAyt1l68u5GGf
	BoJTrPmIp1/oLfHRLbQIkMDIZmqNjmWlyI/CZ2KXDl+mY6WscYYIW/bSFXgfj+0cfBHTIV+SKTYGb
	YmfaFg39ulhpr8Cl26FZ/pTAIFCmQflmBnbtYr5WV+qCAFUjhDtyOxtFtyeRXa1xCgJoMyq9C9Pv+
	FTRo45AdsFM9tJeTRzDUKvVkqZ6eJWPkj2jVtqCyCzLxwKIKbxhcVLXdsmc14eYWsQ8UimvH0rl8t
	AfBFRQXIY2hFC8UEjce/Cs3nXBHtYibXjj3QO0U7uzBMUX8OuVQ6cA+q4ZXfPd5DyaZk7JSMiTzld
	xOzUy7qhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblXN-0006Iq-Jf; Thu, 21 May 2020 13:47:05 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblX9-00062R-J5
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:46:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068812; x=1621604812;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=DYM8gsmsf5401LPfJ3nISaTCxi4DqF9mHBAqhJYbMP8=;
 b=F5CGp681oyMlx7S5XveddMO4t4yBAWHIBVYa1iKjmQEKwy8LsumEpelA
 uJJ80FxcqMetlBHaQtzRXNvsMK4pzJHSe/qy5+D9axlKMQffQ44m3vrh8
 iVP0kePUxQU4zt+F69kB9o906GDY1npEO2t6v6jPiCOhPQG6QI2md9toW
 65zl1929DsTE1P6mrqGF8ak3GpOuFLQ3ui+Yp9husaZ/QDcFLZ2TsXxay
 oPuliZ8Pb6AgERl7YNMC+fT0WXQ9ZXJoZIoCFa8oGkVrESzmHYCi45dix
 H5YbjhEw+YmF/m9VsEdzfF+4/OevtvnOiWjCpQ5ye21kE5sfvYqBg1ncx w==;
IronPort-SDR: nABUKPLqPLXCsd5LAbWo49pK847vCeCjIjhQSZ0Sj2rODgPE/VixY1JV9vSCk3B0SMtOo41rrR
 pWBbOunDFIUgCAj9VH4rKVOTAwXJTmp3JLfUm4FSEoKYhwWY6WytiaFMMHQ5qr53bVL3p9ugUg
 XdXRP1XbuDRaizTp3bkPl9e1WB5Xyde/Fgf7PueH0RawBZT3UWMWfiQ6ytQdjdCwGdx5U2iD5q
 chxAryrE5FAMY/zRJlBmdusUefMzjCPd57AMlt54pP2WPM7vvTt7Cuiohv/OQS7gswE2iuRRIN
 Ui0=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="139661597"
Received: from mail-mw2nam12lp2040.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.40])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:46:51 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iKyc/Ubht/FbMjOMANQTiZpaZCc/hrXZfoWTyvHZbzT467EuNavN5Jiq7xC84pO7W0SUXhvih3Xe8grRITGxPMa89aXbtrFBZIYzeX1RNkJNrFGZPPOVmf17zrk69QaGBE5/bzsf3Fmx27RdWi/lhGLVACkrdCXzRLtqH8FBGWuHhXTk/idHOKTaUnXhoP2KRM06NQhHiFq1cIJ9dI7uZnc80HGkgZQl6Diw3TEk6X/tEidvhwelATClz/16+1Ne2IsdW0HgK8TwrW9Co/b4f3k0i6Qx5lSHgtIPe/SkukGjPCYkpITyiZpvPVdUWXLQ0EVv8fDS5mKI5ydlYp5/KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E8+52qOd6OYsJA0IAuDUlklFM5FuC3gblo2C3E++JqA=;
 b=JJT4gg8QCsOYSfaAiItBWa9CPTDoiuMe6QsRtqQS/pb+94c9MpZeJz/oGzR36ldUYpwZyiG7QvEzixPtJHJTel40smK51aKK039qC7YhhapWBL6Mn9WMw/X8FV2p76AGdwSHFaZvq3MZ4B2DKX0uHSfL9aIpn7hXi08lmsc1HQs9lZz9ZihZDoaDzD+Q0zHa60qR0i5iggFjX3uq8E4qmROzhAA6XpB44g0VhMWX/yt8DIDb8yW95pWfFjYSdKyEnz7h+Qpon9G5yZFu1YZbUOJV9aVuipSUEDuG/nbEIszK7dA0aKuaaN2eHuYlii6LKBTGZRAT7v02WMCaiLiUsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E8+52qOd6OYsJA0IAuDUlklFM5FuC3gblo2C3E++JqA=;
 b=n7A8LieF7uYV6zZoSWNsKHxqKvaHYPc8YqEXfNL1LRCbfdmLXCMHZt+PAeneBkYaVmZRLxpJeqdu9OEOdqh4CPat30r3TlVOwo1dqN+HNFPN4VbaWZLl1FhiRsh3a8P4cyiWn68QWKi03cFXsoxOpeo1S/kiTcPoEOoBq/COuYU=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4380.namprd04.prod.outlook.com (2603:10b6:5:a2::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:46:49 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:46:49 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 4/5] clocksource/drivers: Add CLINT timer driver
Date: Thu, 21 May 2020 19:15:43 +0530
Message-Id: <20200521134544.816918-5-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200521134544.816918-1-anup.patel@wdc.com>
References: <20200521134544.816918-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::15) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.30.72) by
 MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:49::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Thu, 21 May 2020 13:46:43 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 82862357-d7e2-40e5-6055-08d7fd8d68df
X-MS-TrafficTypeDiagnostic: DM6PR04MB4380:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB43807A1A7366B688D14F5B5A8DB70@DM6PR04MB4380.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U20jx4Gt4UwtG8LeS/DR2HVxXfDrUooQ9BzvHt0gkKA4wr3/CiN+vaxj0B2/afjlZ05o8UfQBoA++V3wi5fCs6OsuIkMNC+MSEatVrZ4gazR/awRWRqWue1TJbHviT/893kHlXQ4ES8scVePtgnwKwp4IVk8reUhHSTyUdy6u7xMs4I5+qI39fOIo9wE+rWO+QrUqNDi1SbdBGjzyc94OgegcSG3Djwv4ghf3oIio/xTxt7CcXCSBw2ausQrKyYf23q7XFZk0SoLPQfpNj6LBfM9Mb9xvNKTsEyHS30xdIOL6sjp+GIJfuIOWfD3pJlld+IH/VMZ3NwmDoMkz7pZhQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(376002)(396003)(346002)(16526019)(55016002)(86362001)(316002)(26005)(1006002)(52116002)(1076003)(186003)(8886007)(54906003)(478600001)(66476007)(66946007)(55236004)(7696005)(66556008)(5660300002)(110136005)(36756003)(8676002)(2906002)(956004)(2616005)(4326008)(7416002)(8936002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: kp/fSbpqvcS4GQdCTnfKHxbNakaneOOMUw3pWtUOUWkIanrUMbHucIWxrQZX5BT9nBjzkh9N0yQroJLozhCuVLFRQVwm0vFqMqncXg08ox4jttfoHkefhlkxQIcglBXyYoTzlO40W4iunq06d9feL9owO0fltwa/mtFa8vOz86ggSVGZUBCV8clJ4E47HW1xWQqYh8g7XiiF50mUTX7iyw7OK2ixfvA6IP4VvmFylNM2L8yAFrsXHFYdwAOm2Eiluk8PyCRsdDbblECDjD238VgjEVH1eXcgO2USVsOOPuvNIhJe5wJeymH/ApLAuXernsUpJWSbZqpcs/aW+/c4Mv/6d7lPBVUhkvRQDxbBa2R+FZiBM3Pq4astxepVooyhRc6fHNAANWb0KWvU2dfqHHwFPb2coR+6of6p1HG3P6BuCjV1kIRXOv86Y7ICV2rB9rRCQfyTwmBKxQ6ypErDvTHeMi92zfCbQ+lXxIQsORM=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82862357-d7e2-40e5-6055-08d7fd8d68df
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:46:49.0218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DgFLJ+z7PYe595Ts64KuhEycEgXo6y9RYBL/I2ftWTBPpo8WBx0VNA9oVbWp6mVEPw/Zc7Ney8UIw6Df9l2OhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4380
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_064651_846969_9AE32BF9 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.30.72 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The TIME CSR and SBI calls are not available in RISC-V M-mode so we
add CLINT driver for Linux RISC-V M-mode (i.e. RISC-V NoMMU kernel).

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 drivers/clocksource/Kconfig       |  10 ++
 drivers/clocksource/Makefile      |   1 +
 drivers/clocksource/timer-clint.c | 226 ++++++++++++++++++++++++++++++
 include/linux/cpuhotplug.h        |   1 +
 4 files changed, 238 insertions(+)
 create mode 100644 drivers/clocksource/timer-clint.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 21950d9e3e9d..ea97bf0eb09f 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -659,6 +659,16 @@ config RISCV_TIMER
 	  is accessed via both the SBI and the rdcycle instruction.  This is
 	  required for all RISC-V systems.
 
+config CLINT_TIMER
+	bool "Timer for the RISC-V platform"
+	depends on GENERIC_SCHED_CLOCK && RISCV
+	default y
+	select TIMER_PROBE
+	select TIMER_OF
+	help
+	  This option enables the CLINT timer for RISC-V systems. The CLINT
+	  driver is usually used for NoMMU RISC-V systems.
+
 config CSKY_MP_TIMER
 	bool "SMP Timer for the C-SKY platform" if COMPILE_TEST
 	depends on CSKY
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 641ba5383ab5..dca308b5ff98 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -86,6 +86,7 @@ obj-$(CONFIG_CLKSRC_ST_LPC)		+= clksrc_st_lpc.o
 obj-$(CONFIG_X86_NUMACHIP)		+= numachip.o
 obj-$(CONFIG_ATCPIT100_TIMER)		+= timer-atcpit100.o
 obj-$(CONFIG_RISCV_TIMER)		+= timer-riscv.o
+obj-$(CONFIG_CLINT_TIMER)		+= timer-clint.o
 obj-$(CONFIG_CSKY_MP_TIMER)		+= timer-mp-csky.o
 obj-$(CONFIG_GX6605S_TIMER)		+= timer-gx6605s.o
 obj-$(CONFIG_HYPERV_TIMER)		+= hyperv_timer.o
diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
new file mode 100644
index 000000000000..7fc4f145da65
--- /dev/null
+++ b/drivers/clocksource/timer-clint.c
@@ -0,0 +1,226 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ *
+ * Most of the M-mode (i.e. NoMMU) RISC-V systems usually have a
+ * CLINT MMIO timer device.
+ */
+
+#define pr_fmt(fmt) "clint: " fmt
+#include <linux/bitops.h>
+#include <linux/clocksource.h>
+#include <linux/clockchips.h>
+#include <linux/cpu.h>
+#include <linux/delay.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/sched_clock.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
+#include <linux/irqchip/irq-riscv-intc.h>
+#include <linux/interrupt.h>
+#include <linux/of_irq.h>
+#include <linux/smp.h>
+
+#define CLINT_IPI_OFF		0
+#define CLINT_TIME_CMP_OFF	0x4000
+#define CLINT_TIME_VAL_OFF	0xbff8
+
+/* CLINT manages IPI and Timer for RISC-V M-mode  */
+static u32 __iomem *clint_ipi_base;
+static u64 __iomem *clint_time_cmp;
+static u64 __iomem *clint_time_val;
+static unsigned long clint_freq;
+static unsigned int clint_irq;
+
+static void clint_send_ipi(const unsigned long *hart_mask)
+{
+	u32 hartid;
+
+	for_each_set_bit(hartid, hart_mask, NR_CPUS)
+		writel(1, clint_ipi_base + hartid);
+}
+
+static void clint_clear_ipi(void)
+{
+	writel(0, clint_ipi_base + cpuid_to_hartid_map(smp_processor_id()));
+}
+
+static struct riscv_ipi_ops clint_ipi_ops = {
+	.ipi_inject = clint_send_ipi,
+	.ipi_clear = clint_clear_ipi,
+};
+
+#ifdef CONFIG_64BIT
+#define clint_get_cycles()	readq_relaxed(clint_time_val)
+#else
+#define clint_get_cycles()	readl_relaxed(clint_time_val)
+#define clint_get_cycles_hi()	readl_relaxed(((u32 *)clint_time_val) + 1)
+#endif
+
+#ifdef CONFIG_64BIT
+static u64 clint_get_cycles64(void)
+{
+	return clint_get_cycles();
+}
+#else /* CONFIG_64BIT */
+static u64 clint_get_cycles64(void)
+{
+	u32 hi, lo;
+
+	do {
+		hi = clint_get_cycles_hi();
+		lo = clint_get_cycles();
+	} while (hi != clint_get_cycles_hi());
+
+	return ((u64)hi << 32) | lo;
+}
+#endif /* CONFIG_64BIT */
+
+static int clint_clock_next_event(unsigned long delta,
+				   struct clock_event_device *ce)
+{
+	void __iomem *r = clint_time_cmp +
+			  cpuid_to_hartid_map(smp_processor_id());
+
+	csr_set(CSR_IE, IE_TIE);
+	writeq_relaxed(clint_get_cycles64() + delta, r);
+	return 0;
+}
+
+static DEFINE_PER_CPU(struct clock_event_device, clint_clock_event) = {
+	.name			= "clint_clockevent",
+	.features		= CLOCK_EVT_FEAT_ONESHOT,
+	.rating		= 100,
+	.set_next_event	= clint_clock_next_event,
+};
+
+static u64 clint_rdtime(struct clocksource *cs)
+{
+	return readq_relaxed(clint_time_val);
+}
+
+static u64 notrace clint_sched_clock(void)
+{
+	return readq_relaxed(clint_time_val);
+}
+
+static struct clocksource clint_clocksource = {
+	.name		= "clint_clocksource",
+	.rating	= 300,
+	.mask		= CLOCKSOURCE_MASK(64),
+	.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
+	.read		= clint_rdtime,
+};
+
+static int clint_timer_starting_cpu(unsigned int cpu)
+{
+	struct clock_event_device *ce = per_cpu_ptr(&clint_clock_event, cpu);
+
+	ce->cpumask = cpumask_of(cpu);
+	clockevents_config_and_register(ce, clint_freq, 200, ULONG_MAX);
+
+	enable_percpu_irq(clint_irq, irq_get_trigger_type(clint_irq));
+	return 0;
+}
+
+static int clint_timer_dying_cpu(unsigned int cpu)
+{
+	disable_percpu_irq(clint_irq);
+	return 0;
+}
+
+static irqreturn_t clint_timer_interrupt(int irq, void *dev_id)
+{
+	struct clock_event_device *evdev = this_cpu_ptr(&clint_clock_event);
+
+	csr_clear(CSR_IE, IE_TIE);
+	evdev->event_handler(evdev);
+
+	return IRQ_HANDLED;
+}
+
+static int __init clint_timer_init_dt(struct device_node *np)
+{
+	int rc;
+	u32 i, nr_irqs;
+	void __iomem *base;
+	struct of_phandle_args oirq;
+
+	/*
+	 * Ensure that CLINT device interrupts are either RV_IRQ_TIMER or
+	 * RV_IRQ_SOFT. If it's anything else then we ignore the device.
+	 */
+	nr_irqs = of_irq_count(np);
+	for (i = 0; i < nr_irqs; i++) {
+		if (of_irq_parse_one(np, i, &oirq)) {
+			pr_err("%pOFP: failed to parse irq %d.\n", np, i);
+			continue;
+		}
+
+		if ((oirq.args_count != 1) ||
+		    (oirq.args[0] != RV_IRQ_TIMER &&
+		     oirq.args[0] != RV_IRQ_SOFT)) {
+			pr_info("%pOFP: invalid irq %d (hwirq %d)\n",
+				np, i, oirq.args[0]);
+			return 0;
+		}
+	}
+
+	oirq.np = riscv_of_intc_domain_node();
+	oirq.args_count = 1;
+	oirq.args[0] = RV_IRQ_TIMER;
+	clint_irq = irq_create_of_mapping(&oirq);
+	if (!clint_irq) {
+		pr_err("%pOFP: could not map hwirq %d\n", np, RV_IRQ_TIMER);
+		return -ENODEV;
+	}
+
+	base = of_iomap(np, 0);
+	if (!base) {
+		pr_err("%pOFP: could not map registers\n", np);
+		return -ENODEV;
+	}
+
+	clint_ipi_base = base + CLINT_IPI_OFF;
+	clint_time_cmp = base + CLINT_TIME_CMP_OFF;
+	clint_time_val = base + CLINT_TIME_VAL_OFF;
+	clint_freq = riscv_timebase;
+
+	pr_info("%pOFP: timer running at %ld Hz\n", np, clint_freq);
+
+	rc = clocksource_register_hz(&clint_clocksource, clint_freq);
+	if (rc) {
+		iounmap(base);
+		pr_err("%pOFP: clocksource register failed [%d]\n", np, rc);
+		return rc;
+	}
+
+	sched_clock_register(clint_sched_clock, 64, clint_freq);
+
+	rc = request_percpu_irq(clint_irq, clint_timer_interrupt,
+				 "clint-timer", &clint_clock_event);
+	if (rc) {
+		iounmap(base);
+		pr_err("registering percpu irq failed [%d]\n", rc);
+		return rc;
+	}
+
+	rc = cpuhp_setup_state(CPUHP_AP_CLINT_TIMER_STARTING,
+				"clockevents/clint/timer:starting",
+				clint_timer_starting_cpu,
+				clint_timer_dying_cpu);
+	if (rc) {
+		free_irq(clint_irq, &clint_clock_event);
+		iounmap(base);
+		pr_err("%pOFP: cpuhp setup state failed [%d]\n", np, rc);
+		return rc;
+	}
+
+	riscv_set_ipi_ops(&clint_ipi_ops);
+	clint_clear_ipi();
+
+	return 0;
+}
+
+TIMER_OF_DECLARE(clint_timer, "riscv,clint0", clint_timer_init_dt);
+TIMER_OF_DECLARE(clint_timer1, "sifive,clint-1.0.0", clint_timer_init_dt);
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index 57b1f8f777d9..52552492c2f2 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -132,6 +132,7 @@ enum cpuhp_state {
 	CPUHP_AP_MIPS_GIC_TIMER_STARTING,
 	CPUHP_AP_ARC_TIMER_STARTING,
 	CPUHP_AP_RISCV_TIMER_STARTING,
+	CPUHP_AP_CLINT_TIMER_STARTING,
 	CPUHP_AP_CSKY_TIMER_STARTING,
 	CPUHP_AP_HYPERV_TIMER_STARTING,
 	CPUHP_AP_KVM_STARTING,
-- 
2.25.1


