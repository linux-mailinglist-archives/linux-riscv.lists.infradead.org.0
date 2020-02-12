Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADA2159EAB
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 02:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZVoD1zRHEs+OfSAhWWAtSf74ISzGHtXeSjqt8vnRzU=; b=HAk3zYID580IWQ
	3EWcI5Hsn3B9v+x0pGGGCDL9VrfBHmfvYocRdRs8qYRuX8qvHKxTkeSH4JGgs2VfWHJy1jwKWimlj
	qhQD9ocT99DxGCtpjU3RHxdCguVlbS32997PSYLKXwcVbFW3Lce1PW6LC+lAcFEI1tcFmktfjDGNO
	AoQ1le+wbZNlAEuEZLnW8m9c71Gvo21KhSr8BGks0/4oYekjSpZuGmp0uB/rtjc6NT1EsLe92U4th
	UOyAmJfs4nOhLkBvY82hHZFumPUefZfo0kHMftynn6uHAVSlCXsKKJg5WAxix8xKUkSA9yOgXPEe9
	IYad/imQz5irx9P26OtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hCK-00066k-7W; Wed, 12 Feb 2020 01:52:16 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hC1-0005mQ-Fa
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 01:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581472326; x=1613008326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1HeLrodGOFdZtxytsnxaWhw187K4Ea3d/+LDZfjUZL4=;
 b=Qx+ocaWDtl3w6dqD2eHqNQp2eWAOkapqu3N1sjGVw7n62FCacGMOCYDD
 uVMJcsdrU1VvQet6YB3EqQY8QK5gpJucjcM5oYpq7W7TAGM7CZ0TYJQ+C
 rpEbw8twRTKV4i73LUCycJQVMytDdrm9ugIYwnvS+GC39RWCirv6o3zaj
 UtejvYIuLCChO8rre9fX7PI5b0l4y3HA1Za6E8Sqd6bYKMjfn10Af94Jn
 YoZmE1VnQWIMHGKXKPla1hVhOyHyWAvhFor38OS0qb7caEP5//7CWg1j1
 vJX4UJjJnBsekTn+5COub6fHwO4i12gs0ilMKtjyXgFOEXWp9IPz46Or4 Q==;
IronPort-SDR: OQ/WN8/jOThENia2pwEEzlNB0k1z/e9mVLx2OSDD/uwNiHKtzBZO1c/RyYBvdpaSF8azYOO7zb
 NkMqXhKgvZNb8ZrM9wrpkqWQZ8v+b1tHlABjpYBA4sRubwp90nZfQnXJqC+slmJow/0Py0fI7+
 s7VmnvKFskYAeCPmKX0dWwFqay2XXjjDC37+Oe+AM2cZ6DIEIXgWn7jvXkGif96v56KHoKRjU+
 YphfZSqGQFD3Jui5TQlt11H365jE+KSpjBsxfaAAtSXK0Ma6q5DGisUwaB6zrYCrI84Oa3Upq2
 cWU=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="231429780"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 09:52:05 +0800
IronPort-SDR: g8Pzfz9+3d9oCXpz8jPb2LTgSHZTVqo0vfBLnXHu0JCB6+uMhvsxk+9cFjTdKaAC7VQUHyWKyp
 rm7lrAymigF11OrRBSRSPgM9Fi65b6/XFV4n7+mPYiccHyzdniYu/tygpiWEdeA3SY0qYQrjAL
 danLv2lVlfU/FfVM2P4pz1QllukZSiDdpRGnyxDftaBGg1Svp68ior6AL1OwcKqBWiP6DkcL0T
 t/BI0GzAfgswfvijipdZLIk2D+pjjVZtkEiMHvMMfkkXrwkyUZLRXRIxrczkqwD7/8YdwDCkng
 KNsEpjfmI759M1OXLrZ7wbL4
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 17:44:46 -0800
IronPort-SDR: i4ACyt6r8IbxBuEzVyp5U/fLIyUJy0RnYoH4e3Bdt8gku+4JVeINRgrA5Ok6dbb/n93gYxA0VC
 fKJv/n+m3NaPXIUvjpI3fLGCu5n1qPR/v48O6CoQFRME56iKZaDZPqxWngVFlrU2ZKQjpkL01G
 uK74udGZ6hKWa5djsZprleP8i3DkZj8v1794sslt8UFGnTYNzqb9WEm1mwUGayDh6L0u3g7Jah
 iUjb4twK+FTv2bSdVsYK6KXPZ8e4sFECLp5ciaiQUKadDFiWbX1CKoLNqOeD88GZzXjj7ruooH
 QGY=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Feb 2020 17:51:56 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 08/11] RISC-V: Add SBI HSM extension
