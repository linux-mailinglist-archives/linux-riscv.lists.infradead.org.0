Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2365E7B78D
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 03:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsfKPTfwge7jhJN091T3vnUhr559l8VME9gyZgMbzmA=; b=nL+3hHsqirZ1hY
	2Q8tjhbki/QSoXfnpV9Px0nkgBuvCC/7WqxGUQ2IFQogBf0yuhu7OkFpZmuGrdeMqHcFSm4gZt3pI
	8v/H7CW5gVnwi1EzLU8wHadRnBaNi/+qmvPhVYvklZ+b+uQ1KKTBVX7laaiAORueEiA2yEqUJnG64
	+RKBhEHZz2Ff2PXF/Txo5iTuP02SA3tKZ61IAlA5q86wlUTzlJGjyL3g22dFg74mC0wSmbt3LQW26
	ZayuQlbtQaq0xGo4O/OpmpwXqqsSr8SuIdiNpRabAJO2ErD4ZWP8c4WZPRlK1YzDIbqAwNE+Oq+MK
	DSkHwLm07IDfaVBE+07w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsdMF-0007ph-KZ; Wed, 31 Jul 2019 01:24:47 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsdMB-0007lV-DM
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 01:24:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564536283; x=1596072283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w14oJ81u6w2W34wdULaaio4UuiCV/eOoDOsEOvwCQng=;
 b=g2tMizxrhurE55XCX321okvMCT1ABuL1ly5W+5RfZC2kZ1I4vfDEjEaP
 USTHUdtG5IO/VppiSr9o6CBF4bw1aT6DilL8Yl7zFlZtU7aGjV+FmMFe9
 fGC+ZcuSR72PejPlAn2p+Z206qKVuSDlzyTM1UkJeynM4Jkm6CLTAF34X
 mhm9EOhC/4N+B8hzmATXeBwJ0xZh3oEpoGJf8uSKNy/bBQBdPF99yFDe6
 nf/xagV2sKK8C7TYns6QoyqPr0Mh9gKXQuGKsLCGX1/uCWOMuRjdjhq2g
 pzP6h27l2EXH06jeU21UtqU+SeT7oLLeBH7EgFm0cjbiLcrZhbgg8rPmi A==;
IronPort-SDR: HczyfGKqIfF8M48ElrROARaT7RULwpPYqxMJ7xydqSnywncJPOeGEgpsPlMBq5vZmbGIM73bEb
 MQ4og0c3Jpdp+SXivqhzO5W23695l9n5vk9H6DhM7ZsuMtyyuBMJEaXmneCaSuCY0CPHe9PfaY
 o1CKsxS4XsJjm/TslkJN/ZfznDv0as9hKApFfwiPsRBDpgcFpyAWX/c8RrYvKEvokdYSq2m6g2
 38JzvoPrRfEwQYFsVWMTTNpj9DAPsKxeSYnfVO7gGxMUEkj8XToBOxXbgrXSA4QTMW+UbafXrX
 1ao=
X-IronPort-AV: E=Sophos;i="5.64,328,1559491200"; d="scan'208";a="119218124"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 09:24:36 +0800
IronPort-SDR: BetU/9tW/lEnmog4Tt3Ru8OROU/+OJrRb0h7MnKWIeA1mFIzGmvn/ynFpjA7lxr9k7mLWyR6V3
 syRI2/gUZfg2HbBfyXYmfHUGZrNDwJrxFXGqxRb5ZwrDQS9wwEaD81ItBuOEXCu1ITXme9SR7j
 6ARqYxDRGaoi4NcUlevOrwZVVRO+4d4NdM/Im4xDDcalqAL31MizcyqVjMXZ5TkArCbTHaFtX/
 9SjpyhnCQJHqe+dOgQKssKJ/cc+NAbs48Xfg/XbxeivAa2Lz2KvFN34Rfay+8AUmWeA3KejgzM
 ly2bfmYUHMi+bJeYCD+1H6y2
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 30 Jul 2019 18:22:37 -0700
IronPort-SDR: 3sIcbQgxnvm/OmZX79OUSeBBjL/aRRiiJnuYpbIO4ukQp1vBudqAkfTquNuNNV1yxRpXr5VXYc
 BDPkC4kHvf9e6rAQFeGOlPL1/Juf8fqKjuEt69N/+Vc6qIsdKhLHD/jlPRvxT1byy7KeQNMHX+
 XiWV1JpOikc6JZwyARbD6vaXdBZSu/LjSzYW5wtXtjdG73uT2ql5rpdbuTqFScrr+LPWIdZY48
 AGJPh+uMNAqF0M2AzlsQO7XMNrLdhOQ8eFaOlI/+VxcraJ4IRcn5TB5M338/QYEzkYopcwugPf
 lPs=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 Jul 2019 18:24:36 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] RISC-V: Remove per cpu clocksource
Date: Tue, 30 Jul 2019 18:24:14 -0700
Message-Id: <20190731012418.24565-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190731012418.24565-1-atish.patra@wdc.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_182443_563911_0DF14CE3 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
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
