Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C203F80466
	for <lists+linux-riscv@lfdr.de>; Sat,  3 Aug 2019 06:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsfKPTfwge7jhJN091T3vnUhr559l8VME9gyZgMbzmA=; b=bgK0tWfukylZcl
	nQ8rORb8nXB1DiCLtzYgGHTF6mFv8m88ua3HDtakgh/FUsq5TjGOr7UTK9mdXf927zCraXXsXWTwK
	VoXnpEQ7tzsqVSGq2zz3b9c9kCUNpyMGH0tQjDKc+9UP3/iAHwNTzmSqchWM+zvMnGjh9y7uTp6fz
	SNbAk4lIQib/v8489fCPJR5G1B/mkN5QjeGXyOlM3+7qgqoQKCUYErnrp+h21ZqQVsJtBA3NiHSSW
	N1wCvZkrIhL8GlOpqYfKGqZ3OW0EhJploTIvfkxDAknV6uVZA/x0/kOToFzRW/xwYLvIoU4Kbb3Cr
	j+EppLZgyPLVePtk8NiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htldn-0001iN-5U; Sat, 03 Aug 2019 04:27:35 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htldi-0001fT-8k
 for linux-riscv@lists.infradead.org; Sat, 03 Aug 2019 04:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564806450; x=1596342450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w14oJ81u6w2W34wdULaaio4UuiCV/eOoDOsEOvwCQng=;
 b=PlE2sf3Onri3M0uYEpDd67Ul0A9zNGJ0j3HiJOUiKKwBmVtqk9Fe8Iga
 UD+mz+hCGGqR9pxWYugyomFFkwc6Io3/Uir5wYCnj03CtmEvwo3LYZ12Z
 pVKhAdacos43LdC9KcBnAyjrLQN0NvCCRBQRUzTU7OKFbi8Jf0pwolIjA
 MiUHXbvO7kBAkfXZcJq1CIKqAliB26OAuDB1h4U36jORFtouHO1FDb8NW
 oaz9cH0g3ITeodUymmT0lG41zb0B/GjWjqRzdDmAEX7ayEMBhFHuJ75tT
 Jf/9z/BmFXpShZhAAobCL01avbRHJTb9NvrjDNFpyber3arpO3SeFSHrF g==;
IronPort-SDR: 5QbQH0w0sP/h1TOfSQch/vCzR7dhp0Tey/jUtSWv7Hco1VNHSw+3Sa9EPmPJC7zv624yjLWzXG
 UJvxym9G+c6wLVbW/dfCagcZ4DJkkc6KS815lnbvnT4xAkd62CebK3Q4i78WfmR/d1MKn0Gxxy
 C7oQnN9wX4LPhEhJRPbYDveoVvPa7qDLtymaQPpXCMTknLWrnMYPlSMd6qhG/BdSdN6crg54WZ
 iG6shPZIJyCyda1gJ7Wq+QBB+RuIf/l6FOX+w3qjaoiQGi7LOCVY2DDHcPV65vUjs7SEXA5uL2
 MJM=
X-IronPort-AV: E=Sophos;i="5.64,340,1559491200"; d="scan'208";a="119512912"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 03 Aug 2019 12:27:24 +0800
IronPort-SDR: JCy8O7VsZNFsUNrj6vhWm/lUshiYakx9dbvzPfKYq63H07ro/bDWMWjO4oeL3+SpjBF1zAP7T2
 qvmY63m5PhVskHYMkCQ+J/MpmzrOCfmGXnrOMhb9UypvPCo8syQDNTxEalC5lAzTJ1P7CdvRMK
 XmTERXhDDPL8JECZTFmCxxRAA2CqzlMCpzjfVr0/14XLjmyzwo7oCRBqKfUER8jXHRFllg0ePX
 kaLCL7W/WUYUPNr4Vxx4jTx6uSCOsLZwoEfcGMiT1zpeful0bahQ7GbJGbCWrLDl5oo0sc5YZh
 UDJj3A0xrFm4xbimxMYUfWd/
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 21:25:19 -0700
IronPort-SDR: EV3f/F8qxlIo9igWSYgtFHn6XxX3ySMuuexxzaM4Yu0/BwkXYIf0EXQa8FJRTxMZ69F3KbJ2G5
 CMXdctZnNrCIGAk1KMNOfxGra4Hg7xLqElkQLojhEil4USPW8gvAKAqypu3gvmQz3Owq4v4YB/
 9JFJqui0O20wOwyVGJEY2SX1LA2DqI7wB/rNrs49TlslpT6qzjwAoek7bgLHYSq+2sI1qTkAvM
 l/9gSfipVdVCVkLcNjLVVHF9TGlbKqwJJO6RPYxguiovwlAnqfJt837WDOOVu3ncs62uVG0qpa
 JbI=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 02 Aug 2019 21:27:25 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] RISC-V: Remove per cpu clocksource
Date: Fri,  2 Aug 2019 21:27:20 -0700
Message-Id: <20190803042723.7163-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190803042723.7163-1-atish.patra@wdc.com>
References: <20190803042723.7163-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_212730_422351_13509977 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There is only one clocksource in RISC-V. The boot cpu initializes
that clocksource. No need to keep a percpu data structure.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 drivers/clocksource/timer-riscv.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 5e6038fbf115..09e031176bc6 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -55,7 +55,7 @@ static u64 riscv_sched_clock(void)
 	return get_cycles64();
 }
 
-static DEFINE_PER_CPU(struct clocksource, riscv_clocksource) = {
+static struct clocksource riscv_clocksource = {
 	.name		= "riscv_clocksource",
 	.rating		= 300,
 	.mask		= CLOCKSOURCE_MASK(64),
@@ -92,7 +92,6 @@ void riscv_timer_interrupt(void)
 static int __init riscv_timer_init_dt(struct device_node *n)
 {
 	int cpuid, hartid, error;
-	struct clocksource *cs;
 
 	hartid = riscv_of_processor_hartid(n);
 	if (hartid < 0) {
@@ -112,8 +111,7 @@ static int __init riscv_timer_init_dt(struct device_node *n)
 
 	pr_info("%s: Registering clocksource cpuid [%d] hartid [%d]\n",
 	       __func__, cpuid, hartid);
-	cs = per_cpu_ptr(&riscv_clocksource, cpuid);
-	error = clocksource_register_hz(cs, riscv_timebase);
+	error = clocksource_register_hz(&riscv_clocksource, riscv_timebase);
 	if (error) {
 		pr_err("RISCV timer register failed [%d] for cpu = [%d]\n",
 		       error, cpuid);
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
