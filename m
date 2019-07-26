Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56FE7725C
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 21:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uk/L0FWFga43+FYq1fTKc/cZjsIpD8sAUKIZvbcPpIE=; b=UbIeIaRGskvIq2
	m1uThZgnMYeVxBlWTTekCGe+9DPKNyAOifV1T/OZEaQbdoHuMGwCUZURDOfEWsKldB2CQrubTJHIH
	/nOZ7Cg2wLaRcgpG/GSr/ZvN8wiLjqkEdepqldGuTd+hZuw8eae6Cp1FQzxigDtyNqjhIWV7SZ6vN
	bJ3Dym/sUcklkn+fwhed39x8R3WEDGNj0M3qTx7EqJxFxqLYX8iv5GoE6enM+4qwMK42/ywXEmdi6
	OV1eRXhdcSiqVMNkxpTR7HrMzbxn+ChWobqJ6NhkJZcvwjOl+mig7OO25CohOvumAgO9An4zd7AG4
	v+Q1MpzvWIL5f5M1D4Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6B9-00024V-6e; Fri, 26 Jul 2019 19:46:59 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr6B5-00021u-97
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 19:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564170416; x=1595706416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zuljV/XFkkELlNYpQrLLimGaj7xDNrUz/oDJpIkonzM=;
 b=E/r8UFZ5DAfvWibeL4TMjZjSq1QMjtwBC01meVRfkeW2+FcYKYz4rCNT
 1Lua5YlLJS4WdzbS86Tu2ehPgGO9l1rnkVy4ZQVMtYbZWzmh+i4l09vNA
 Sy73HM4pyv4aLsoTa2SfKG/Welm3EC1sPVXlGFlaqgODp0ZDePkPocQBN
 Xr1uQgedCNYSdxK3rcbGw7DeE3jfjK4xVeuf6O0XIxw5ECPO18FL2K22t
 2UqaOBF7mp6AlZyYGRR5Rc70LPncCIt+SVzd/fLFF8GNFmoEK+K4DAlhe
 Q1ZJU+ow8iKPh2GLR4KCiKivlQOJIyDqcFhz/siVPRQLuq1oo/73dYOq4 g==;
IronPort-SDR: 0cMtTOU3IDKITwGhSe3E8j15V2cvU1FqKx2/BYKjpmhpfJbh02o99bGF3omxtU5JjxaZFoQQVf
 BR51oU5JibokcMz0Q8csq4HSyz07keyfTD5EDn1/FUSubAHM0fb1bgd0W1oTQwqMDPB6g6jSa3
 /v1HjEpqkoq98m870xBxAFv7oE6p5rZBzb3sefgLwgIJt5dWqo5PYlTSeH58wqyx0zu8BYXNNP
 D0VhYXnXTWcFrIl8mMANns+H4sBp36uY1LBoTNg3CocobBrrEsSDT571JkBHS8qgIuDumQk575
 6Ns=
X-IronPort-AV: E=Sophos;i="5.64,312,1559491200"; d="scan'208";a="115831169"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Jul 2019 03:46:48 +0800
IronPort-SDR: jJewodiQENiyPgFuJEXidqqDpIN+ASFP/AXXwtg4772VBHtXVQOEGhKdCDQrFqyWUkFn3h70q4
 i5lQjkJgaBPIwynQSMS0pT6/QEHPmLPtSF8IsXEFF2TnK2kYFVT/NhMBzrz72Hoj4RLHUR6n/s
 BqZNoUoa3o7Enj2eGDTConrDoiFpCytq+ycTyhqmSUsdaSuhfe0rPNuM4GHe8S7f7V4rQUAQle
 hi9Zdhg9iMGn2M0ZYJtE6VSGfyCuAcs1/OmU6Y69KyjQwPOD8v+ia2U979a5wVJ2SmvOK8KyGD
 sTXQf9S9IVhEjqPngKwpCPIi
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 26 Jul 2019 12:44:56 -0700
IronPort-SDR: wTxhkBHItRBK6MQN42Flf6IDsh0NhG04f+bcBRld7ws7XJL62cnVGK7DynbnmXlEJ2GUnFXWG0
 peU7/eOrwiFPw9pbSRMd1QwreStg8598I0Tm1oqu1ia9hVcU0eFKVL/GxeBBOS++awvjNnrZ4K
 us0zET2Sf80U+I6/KdcnhsS+YOGXYChPOQIGCNhyMeJotR22b/t2IonRa0IKyI8xhU5mKEmJj5
 4rTMHJT0NehUAirTRMneA1RTzOh30uD1OSLu0Q3X8WhW/57CSiAE9dZlVX0cuFIfe29ogq+IrQ
 WoE=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Jul 2019 12:46:48 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
Date: Fri, 26 Jul 2019 12:46:37 -0700
Message-Id: <20190726194638.8068-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190726194638.8068-1-atish.patra@wdc.com>
References: <20190726194638.8068-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_124655_355718_5A35D1C1 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <anup.patel@wdc.com>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per riscv specification, ISA naming strings are
case insensitive. However, currently only lower case
strings are parsed during cpu procfs.

Support parsing of upper case letters as well.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/cpu.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 7da3c6a93abd..185143478830 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -5,6 +5,7 @@
 
 #include <linux/init.h>
 #include <linux/seq_file.h>
+#include <linux/ctype.h>
 #include <linux/of.h>
 #include <asm/smp.h>
 
@@ -57,10 +58,10 @@ static void print_isa(struct seq_file *f, const char *orig_isa)
 	 * kernels on harts with the same ISA that the kernel is compiled for.
 	 */
 #if defined(CONFIG_32BIT)
-	if (strncmp(isa, "rv32i", 5) != 0)
+	if (strncasecmp(isa, "rv32i", 5) != 0)
 		return;
 #elif defined(CONFIG_64BIT)
-	if (strncmp(isa, "rv64i", 5) != 0)
+	if (strncasecmp(isa, "rv64i", 5) != 0)
 		return;
 #endif
 
@@ -76,8 +77,8 @@ static void print_isa(struct seq_file *f, const char *orig_isa)
 	 * extension from userspace as it's not accessible from there.
 	 */
 	for (e = ext; *e != '\0'; ++e) {
-		if (isa[0] == e[0]) {
-			if (isa[0] != 's')
+		if (tolower(isa[0]) == e[0]) {
+			if (tolower(isa[0] != 's'))
 				seq_write(f, isa, 1);
 
 			isa++;
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
