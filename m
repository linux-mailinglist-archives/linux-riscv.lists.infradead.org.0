Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6331ECAF9
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jun 2020 10:04:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkEkw5QqPkETs3jN0pum2lLGzixVLfiVa01AvyrcEcA=; b=baJdBm+cim88Bd
	uO33+5/dESI9ySIPSqfz+wysw4u2VL0MMQKJbkwfWiHNC0Ca4WHl5eiTxDTSWhzZUnT6MdKUdQchP
	nD5YgGZDPFgRsYx4KD2fq+daL8Zqd5jQ8Mz2HesM9wI1N+Bfl0MGPy9weK1XXAXqye66VW46RibmI
	0NXffxqKzXdWLbOMLuRS3XwnRuvUH74IeqKrk41yQGH31/tlnRdOXr+m2D6xekg87igWxW7gwHfqR
	ehPNfyYf3iK8mOoKmkaE2Uc2BPGxZ9BUzmzGcx+8vGxSZ38Ko4/M3jOh+qpFy/setysciwYb1+m33
	PJ+bFbYGp4FBKajaz07Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgOOH-0000bw-Lq; Wed, 03 Jun 2020 08:04:49 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgOOC-0000VD-ST
 for linux-riscv@lists.infradead.org; Wed, 03 Jun 2020 08:04:46 +0000
X-Originating-IP: 90.112.45.105
Received: from debian.home (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 18F37240005;
 Wed,  3 Jun 2020 08:04:39 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Zong Li <zong.li@sifive.com>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org
Subject: [PATCH v4 4/4] riscv: Check relocations at compile time
Date: Wed,  3 Jun 2020 04:00:10 -0400
Message-Id: <20200603080010.13366-5-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603080010.13366-1-alex@ghiti.fr>
References: <20200603080010.13366-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_010445_054537_510D3047 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Anup Patel <anup@brainfault.org>, Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Relocating kernel at runtime is done very early in the boot process, so
it is not convenient to check for relocations there and react in case a
relocation was not expected.

There exists a script in scripts/ that extracts the relocations from
vmlinux that is then used at postlink to check the relocations.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/Makefile.postlink     | 36 ++++++++++++++++++++++++++++++++
 arch/riscv/tools/relocs_check.sh | 26 +++++++++++++++++++++++
 2 files changed, 62 insertions(+)
 create mode 100644 arch/riscv/Makefile.postlink
 create mode 100755 arch/riscv/tools/relocs_check.sh

diff --git a/arch/riscv/Makefile.postlink b/arch/riscv/Makefile.postlink
new file mode 100644
index 000000000000..bf2b2bca1845
--- /dev/null
+++ b/arch/riscv/Makefile.postlink
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: GPL-2.0
+# ===========================================================================
+# Post-link riscv pass
+# ===========================================================================
+#
+# Check that vmlinux relocations look sane
+
+PHONY := __archpost
+__archpost:
+
+-include include/config/auto.conf
+include scripts/Kbuild.include
+
+quiet_cmd_relocs_check = CHKREL  $@
+cmd_relocs_check = 							\
+	$(CONFIG_SHELL) $(srctree)/arch/riscv/tools/relocs_check.sh "$(OBJDUMP)" "$(NM)" "$@"
+
+# `@true` prevents complaint when there is nothing to be done
+
+vmlinux: FORCE
+	@true
+ifdef CONFIG_RELOCATABLE
+	$(call if_changed,relocs_check)
+endif
+
+%.ko: FORCE
+	@true
+
+clean:
+	@true
+
+PHONY += FORCE clean
+
+FORCE:
+
+.PHONY: $(PHONY)
diff --git a/arch/riscv/tools/relocs_check.sh b/arch/riscv/tools/relocs_check.sh
new file mode 100755
index 000000000000..baeb2e7b2290
--- /dev/null
+++ b/arch/riscv/tools/relocs_check.sh
@@ -0,0 +1,26 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-or-later
+# Based on powerpc relocs_check.sh
+
+# This script checks the relocations of a vmlinux for "suspicious"
+# relocations.
+
+if [ $# -lt 3 ]; then
+        echo "$0 [path to objdump] [path to nm] [path to vmlinux]" 1>&2
+        exit 1
+fi
+
+bad_relocs=$(
+${srctree}/scripts/relocs_check.sh "$@" |
+	# These relocations are okay
+	#	R_RISCV_RELATIVE
+	grep -F -w -v 'R_RISCV_RELATIVE'
+)
+
+if [ -z "$bad_relocs" ]; then
+	exit 0
+fi
+
+num_bad=$(echo "$bad_relocs" | wc -l)
+echo "WARNING: $num_bad bad relocations"
+echo "$bad_relocs"
-- 
2.20.1


