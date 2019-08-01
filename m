Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16947D27D
	for <lists+linux-riscv@lfdr.de>; Thu,  1 Aug 2019 02:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsfKPTfwge7jhJN091T3vnUhr559l8VME9gyZgMbzmA=; b=pvIadJYFGODmEQ
	3+AW8fo6jJ6xXVLxpU2tYZwaQdbxD51OtsP6eLwvbV5izzdthtNGX3Qly66XgpIH7+zYndFDlDR74
	rwQLKDA7Nb9i9KyDJceMS8A0vX3ZbOsTWna67sBAXP2V0e7Ui+Tk11xTLB5enIaWCYZTL3Hms4UBO
	zAcjSte1+9yvIavjIVku97NSU8onrDtXcByYeegfGRIdJepniUI3+P+e+poqEUgMyORRldfD6/N/k
	hziP6i0bdOdf5YLHJjG9jsxkmNYilKTtsKW2p2lRti0Ejjcv+VaFNEN74LdzWtKzTUSsLfrdB7gc8
	dY5sXVCIiVbeH1jw3/3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszQd-0000EB-Q2; Thu, 01 Aug 2019 00:58:47 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszQZ-0000BB-AC
 for linux-riscv@lists.infradead.org; Thu, 01 Aug 2019 00:58:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564621123; x=1596157123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w14oJ81u6w2W34wdULaaio4UuiCV/eOoDOsEOvwCQng=;
 b=S5NLwUs6oF8vqp4n5TLE3DTiWxe9l1rOKXFmFspLeAdjd7bEmfLiCzeB
 BIhhBPsFDygSStcwYqFqYD2kw40uIWojpP0w2noq9JYWbJ/vkbgdDtqJA
 F1kR+sa4esTVrh0UUEyAkijda28EI3O7wz2ExdjiH1trjW33u+9L5AW6L
 4ULn4cb65G9W6KgWnzVIKLB1gE0aqEswndN9FExZM8m2UQgKYDQuZ8vpz
 VSjvkUKi+aJlD4eYF7/UaV/QAUV/2R5vgtS0XTR6SmJQWR0/qZ4jA6NGl
 OAf5V286yXcFeDJqIkZomHeDWzrh/46RTSYRj3eXMNAPe368TzTmibbNK Q==;
IronPort-SDR: S0wZ7LuTnIv6H2JyAFiltHfETULAih7zaSPWzvLKuakaoCTC1glep0yfn8RwrdQpbkd5uS58OO
 rb6iwq9SZsj9yNDKT61he/vUwbzpn5eVETqd6eDLpp36TWSNhmO0QE5C7xcduSFR+etku4/Brs
 /4hqyvT4KL99J34qUTjNqA2lz12trlvyP1IIsWDLKFsG53ziugJ8le3D6uqFxEj4VNVHIylJvu
 FH6RBB8FwXkZ7XaIZy0DEclO+sooretsiuxSNE0jftrozAz+Q1woaEOAuqBMLfXNlrWXVgQn/d
 4+0=
X-IronPort-AV: E=Sophos;i="5.64,332,1559491200"; d="scan'208";a="114650416"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 01 Aug 2019 08:58:38 +0800
IronPort-SDR: TMTblHVDc/MUzxqclaBazvRqfHWk0+aAa0F5Dkw9hM/B/KFHS0d/tBzJihxvev73fm4/kIoDKh
 0XmdC/cLZkyjVIVs81Qi5wrPMrwnHj5QZ8b0qDL85XiHp+BFoizbNOoCLwLiYRLhsU+204lQN9
 Y5hpNsVSyfGnt+b9uPfS7xz5IxlbwLDIXTC9pQ4wlZY4SVKTzolXavLC3HtEIogBK254Otez88
 6+oPjlPdMHK1cI1w7JSo/vHk6RKNXCmHcWmqAYnCcwBbvbwS6AWIyVxbGvYh31Z2p4zjDixjFD
 /1JuvyIHENCfUkezhoj2CRXp
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 17:56:38 -0700
IronPort-SDR: D1VyBwHI3DUdkTTZUMWdQnpNnOzsGERZEN5QbIDf+Y89fdGaTxP9sKHHLk1m6KTrqI3jYvCOC3
 bCkxZlsYMtuY6KRf+3Yqfny58of2tXGpv+1nBcYrz2dg+559EPzcAiGE029FLbqjc1NIejCJWs
 TeyPbP/s0dajWY0cJv8Dobe6WiCaS1Pve9JQmZViFJAvaY30yPpSUASBWJFBA8cL7WEst0AuXj
 JSmO9A1YKvlFvfZVhpX1SfSM5R0qDm1UmWFjeLdQmakFKkFePnHvub5SYqi80wMJsNX0EgXmM2
 +VE=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 31 Jul 2019 17:58:37 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/5] RISC-V: Remove per cpu clocksource
Date: Wed, 31 Jul 2019 17:58:39 -0700
Message-Id: <20190801005843.10343-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190801005843.10343-1-atish.patra@wdc.com>
References: <20190801005843.10343-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_175843_399568_F0C20332 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
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
