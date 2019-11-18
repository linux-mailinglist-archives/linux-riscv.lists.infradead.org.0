Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7751100F14
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 23:57:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjGn4ATncR9xw0YreGVMzBcukWqZRzjxQEI2q3gMH9s=; b=nHh1OM2/OUjWN4
	gjzpUbt/aLMVIUht7uF6HUn3eTPwqEf952GSRbEs3AwTM0t5y7/0cepqBejeWfUtAQhgGrKLUBR0T
	prey01gLY/Qg+sZTjW0a50eNdiQn/NCHmWN2FGYvZTAwMZtsdJN9Q+z3/J02jsKpYPo/K3JwJwBav
	pnVuL37bOPavhkVQ7LbxMyn57kIH2cS79dIz6UlYstn9u3K2m96iSLkQu2cU0WCuYPIbpx7LhSdZa
	4AEHVuWygPjZuXxZQ6EY2jQ1+ECUksLuhUGf4FMk7aidVm8GumZr/vAYUFqpkY7ocWT6TdQCSxUUQ
	U3nB45hdgc9GiidDrqEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWpxU-0007UR-Bt; Mon, 18 Nov 2019 22:57:24 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWpxL-0007G9-IT
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 22:57:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574117835; x=1605653835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KZ2JqN/3j29BS4ImRKlwmi0ywl5knXuSWD10el98EP0=;
 b=DwNgp0S8Tlb86lbSrJUs8eF1bdEhC99HqYa84kbZT2g23V0FDmnHrGbO
 G0jGjLPlmTsskyJQTLTTShuJomT2C+gW50YlrqrZS8v71+L9+8bmHOMkG
 m5uL9Rt0oVphtKoSFA+Vy44tLYLoSjiilw7vKsuMCJsZwbARoDgrkLvqm
 CYr251a1P7VwvUTWkFl5x/iqReM5OPgyHSvvIRXHLa7Ye+/8DKQUbX/IO
 RXgY6yX4Qhwu5kccOjOCJqPGZ4AH2GLShtwLe9t08u3RIZ1dctO7EaE21
 2EwLu5yA6EqO4HTPy8gOHR38CcpA+ms62HVZwtK7SXEcsrLOVkGoBxgpK A==;
IronPort-SDR: fuhxAFLiNmamreQIqUOsahkexsOJLtZiV8WGNW07dBv9023CXVEb9kde/t+Udm1v1hvCwDryyW
 POId8HrKonX5QxY84UQLGTmCceV9N70mSA+XUayPkMRpnjn3Qq+lrXrTIAl/3x2pNJC77/X3e4
 5LMp+uSTCC/V8YD+IC5cT12FAfvOa89ThC+tv4NVeYtCtfv9CpJA7TGXHE1cqG7dGrHWTFXsvp
 E00fymF5KPbMmj4lwpL7zBHVeGo9GAZAbNa8QeZgXlXvTWew/Dnm4Fx694aeMLHaIWcBrWS7wh
 7wo=
X-IronPort-AV: E=Sophos;i="5.68,321,1569254400"; d="scan'208";a="124142835"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Nov 2019 06:57:06 +0800
IronPort-SDR: N6QYgGFxs6kmz/QTGWWzs9KtcWSLPPTK0+CtQgo962WQ/++5/aGm3yePo2ZkxARIfIfi8xRSoS
 MicDqRpyW3KUJrsP46XpOKiFITHAfML53SnxG2m5RzpBuVtRFVwNV6jfWNZry6itLzZmocosP7
 yZr332aI3Y5gZgPyQHSLosU71tPhPkEQ6D+YQLBNJLswaXAbyDKW7z5BE71vQ7Z4fBh8L6StB+
 GidUjNjaHjkxmrHIFgieGWFpZNxIswfx+2yQILqZ0Hbk1FjSvjAzsdk9E4NeXk69IWcJvqeZRw
 yDxTRnOJEzkPSSjMijAUGIqA
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 14:52:19 -0800
IronPort-SDR: ORHKxrkZNmOAAk3pK3OLRdWFogOk5FChZF2KqD1suGAmeo6KkAAxmcain2T9LpS+qzh7Lt3Bww
 wblaxNVjpdEYDaZpWBLXidK6W8o+GdlbF3xXCmZ3AJw4ONHgBurYnUQwQszRVzaRSNokzwadtg
 RNTKaB4zSqL57k9FgYVtbieyr0ixbcjv0hRuEvrTfR+YmfHJZI9YVeOFvAAu9Qh3KW5RQM959K
 sWu+n9H6Cim/nmmvCi4CsABsUsIe0faHBK0PFz/6/1Kepjx7wjU/tU2EySX/uHNDK8P82N7T+N
 IvY=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.237])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Nov 2019 14:57:07 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] RISC-V: Introduce a new config for SBI v0.1