Date: Tue, 11 Feb 2020 17:48:19 -0800
Message-Id: <20200212014822.28684-9-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200212014822.28684-1-atish.patra@wdc.com>
References: <20200212014822.28684-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_175157_565856_11B3A324 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Vincent Chen <vincent.chen@sifive.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Mao Han <han_mao@c-sky.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SBI specification defines HSM extension that allows to start/stop a hart
by a supervisor anytime. The specification is available at

https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc

Implement SBI HSM extension.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h    | 15 +++++++++++
 arch/riscv/kernel/Makefile      |  3 +++
 arch/riscv/kernel/cpu_ops_sbi.c | 48 +++++++++++++++++++++++++++++++++
 arch/riscv/kernel/sbi.c         |  3 ++-
 4 files changed, 68 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index d55d8090ab5c..0981a0c97eda 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -26,6 +26,7 @@ enum sbi_ext_id {
 	SBI_EXT_TIME = 0x54494D45,
 	SBI_EXT_IPI = 0x735049,
 	SBI_EXT_RFENCE = 0x52464E43,
+	SBI_EXT_HSM = 0x48534D,
 };
 
 enum sbi_ext_base_fid {
@@ -56,6 +57,19 @@ enum sbi_ext_rfence_fid {
 	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
 };
 
+enum sbi_ext_hsm_fid {
+	SBI_EXT_HSM_HART_START = 0,
+	SBI_EXT_HSM_HART_STOP,
+	SBI_EXT_HSM_HART_STATUS,
+};
+
+enum sbi_hsm_hart_status {
+	SBI_HSM_HART_STATUS_AVAILABLE = 0,
+	SBI_HSM_HART_STATUS_NOT_AVAILABLE,
+	SBI_HSM_HART_STATUS_START_PENDING,
+	SBI_HSM_HART_STATUS_STOP_PENDING,
+};
+
 #define SBI_SPEC_VERSION_DEFAULT	0x1
 #define SBI_SPEC_VERSION_MAJOR_SHIFT	24
 #define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
@@ -130,6 +144,7 @@ static inline unsigned long sbi_minor_version(void)
 {
 	return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
 }
+int sbi_err_map_linux_errno(int err);
 #else /* CONFIG_RISCV_SBI */
 /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
 void sbi_set_timer(uint64_t stime_value);
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index f81a6ff88005..a0be34b96846 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -44,5 +44,8 @@ obj-$(CONFIG_PERF_EVENTS)	+= perf_event.o
 obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
 obj-$(CONFIG_HAVE_PERF_REGS)	+= perf_regs.o
 obj-$(CONFIG_RISCV_SBI)		+= sbi.o
+ifeq ($(CONFIG_RISCV_SBI), y)
+obj-$(CONFIG_SMP) += cpu_ops_sbi.o
+endif
 
 clean:
diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
new file mode 100644
index 000000000000..9bdb60e0a4df
--- /dev/null
+++ b/arch/riscv/kernel/cpu_ops_sbi.c
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * HSM extension and cpu_ops implementation.
+ *
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
+ */
+
+#include <linux/init.h>
+#include <linux/mm.h>
+#include <asm/sbi.h>
+#include <asm/smp.h>
+
+static int sbi_hsm_hart_stop(void)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STOP, 0, 0, 0, 0, 0, 0);
+
+	if (ret.error)
+		return sbi_err_map_linux_errno(ret.error);
+	else
+		return 0;
+}
+
+static int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
+		       unsigned long priv)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_START,
+			      hartid, saddr, priv, 0, 0, 0);
+	if (ret.error)
+		return sbi_err_map_linux_errno(ret.error);
+	else
+		return 0;
+}
+
+static int sbi_hsm_hart_get_status(unsigned long hartid)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STATUS,
+			      hartid, 0, 0, 0, 0, 0);
+	if (ret.error)
+		return sbi_err_map_linux_errno(ret.error);
+	else
+		return ret.value;
+}
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index cd0f68aeac70..45ad49269f2c 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -47,7 +47,7 @@ struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
 }
 EXPORT_SYMBOL(sbi_ecall);
 
-static int sbi_err_map_linux_errno(int err)
+int sbi_err_map_linux_errno(int err)
 {
 	switch (err) {
 	case SBI_SUCCESS:
@@ -64,6 +64,7 @@ static int sbi_err_map_linux_errno(int err)
 		return -ENOTSUPP;
 	};
 }
+EXPORT_SYMBOL(sbi_err_map_linux_errno);
 
 #ifdef CONFIG_RISCV_SBI_V01
 /**
-- 
2.24.0


