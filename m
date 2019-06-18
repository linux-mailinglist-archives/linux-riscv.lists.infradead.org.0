Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A7C4A03C
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 14:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdN9+XyLv4mesQwxwsFa9c1AQIvXMjlcd7bZwbR4kcI=; b=Co8GWBXOSOmbfU
	e/5EXpvIFCXHL23Gwckcc84zQHyQfGsf6mStVokTw0kBG4ejxYQ0iViDSIzzkviQdZ0ubVZZsX5ue
	f1ojL7mdkAYbCNuRY8ifaYiJ3TOO//qBRAHSpbRLtJXMTHF5+yi4njesbY6D4BHVzCTiJXv60ADel
	tD1JiEU6NRxi0B/X+guixC9aSN25E1FgzYaXQuRc7RlyV68lkW9mVhEqDBL2NAJSsMfpDCTaQVryr
	bb+N9Hdo9/aEcbBwMuP0mKzH3Zbu1xfttN/mtShIHRkOoYlu1ThC1q0nJmlDz1C61Lup0dpTylmnq
	0MNy8kj7J6uMei31JjJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCtj-0002cN-Uj; Tue, 18 Jun 2019 12:07:35 +0000
Received: from mail.intenta.de ([178.249.25.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCtg-0002b0-3e
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 12:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=intenta.de;
 s=dkim1; 
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:CC:To:From:Date;
 bh=HPlPJ4uGAfuFI4JxO/9dnycfR2aDEbR0VS4Uhr7HO0w=; 
 b=G0fwpmGa+PGXLtujI3SLrLjxixit8AZtbiSbq1UgPIh2R6FWkSN2zlzZGO6aBGepfwrEeY4MceyuFugtojP+hRQdLiC09ka+bACkIODAJ5Fnt+vMy6i6jKy/s0LLRcIUAiATXroX+ykuQdAIy48Fe4duEiyPC1rzRBHrx91X/NdFglqmPtchtR7IwGRePpTpgI0cVvs89ay+azAepZBuCPjClzZYKfQvwkzMJ0TipCtYBGsSZzzhdsDisY1Q/oOLGbjoM2MDwwgk0LrdH5m3JVXN5senlC9rTagZMZEi9HoSOo05JmYzZoMho7B/w8YQHCY33qizRgGiJaQbtwSfqA==;
X-CTCH-RefID: str=0001.0A0C020C.5D08D3F8.00C0, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
Date: Tue, 18 Jun 2019 14:07:21 +0200
From: Helmut Grohne <helmut.grohne@intenta.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 02/15] clocksource/drivers/sp804: Add COMPILE_TEST to
 CONFIG_ARM_TIMER_SP804
Message-ID: <20190618120719.a4kgyiuljm5uivfq@laureti-dev>
References: <7e786ba3-a664-8fd9-dd17-6a5be996a712@linaro.org>
 <20190509111048.11151-1-daniel.lezcano@linaro.org>
 <20190509111048.11151-2-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509111048.11151-2-daniel.lezcano@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-ClientProxiedBy: ICSMA002.intenta.de (10.10.16.48) To ICSMA002.intenta.de
 (10.10.16.48)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050732_802218_069459DD 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.249.25.132 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert
 Ou <aou@eecs.berkeley.edu>, David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 "open list:RISC-V ARCHITECTURE" <linux-riscv@lists.infradead.org>,
 tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 01:10:35PM +0200, Daniel Lezcano wrote:
> From: David Abdurachmanov <david.abdurachmanov@gmail.com>
> 
> This is only used on arm and arm64 platforms. Add COMPILE_TEST option.

This patch breaks selecting CONFIG_ARM_TIMER_SP804 here. I don't quite
understand why, but commit dfc82faad72520769ca146f857e65c23632eed5a is
where bisection stops.

When I try make allnoconfig with a KCONFIG_ALLCONFIG that explicitly
enables this option, it remains disabled.

When I try make menuconfig, the clocksource menu is empty.

If I apply the patch below, the option is selectable in menuconfig and
with KCONFIG_ALLCONFIG again. It could be used as an alternative
implementation, but I don't have a good rationale for why the previous
approach breaks.

My reading of the kconfig documentation indicates that the "if
condition" should only influence the default value, but it seems like it
entirely disables the option here. I'm left wondering why.

Can we revert the patch until this is sorted out?

Helmut

--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -388,7 +388,8 @@ config ARM_GLOBAL_TIMER
 	  This options enables support for the ARM global timer unit
 
 config ARM_TIMER_SP804
-	bool "Support for Dual Timer SP804 module" if COMPILE_TEST
+	bool "Support for Dual Timer SP804 module"
+	depends on ARM || ARM64 || COMPILE_TEST
 	depends on GENERIC_SCHED_CLOCK && CLKDEV_LOOKUP
 	select CLKSRC_MMIO
 	select TIMER_OF if OF

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