Date: Mon, 18 Nov 2019 14:45:38 -0800
Message-Id: <20191118224539.2171-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118224539.2171-1-atish.patra@wdc.com>
References: <20191118224539.2171-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_145715_625552_31F4824A 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>, Anup Patel <anup@brainfault.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Jonathan Behrens <behrensj@mit.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Mao Han <han_mao@c-sky.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We now have SBI v0.2 which is more scalable and extendable to handle
future needs for RISC-V supervisor interfaces.

Introduce a new config and move all SBI v0.1 code under that config.
This allows to implement the new replacement SBI extensions cleanly
and remove v0.1 extensions easily in future. Currently, the config
is enabled by default. Once all M-mode software with v0.1 are no
longer in use, this config option and all relevant code can be easily
removed.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig      |  6 ++++
 arch/riscv/kernel/sbi.c | 69 +++++++++++++++++++++++++++++------------
 2 files changed, 55 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 8eebbc8860bb..4881b87d0d14 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -272,6 +272,12 @@ menu "Kernel features"
 
 source "kernel/Kconfig.hz"
 
+config RISCV_SBI_V01
+	bool "SBI v0.1 support"
+	default y
+	help
+	  This config allows kernel to use SBI v0.1 APIs. This will be
+	  deprecated in future once legacy M-mode software are no longer in use.
 endmenu
 
 menu "Boot options"
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index 1cee3ef009bb..6c864fd7fb95 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -52,6 +52,7 @@ int sbi_err_map_linux_errno(int err)
 	};
 }
 
+#ifdef CONFIG_RISCV_SBI_V01
 /**
  * sbi_console_putchar() - Writes given character to the console device.
  * @ch: The data to be written to the console.
@@ -78,39 +79,47 @@ int sbi_console_getchar(void)
 }
 
 /**
- * sbi_set_timer() - Program the timer for next timer event.
- * @stime_value: The value after which next timer event should fire.
+ * sbi_shutdown() - Remove all the harts from executing supervisor code.
  *
  * Return: None
  */
-void sbi_set_timer(uint64_t stime_value)
+void sbi_shutdown(void)
 {
-#if __riscv_xlen == 32
-	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
-			  stime_value >> 32, 0, 0, 0, 0);
-#else
-	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
-#endif
+	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
 }
 
 /**
- * sbi_shutdown() - Remove all the harts from executing supervisor code.
+ * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
  *
  * Return: None
  */
-void sbi_shutdown(void)
+void sbi_clear_ipi(void)
 {
-	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
+	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
 }
 
+#endif
+
 /**
- * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
+ * sbi_set_timer() - Program the timer for next timer event.
+ * @stime_value: The value after which next timer event should fire.
  *
  * Return: None
  */
-void sbi_clear_ipi(void)
+void sbi_set_timer(uint64_t stime_value)
 {
-	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
+#ifdef CONFIG_RISCV_SBI_V01
+	if (sbi_spec_is_0_1()) {
+#if __riscv_xlen == 32
+		sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
+			  stime_value >> 32, 0, 0, 0, 0);
+#else
+		sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
+#endif
+		return;
+	}
+#endif
+
 }
 
 /**
@@ -121,8 +130,13 @@ void sbi_clear_ipi(void)
  */
 void sbi_send_ipi(const unsigned long *hart_mask)
 {
-	sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
+#ifdef CONFIG_RISCV_SBI_V01
+	if (sbi_spec_is_0_1()) {
+		sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
 			0, 0, 0, 0, 0);
+		return;
+	}
+#endif
 }
 
 /**
@@ -133,8 +147,13 @@ void sbi_send_ipi(const unsigned long *hart_mask)
  */
 void sbi_remote_fence_i(const unsigned long *hart_mask)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
-			0, 0, 0, 0, 0);
+#ifdef CONFIG_RISCV_SBI_V01
+	if (sbi_spec_is_0_1()) {
+		sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
+			 (unsigned long)hart_mask, 0, 0, 0, 0, 0);
+		return;
+	}
+#endif
 }
 
 /**
@@ -150,8 +169,13 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
 					 unsigned long start,
 					 unsigned long size)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
+#ifdef CONFIG_RISCV_SBI_V01
+	if (sbi_spec_is_0_1()) {
+		sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
 			(unsigned long)hart_mask, start, size, 0, 0, 0);
+		return;
+	}
+#endif
 }
 
 /**
@@ -170,8 +194,13 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 					      unsigned long size,
 					      unsigned long asid)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
+#ifdef CONFIG_RISCV_SBI_V01
+	if (sbi_spec_is_0_1()) {
+		sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
 			(unsigned long)hart_mask, start, size, asid, 0, 0);
+		return;
+	}
+#endif
 }
 
 /**
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
