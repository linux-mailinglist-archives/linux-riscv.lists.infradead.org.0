Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECB2D48E4
	for <lists+linux-riscv@lfdr.de>; Fri, 11 Oct 2019 22:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eHYMfA8VxG9vcnzjLEIbMLfJbPpR/MMykrcuZ1wRsng=; b=DvF7ST3S/byHV+
	BzCZ6+l8BqtpHdRthNvQ/a5GFFAjBG3qlcwKk1ZAAe5fxlN2jH9dmJPrmWRHIBu9GVwzTDll9hQ4p
	yCtfT9h7JEhovOLmbxXD9DCQ+bdv52nLJq/d1ktbbD9FVLOqyK068N8bmVR5ymA8fJ7mK1pCsy/bd
	THUNmIXHQpcS3DbnER2vKTPWG0TaLUpI+oSoP1ECJWTkWRd2cB4d3V1HA+ySHdHQ61d3EMJLGbTIG
	hXkGHJiQjSAAFkIbafVESj5lxmlG6rL6TQO6gsRZ84Qq3tC9OFQyHvtnQ+yA7UNz6iFjQtgURF3OP
	zqTTuYBQcUaZwh7CJYFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ1Eq-0006Q7-Ci; Fri, 11 Oct 2019 20:10:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ1El-0005xS-2R
 for linux-riscv@lists.infradead.org; Fri, 11 Oct 2019 20:10:09 +0000
Received: from quaco.ghostprotocols.net (189-94-137-67.3g.claro.net.br
 [189.94.137.67])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 740D7222BE;
 Fri, 11 Oct 2019 20:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570824605;
 bh=Noq5Ub63pL49uSoEAgNSq3g3lF+ANKViTAuJqUgsLpM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iVfq2hGTAxv33fbVGsgDqdkLuLZggtRfrkfIXrIwhZ/KVAwdSTIxFtWYONIKOa45r
 SWLip7BZ4rTkWbkFjEOqWuPQFpsKLy4fCa6vc8yEt28s9OkpiAAfGdoH6IuIm9hO3q
 ByqLz/bJ2TJqTSvgDeb6OOTGF79Ga/wYW/1b6n84=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 40/69] perf tools: Avoid 'sample_reg_masks' being const + weak
