Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD61657C7D
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 08:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IvnVjE+Uv+q2iCQjU/ypOpQuW7+HR0nK/hR+xdCzI4M=; b=PQntYtQ7ceJWatCqw8yNqYdK0s
	hoFfMQNJrbYpTHs+sfQZkx6Ya4Zg2iSVncjrnlVwr2QCjpzLkZZNqkNqm8tY52oIoYF1Z21n6/n7g
	mPN7mQTW78m5Gy0Nt/Cl/9qui53OBNpZsqYlHYTd9LLaLWHry5YRu6QoShkBA91m6rCpwSPBqgeNa
	wFNdELxr2dSEsz+pI6I2eyvqbVJy/dNMS8cFX5EsrUrXH/InxHPMQ6s6+JA5tRgIb91E1uWeKIz5w
	jze/a8sgceqWdoO8U+eiOo4twBoiEgvwtVoxofGq5RM/v0ugCHJURwuChlRX5WEo3sYVR+ZAjJN8Q
	drvtIpHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOGE-00072j-CE; Thu, 27 Jun 2019 06:51:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8d-0006KM-3F
 for linux-riscv@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WZ9ip/dsewBbMh/BR837qNRA9NcbAih/so1QKla8zwg=; b=nXNsqnbtuaU4X1Yco//RNx4TU
 CcQaJEMFWnVCkKAufZdfcXRqv9ahR4WtOiRbakmIx6AzbcC82ZJDfVfa+kgAyyD1ko4oXVV1qXul+
 ZvSTbivGiZza8w7xWnc14eZy0SNQo2ug84KtPH6YHucUAAU6EsrKIUpJNydYzVS6A3R9309KAO7Gg
 ewGj+drnG364vTA0zPjRS3X7blSsB6naZof0VhemEjwnKfU9PQRUI5VsSb1+TXELeZoQKnYrysVIv
 DuBXm/iTn4+v2/Kl2Gs+Kxh7PJGjdyofZAk0KxUWeQHF5fS3C8x/GPV+A34WTY0r1uET1NiYFA72x
 AnZ0fksGw==;
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJVm-0005Vb-17
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 01:47:43 +0000
Received: from grover.flets-west.jp (softbank126125154139.bbtec.net
 [126.125.154.139]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x5R1kN0w032702;
 Thu, 27 Jun 2019 10:46:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x5R1kN0w032702
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561599986;
 bh=WZ9ip/dsewBbMh/BR837qNRA9NcbAih/so1QKla8zwg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MYRMB9MwdHhEEHy9mD2RMSt8uGIVjYJ0bZhbHnVL61upXQh2n39yJts9KW4nU2GGD
 kkf2xOcwPBckNSLfKUL524JnPBfFiVFdT/yyebmJOTvxdS/IFUvYlQACCaMsOVcjbo
 hcZVRs/1zYeitT5Giem8nt3BISxtbKHFPdlkAEbuRjwSOK6gcHGoqTg+1XAnFvzW+U
 ig6BSADYoc4cPpGs0ADNkk1p7OkQJQkwKWtw8TrEVzYr9IWOyZ4misjD+58Hd0Jfks
 cThGxc1P63ptsr7I0bSInfhj72TkQouj1OsVoASy/a6+P7IqUMvvQFCTIXA30GaVvL
 1Hsl8Xger8Bew==
X-Nifty-SrcIP: [126.125.154.139]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH v2 1/4] kbuild: compile-test UAPI headers to ensure they are
 self-contained
Date: Thu, 27 Jun 2019 10:46:14 +0900
Message-Id: <20190627014617.600-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190627014617.600-1-yamada.masahiro@socionext.com>
References: <20190627014617.600-1-yamada.masahiro@socionext.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, Michal Marek <michal.lkml@markovi.net>,
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>,
 Martin KaFai Lau <kafai@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Multiple people have suggested compile-testing UAPI headers to ensure
they can be really included from user-space. "make headers_check" is
obviously not enough to catch bugs, and we often leak references to
kernel-space definition to user-space.

Use the new header-test-y syntax to implement it. Please note exported
headers are compile-tested with a completely different set of compiler
flags. The header search path is set to $(objtree)/usr/include since
exported headers should not include unexported ones.

We use -std=gnu89 for the kernel space since the kernel code highly
depends on GNU extensions. On the other hand, UAPI headers should be
written in more standardized C, so they are compiled with -std=c90.
This will emit errors if C++ style comments, the keyword 'inline', etc.
are used. Please use C style comments (/* ... */), '__inline__', etc.
in UAPI headers.

There is additional compiler requirement to enable this test because
many of UAPI headers include <stdlib.h>, <sys/ioctl.h>, <sys/time.h>,
etc. directly or indirectly. You cannot use kernel.org pre-built
toolchains [1] since they lack <stdlib.h>.

I added scripts/cc-system-headers.sh to check the system header
availability, which CONFIG_UAPI_HEADER_TEST depends on.

