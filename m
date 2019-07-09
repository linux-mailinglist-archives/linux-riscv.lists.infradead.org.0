Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72ED363385
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jul 2019 11:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m74gYqvZfZcA1zY88o3Bjf1bVenuBnsA/QNiFgJGVDA=; b=bs6MX+RtP3RetlJaLY5aXEKdQL
	AfUIEwNZx8aeQ+IxFbDK9ZfTcyeZVxjVX+yOEaNgv5tI4jzXsN9OJvnrFW/2qB1qXfgPsYb90kk5D
	+wv5+z7f5I1CmUnLcwi5VaVluuLZSh9uoPuoGUiktXpdxRb8DFg7P3/W0pSeOernAbiQBZ7nalEV8
	Nig600pVog2xEtHC6xEDJJ8e9V5OUjFGhnVA2S48/G4WfrsFLcYWzKGR+EEgH8oZEoLgnzhgD82ZJ
	/gC8jnxfyiIFYWi8GjrNBODETvTf3rDQ1SnLbDY3hO4656afh9Tj8yP1dFj6lpT/vd/fHbYrMOSu/
	3ODq90Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkmUk-000545-9U; Tue, 09 Jul 2019 09:33:06 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmUY-0004wD-6d
 for linux-riscv@lists.infradead.org; Tue, 09 Jul 2019 09:32:56 +0000
Received: from orion.localdomain ([95.118.92.226]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MjPYI-1iE5gX0bP8-00kvBV; Tue, 09 Jul 2019 11:32:43 +0200
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] debian: add generic rule file
Date: Tue,  9 Jul 2019 11:32:39 +0200
Message-Id: <1562664759-16009-4-git-send-email-info@metux.net>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562664759-16009-1-git-send-email-info@metux.net>
References: <1562664759-16009-1-git-send-email-info@metux.net>
X-Provags-ID: V03:K1:jKhi6lLozAg2IH0o7JxX5GA0JrBrDeDdVL9UaNzdpfsuRuXXdTV
 GI0COtD4SErDVWUkYTz05mOnJcH5X/9+2q58oyRs4I8QRh8V8dmXRfNAO17PSehGOQDaKvE
 T86Un6w4CkuFqM1BEOaUtpLVTajmWf8839oXpIAv39QprOuajLioZw0INYZ2ADT/nQjnnox
 h9/HUqdMxsemWuCFaUszw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KG8HrKoByR8=:sD7hpa9EF7H0gm+eHv8FMJ
 eToxSgaDCL2tS7/7qeZizHw9wrPfBUjOn2wS8D18q732Bp2D41jPky8AozMIAw7R/LIbfZXR8
 A5sx+3MTiQ/pDAvI2pZMxdGBoPJ5u5BNt6awmg4yc9phCoXqmIBIrxmdp+sGzPjnRSUiEf0YU
 aZhpyKxUGZlNVsvhnSdsFF5h7g7uT5kd7g2tM0VYEnQ1LFcfLO7Ne5+/HQDzJyujre1QrN4ew
 oHozcN9VdBtr9WJusQ5fK+zIoh76kWzOx276MOuz/nyS5f8FXhctXHnSIwqgLQFOczmDSj+E0
 a6pvaM5nMDRWySMKmRV2zFf5QidVovrV4HfTyrd4q/w6I99+ti3+htOavC/nYvxJN2LfSO36a
 vkYW+pH1JvNTtDxdUBVL5jzf5qcsrlwxawqXlw9mq3oEsUqOThEKe/NUIOxRMtrgxjeJUMirV
 P7wqY0afXUg/YziPHJktc8Gbn929tQnKEqeTfADV9iOy8W0IrN1AhSHK0J2zBLttCTJHcXr+s
 msbEx8EIncqkiW5vsHmjr+Nt9PxKFTbwpdTTqdj5uiyYWRwtrS+nXQbzee54brvKtJpBpnCR2
 0FJQs50BkAYFq4GtgEjN/u3rCEPq69/IkHNqTGlIX96qx4TNo76e48vsUqpFzJr76vgYyw36a
 Y9ZGcju44Ozk8o8UmS0QrCijrlp6H+uEe5NMEee3/IBulmy85YPUvaEAcumQWO8aFo1MFLYtc
 /jbsn7xsaXVtF5smAt8LF4LIuPp5exCYzYUgfQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_023254_534401_4F756D7F 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: michal.lkml@markovi.net, linux-kbuild@vger.kernel.org,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 apw@canonical.com, joe@perches.com, linux-riscv@lists.infradead.org,
 info@metux.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Adding a generic debian rule file, so we can build the directly