Date: Fri, 11 Oct 2019 17:05:30 -0300
Message-Id: <20191011200559.7156-41-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011200559.7156-1-acme@kernel.org>
References: <20191011200559.7156-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_131007_174836_1B5F43B8 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [189.94.137.67 listed in dnsbl.sorbs.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Clark Williams <williams@redhat.com>, Palmer Dabbelt <palmer@sifive.com>,
 Stephane Eranian <eranian@google.com>, Guo Ren <guoren@kernel.org>,
 linux-riscv@lists.infradead.org, Kan Liang <kan.liang@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 clang-built-linux@googlegroups.com, Mao Han <han_mao@c-sky.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Arnaldo Carvalho de Melo <acme@redhat.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Namhyung Kim <namhyung@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-perf-users@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Ian Rogers <irogers@google.com>

Being const + weak breaks with some compilers that constant-propagate
from the weak symbol. This behavior is outside of the specification, but
in LLVM is chosen to match GCC's behavior.

LLVM's implementation was set in this patch:

  https://github.com/llvm/llvm-project/commit/f49573d1eedcf1e44893d5a062ac1b72c8419646

A const + weak symbol is set to be weak_odr:

  https://llvm.org/docs/LangRef.html

ODR is one definition rule, and given there is one constant definition
constant-propagation is possible. It is possible to get this code to
miscompile with LLVM when applying link time optimization. As compilers
become more aggressive, this is likely to break in more instances.

Move the definition of sample_reg_masks to the conditional part of
perf_regs.h and guard usage with HAVE_PERF_REGS_SUPPORT. This avoids the
weak symbol.

Fix an issue when HAVE_PERF_REGS_SUPPORT isn't defined from patch v1.
In v3, add perf_regs.c for architectures that HAVE_PERF_REGS_SUPPORT but
don't declare sample_regs_masks.

Further notes:

Jiri asked:

  "Is this just a precaution or you actualy saw some breakage?"

Ian answered:

  "We saw a breakage with clang with thinlto enabled for linking. Our
   compiler team had recently seen, and were surprised by, a similar issue
   and were able to dig out the weak ODR issue."

Signed-off-by: Ian Rogers <irogers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexey Budankov <alexey.budankov@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: clang-built-linux@googlegroups.com
Cc: Guo Ren <guoren@kernel.org>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: linux-riscv@lists.infradead.org
Cc: Mao Han <han_mao@c-sky.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Link: http://lore.kernel.org/lkml/20191001003623.255186-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/arch/arm/util/Build         | 2 ++
 tools/perf/arch/arm/util/perf_regs.c   | 6 ++++++
 tools/perf/arch/arm64/util/Build       | 1 +
 tools/perf/arch/arm64/util/perf_regs.c | 6 ++++++
 tools/perf/arch/csky/util/Build        | 2 ++
 tools/perf/arch/csky/util/perf_regs.c  | 6 ++++++
 tools/perf/arch/riscv/util/Build       | 2 ++
 tools/perf/arch/riscv/util/perf_regs.c | 6 ++++++
 tools/perf/arch/s390/util/Build        | 1 +
 tools/perf/arch/s390/util/perf_regs.c  | 6 ++++++
 tools/perf/util/parse-regs-options.c   | 8 ++++++--
 tools/perf/util/perf_regs.c            | 4 ----
 tools/perf/util/perf_regs.h            | 4 ++--
 13 files changed, 46 insertions(+), 8 deletions(-)
 create mode 100644 tools/perf/arch/arm/util/perf_regs.c
 create mode 100644 tools/perf/arch/arm64/util/perf_regs.c
 create mode 100644 tools/perf/arch/csky/util/perf_regs.c
 create mode 100644 tools/perf/arch/riscv/util/perf_regs.c
 create mode 100644 tools/perf/arch/s390/util/perf_regs.c

diff --git a/tools/perf/arch/arm/util/Build b/tools/perf/arch/arm/util/Build
index 296f0eac5e18..37fc63708966 100644
--- a/tools/perf/arch/arm/util/Build
+++ b/tools/perf/arch/arm/util/Build
@@ -1,3 +1,5 @@
+perf-y += perf_regs.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 
 perf-$(CONFIG_LOCAL_LIBUNWIND)    += unwind-libunwind.o
diff --git a/tools/perf/arch/arm/util/perf_regs.c b/tools/perf/arch/arm/util/perf_regs.c
new file mode 100644
index 000000000000..2864e2e3776d
--- /dev/null
+++ b/tools/perf/arch/arm/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/arch/arm64/util/Build b/tools/perf/arch/arm64/util/Build
index 3cde540d2fcf..0a7782c61209 100644
--- a/tools/perf/arch/arm64/util/Build
+++ b/tools/perf/arch/arm64/util/Build
@@ -1,4 +1,5 @@
 perf-y += header.o
+perf-y += perf_regs.o
 perf-y += sym-handling.o
 perf-$(CONFIG_DWARF)     += dwarf-regs.o
 perf-$(CONFIG_LOCAL_LIBUNWIND) += unwind-libunwind.o
diff --git a/tools/perf/arch/arm64/util/perf_regs.c b/tools/perf/arch/arm64/util/perf_regs.c
new file mode 100644
index 000000000000..2864e2e3776d
--- /dev/null
+++ b/tools/perf/arch/arm64/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/arch/csky/util/Build b/tools/perf/arch/csky/util/Build
index 1160bb2332ba..7d3050134ae0 100644
--- a/tools/perf/arch/csky/util/Build
+++ b/tools/perf/arch/csky/util/Build
@@ -1,2 +1,4 @@
+perf-y += perf_regs.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/csky/util/perf_regs.c b/tools/perf/arch/csky/util/perf_regs.c
new file mode 100644
index 000000000000..2864e2e3776d
--- /dev/null
+++ b/tools/perf/arch/csky/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/arch/riscv/util/Build b/tools/perf/arch/riscv/util/Build
index 1160bb2332ba..7d3050134ae0 100644
--- a/tools/perf/arch/riscv/util/Build
+++ b/tools/perf/arch/riscv/util/Build
@@ -1,2 +1,4 @@
+perf-y += perf_regs.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/riscv/util/perf_regs.c b/tools/perf/arch/riscv/util/perf_regs.c
new file mode 100644
index 000000000000..2864e2e3776d
--- /dev/null
+++ b/tools/perf/arch/riscv/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/arch/s390/util/Build b/tools/perf/arch/s390/util/Build
index 22797f043b84..3d9d0f4f72ca 100644
--- a/tools/perf/arch/s390/util/Build
+++ b/tools/perf/arch/s390/util/Build
@@ -1,5 +1,6 @@
 perf-y += header.o
 perf-y += kvm-stat.o
+perf-y += perf_regs.o
 
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/s390/util/perf_regs.c b/tools/perf/arch/s390/util/perf_regs.c
new file mode 100644
index 000000000000..2864e2e3776d
--- /dev/null
+++ b/tools/perf/arch/s390/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/util/parse-regs-options.c b/tools/perf/util/parse-regs-options.c
index ef46c2848808..e687497b3aac 100644
--- a/tools/perf/util/parse-regs-options.c
+++ b/tools/perf/util/parse-regs-options.c
@@ -13,7 +13,7 @@ static int
 __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
 {
 	uint64_t *mode = (uint64_t *)opt->value;
-	const struct sample_reg *r;
+	const struct sample_reg *r = NULL;
 	char *s, *os = NULL, *p;
 	int ret = -1;
 	uint64_t mask;
@@ -46,19 +46,23 @@ __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
 
 			if (!strcmp(s, "?")) {
 				fprintf(stderr, "available registers: ");
+#ifdef HAVE_PERF_REGS_SUPPORT
 				for (r = sample_reg_masks; r->name; r++) {
 					if (r->mask & mask)
 						fprintf(stderr, "%s ", r->name);
 				}
+#endif
 				fputc('\n', stderr);
 				/* just printing available regs */
 				return -1;
 			}
+#ifdef HAVE_PERF_REGS_SUPPORT
 			for (r = sample_reg_masks; r->name; r++) {
 				if ((r->mask & mask) && !strcasecmp(s, r->name))
 					break;
 			}
-			if (!r->name) {
+#endif
+			if (!r || !r->name) {
 				ui__warning("Unknown register \"%s\", check man page or run \"perf record %s?\"\n",
 					    s, intr ? "-I" : "--user-regs=");
 				goto error;
diff --git a/tools/perf/util/perf_regs.c b/tools/perf/util/perf_regs.c
index 2774cec1f15f..5ee47ae1509c 100644
--- a/tools/perf/util/perf_regs.c
+++ b/tools/perf/util/perf_regs.c
@@ -3,10 +3,6 @@
 #include "perf_regs.h"
 #include "event.h"
 
-const struct sample_reg __weak sample_reg_masks[] = {
-	SMPL_REG_END
-};
-
 int __weak arch_sdt_arg_parse_op(char *old_op __maybe_unused,
 				 char **new_op __maybe_unused)
 {
diff --git a/tools/perf/util/perf_regs.h b/tools/perf/util/perf_regs.h
index 47fe34e5f7d5..e014c2c038f4 100644
--- a/tools/perf/util/perf_regs.h
+++ b/tools/perf/util/perf_regs.h
@@ -15,8 +15,6 @@ struct sample_reg {
 #define SMPL_REG2(n, b) { .name = #n, .mask = 3ULL << (b) }
 #define SMPL_REG_END { .name = NULL }
 
-extern const struct sample_reg sample_reg_masks[];
-
 enum {
 	SDT_ARG_VALID = 0,
 	SDT_ARG_SKIP,
@@ -27,6 +25,8 @@ uint64_t arch__intr_reg_mask(void);
 uint64_t arch__user_reg_mask(void);
 
 #ifdef HAVE_PERF_REGS_SUPPORT
+extern const struct sample_reg sample_reg_masks[];
+
 #include <perf_regs.h>
 
 #define DWARF_MINIMAL_REGS ((1ULL << PERF_REG_IP) | (1ULL << PERF_REG_SP))
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