For now, a lot of headers need to be excluded because they cannot
be compiled standalone, but this is a good start point.

[1] https://mirrors.edge.kernel.org/pub/tools/crosstool/index.html

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
 - Add CONFIG_CPU_{BIG,LITTLE}_ENDIAN guard to avoid build error
 - Use 'header-test-' instead of 'no-header-test'
 - Avoid weird 'find' warning when cleaning

 Makefile                     |   2 +-
 init/Kconfig                 |  11 +++
 scripts/cc-system-headers.sh |   8 +++
 usr/.gitignore               |   1 -
 usr/Makefile                 |   2 +
 usr/include/.gitignore       |   3 +
 usr/include/Makefile         | 133 +++++++++++++++++++++++++++++++++++
 7 files changed, 158 insertions(+), 2 deletions(-)
 create mode 100755 scripts/cc-system-headers.sh
 create mode 100644 usr/include/.gitignore
 create mode 100644 usr/include/Makefile

diff --git a/Makefile b/Makefile
index 1f35aca4fe05..f23516980796 100644
--- a/Makefile
+++ b/Makefile
@@ -1363,7 +1363,7 @@ CLEAN_DIRS  += $(MODVERDIR) include/ksym
 CLEAN_FILES += modules.builtin.modinfo
 
 # Directories & files removed with 'make mrproper'
-MRPROPER_DIRS  += include/config usr/include include/generated          \
+MRPROPER_DIRS  += include/config include/generated          \
 		  arch/$(SRCARCH)/include/generated .tmp_objdiff
 MRPROPER_FILES += .config .config.old .version \
 		  Module.symvers tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS \
diff --git a/init/Kconfig b/init/Kconfig
index df5bba27e3fe..667d68e1cdf4 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -105,6 +105,17 @@ config HEADER_TEST
 	  If you are a developer or tester and want to ensure the requested
 	  headers are self-contained, say Y here. Otherwise, choose N.
 
+config UAPI_HEADER_TEST
+	bool "Compile test UAPI headers"
+	depends on HEADER_TEST && HEADERS_INSTALL
+	depends on $(success,$(srctree)/scripts/cc-system-headers.sh $(CC))
+	help
+	  Compile test headers exported to user-space to ensure they are
+	  self-contained, i.e. compilable as standalone units.
+
+	  If you are a developer or tester and want to ensure the exported
+	  headers are self-contained, say Y here. Otherwise, choose N.
+
 config LOCALVERSION
 	string "Local version - append to kernel release"
 	help
diff --git a/scripts/cc-system-headers.sh b/scripts/cc-system-headers.sh
new file mode 100755
index 000000000000..1b3db369828c
--- /dev/null
+++ b/scripts/cc-system-headers.sh
@@ -0,0 +1,8 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+
+cat << "END" | $@ -E -x c - -o /dev/null >/dev/null 2>&1
+#include <stdlib.h>
+#include <sys/ioctl.h>
+#include <sys/time.h>
+END
diff --git a/usr/.gitignore b/usr/.gitignore
index 8e48117a3f3d..be5eae1df7eb 100644
--- a/usr/.gitignore
+++ b/usr/.gitignore
@@ -7,4 +7,3 @@ initramfs_data.cpio.gz
 initramfs_data.cpio.bz2
 initramfs_data.cpio.lzma
 initramfs_list
-include
diff --git a/usr/Makefile b/usr/Makefile
index 4a70ae43c9cb..6a89eb019275 100644
--- a/usr/Makefile
+++ b/usr/Makefile
@@ -56,3 +56,5 @@ $(deps_initramfs): klibcdirs
 $(obj)/$(datafile_y): $(obj)/gen_init_cpio $(deps_initramfs) klibcdirs
 	$(Q)$(initramfs) -l $(ramfs-input) > $(obj)/$(datafile_d_y)
 	$(call if_changed,initfs)