via usual Debian package build tools (eg. git-buildpackage,
dck-buildpackage, etc). It expects the .config file already
placed in the source tree.

The rule file contains a rule for creating debian/control and
other metadata - this is done similar to the 'deb-pkg' make rule,
scripts/packaging/mkdebian.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 .gitignore   |  1 +
 MAINTAINERS  |  6 ++++++
 debian/rules | 27 +++++++++++++++++++++++++++
 3 files changed, 34 insertions(+)
 create mode 100755 debian/rules

diff --git a/.gitignore b/.gitignore
index 7587ef56..01d742c 100644
--- a/.gitignore
+++ b/.gitignore
@@ -69,6 +69,7 @@ modules.builtin
 # Debian directory (make deb-pkg)
 #
 /debian/
+!/debian/rules
 
 #
 # Snap directory (make snap-pkg)
diff --git a/MAINTAINERS b/MAINTAINERS
index 558acf2..56e034c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4516,6 +4516,12 @@ F:	include/uapi/linux/dccp.h
 F:	include/linux/tfrc.h
 F:	net/dccp/
 
+DEBIAN PACKAGING FILES
+M:	Enrico Weigelt <info@metux.net>
+L:	linux-kbuild@vger.kernel.org
+S:	Maintained
+F:	debian/
+
 DECnet NETWORK LAYER
 W:	http://linux-decnet.sourceforge.net
 L:	linux-decnet-user@lists.sourceforge.net
diff --git a/debian/rules b/debian/rules
new file mode 100755
index 0000000..c2f0319
--- /dev/null
+++ b/debian/rules
@@ -0,0 +1,27 @@
+#!/usr/bin/make -f
+# SPDX-License-Identifier: GPL-2.0
+
+export MAKE
+export KERNELARCH           = $(shell $(MAKE) kernelarch)
+export KERNELRELEASE        = $(shell $(MAKE) kernelrelease)
+export KBUILD_DEBARCH       = $(shell dpkg-architecture -qDEB_HOST_ARCH)
+export KBUILD_BUILD_VERSION = $(shell $(MAKE) kernellocalversion)
+export KDEB_RULES           = debian/rules.auto
+export KDEB_SOURCENAME      = linux-source
+export ARCH                 = $(KERNELARCH)
+
+debian/control debian/changelong debian/arch debian/copyright:
+debian/control:
+	./scripts/package/mkdebian
+
+build:	debian/control
+	$(MAKE) KERNELRELEASE=$(KERNELRELEASE) ARCH=$(KERNELARCH) KBUILD_BUILD_VERSION=$(KBUILD_BUILD_VERSION) KBUILD_SRC=
+
+binary-arch:	debian/control
+	$(MAKE) KERNELRELEASE=$(KERNELRELEASE) ARCH=$(KERNELARCH) KBUILD_BUILD_VERSION=$(KBUILD_BUILD_VERSION) KBUILD_SRC= intdeb-pkg
+
+clean:
+	rm -rf debian/*tmp debian/files debian/changelog debian/control debian/copyright debian/rules.auto debian/arch
+	$(MAKE) clean
+
+binary: binary-arch
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