+
+subdir-$(CONFIG_UAPI_HEADER_TEST) += include
diff --git a/usr/include/.gitignore b/usr/include/.gitignore
new file mode 100644
index 000000000000..a0991ff4402b
--- /dev/null
+++ b/usr/include/.gitignore
@@ -0,0 +1,3 @@
+*
+!.gitignore
+!Makefile
diff --git a/usr/include/Makefile b/usr/include/Makefile
new file mode 100644
index 000000000000..c8c3eba28ccf
--- /dev/null
+++ b/usr/include/Makefile
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+# Unlike the kernel space, uapi headers are written in standard C.
+#  - Forbid C++ style comments
+#  - Use '__inline__', '__asm__' instead of 'inline', 'asm'
+#
+# -std=c90 (equivalent to -ansi) catches the violation of those.
+# We cannot go as far as adding -Wpedantic since it emits too many warnings.
+#
+# REVISIT: re-consider the proper set of compiler flags for uapi compile-test.
+
+UAPI_CFLAGS := -std=c90 -Wall -Werror=implicit-function-declaration
+
+override c_flags = $(UAPI_CFLAGS) -Wp,-MD,$(depfile) -I$(objtree)/usr/include
+
+# The following are excluded for now just because they fail to build.
+# The cause of errors are mostly missing include directives.
+# Check one by one, and send a patch to each subsystem.
+#
+# Do not add a new header to the list without legitimate reason.
+# Please consider to fix the header first.
+header-test- += asm/ipcbuf.h
+header-test- += asm/msgbuf.h
+header-test- += asm/sembuf.h
+header-test- += asm/shmbuf.h
+header-test- += asm/signal.h
+header-test- += asm/ucontext.h
+header-test- += drm/vmwgfx_drm.h
+header-test- += linux/am437x-vpfe.h
+header-test- += linux/android/binderfs.h
+header-test- += linux/android/binder.h
+header-test-$(CONFIG_CPU_BIG_ENDIAN) += linux/byteorder/big_endian.h
+header-test-$(CONFIG_CPU_LITTLE_ENDIAN) += linux/byteorder/little_endian.h
+header-test- += linux/coda.h
+header-test- += linux/coda_psdev.h
+header-test- += linux/dvb/audio.h
+header-test- += linux/dvb/osd.h
+header-test- += linux/elfcore.h
+header-test- += linux/errqueue.h
+header-test- += linux/fsmap.h
+header-test- += linux/hdlc/ioctl.h
+header-test- += linux/jffs2.h
+header-test- += linux/kexec.h
+header-test- += linux/matroxfb.h
+header-test- += linux/netfilter_bridge/ebtables.h
+header-test- += linux/netfilter_ipv4/ipt_LOG.h
+header-test- += linux/netfilter_ipv6/ip6t_LOG.h
+header-test- += linux/nfc.h
+header-test- += linux/nilfs2_ondisk.h
+header-test- += linux/omap3isp.h
+header-test- += linux/omapfb.h
+header-test- += linux/patchkey.h
+header-test- += linux/phonet.h
+header-test- += linux/reiserfs_xattr.h
+header-test- += linux/scc.h
+header-test- += linux/sctp.h
+header-test- += linux/signal.h
+header-test- += linux/sysctl.h
+header-test- += linux/usb/audio.h
+header-test- += linux/ivtv.h
+header-test- += linux/v4l2-mediabus.h
+header-test- += linux/v4l2-subdev.h
+header-test- += linux/videodev2.h
+header-test- += linux/vm_sockets.h
+header-test- += misc/ocxl.h
+header-test- += mtd/mtd-abi.h
+header-test- += scsi/scsi_bsg_fc.h
+header-test- += scsi/scsi_netlink_fc.h
+header-test- += scsi/scsi_netlink.h
+header-test- += sound/asequencer.h
+header-test- += sound/asound.h
+header-test- += sound/asoc.h
+header-test- += sound/compress_offload.h
+header-test- += sound/emu10k1.h
+header-test- += sound/sfnt_info.h
+header-test- += sound/sof/eq.h
+header-test- += sound/sof/fw.h
+header-test- += sound/sof/header.h
+header-test- += sound/sof/manifest.h
+header-test- += sound/sof/trace.h
+header-test- += xen/evtchn.h
+header-test- += xen/gntdev.h
+header-test- += xen/privcmd.h
+
+# more headers are broken in some architectures
+
+ifeq ($(SRCARCH),arc)
+header-test- += linux/bpf_perf_event.h
+endif
+
+ifeq ($(SRCARCH),ia64)
+header-test- += asm/setup.h
+header-test- += asm/sigcontext.h
+header-test- += asm/perfmon.h
+header-test- += asm/perfmon_default_smpl.h
+header-test- += linux/if_bonding.h
+endif
+
+ifeq ($(SRCARCH),mips)
+header-test- += asm/stat.h
+endif
+
+ifeq ($(SRCARCH),powerpc)
+header-test- += asm/stat.h
+header-test- += linux/bpf_perf_event.h
+endif
+
+ifeq ($(SRCARCH),riscv)
+header-test- += linux/bpf_perf_event.h
+endif
+
+ifeq ($(SRCARCH),s390)
+header-test- += asm/runtime_instr.h
+header-test- += asm/zcrypt.h
+endif
+
+ifeq ($(SRCARCH),sparc)
+header-test- += asm/stat.h
+header-test- += asm/uctx.h
+header-test- += asm/fbio.h
+header-test- += asm/openpromio.h
+endif
+
+# asm-generic/*.h is used by asm/*.h, and should not be included directly
+header-test- += asm-generic/%
+
+header-test-y += $(filter-out $(header-test-), \
+			$(patsubst $(obj)/%,%, $(wildcard \
+			$(addprefix $(obj)/, *.h */*.h */*/*.h */*/*/*.h))))
+
+# For GNU Make <= 4.2.1, $(wildcard $(obj)/*/) matches to not only directories
+# but also regular files. Use $(filter %/, ...) just in case.
+clean-dirs += $(patsubst $(obj)/%/,%,$(filter %/, $(wildcard $(obj)/*/)))
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
