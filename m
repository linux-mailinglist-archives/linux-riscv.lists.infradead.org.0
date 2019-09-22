Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BACFCBA40B
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Sep 2019 20:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2RNF5UJX9EBWRqPXpYMHY4zV7/NWBUtl51TM35g9Vc=; b=s56G+ULeHk3n7a
	wXwn8em36LBEqct/h+qXMgm3Ar1tUlD7B4T6DVo66lYaKq0BpNhufHZnZcCJ2MMECsUcMQUMUnBLw
	OvQxJSYxNUvboQsC8ib+GCPkIdlmiJevuEN7s+GG9ihSjFPH0LTM7hDjPKFGSLeoXrdctluZM6BRn
	DlrZQnxmWR2PZxg4WE+6QzcVxSw8NM35Lkm5kjXleQVnOK4o1cyOED3IJlwi9mYhWRRlVvHhyF0e8
	8XIaKntDo17GyWn5m9KFJRQdzdX0Dku9YBSu//asPHvLJ5jUNGzglGEH7eFBj2mNUchNZI6Qr9DSk
	RaeYYQSgeo1YJW/kNcrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC6xy-0002MB-IF; Sun, 22 Sep 2019 18:52:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC6xn-0002D9-24
 for linux-riscv@lists.infradead.org; Sun, 22 Sep 2019 18:52:04 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9F3F21A4A;
 Sun, 22 Sep 2019 18:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569178322;
 bh=J857V+s2eCUvaCpjWd7tdKg18VSQm5KUn4SWhVl283w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A7bNsMHHjh7GQ9GZi7b9iO85cm4xdGeV6A7FYicmrvaAhGamHumEg4DDky5R4Msf4
 m7NpfgOPzUj6aYZaiKx9MZxo0BSZLFvL1MrzBb/GgAC7bbqyXhvc0Uf7kKgloeYwSS
 1KzBk503MLsrXF0NzgwpnpKisRgIMGB6jx2O6mzg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 088/185] tools headers: Fixup bitsperlong per arch
 includes
Date: Sun, 22 Sep 2019 14:47:46 -0400
Message-Id: <20190922184924.32534-88-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922184924.32534-1-sashal@kernel.org>
References: <20190922184924.32534-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_115203_291856_3B6A1252 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Arnaldo Carvalho de Melo <acme@redhat.com>

[ Upstream commit 42fc2e9ef9603a7948aaa4ffd8dfb94b30294ad8 ]

We were getting the file by luck, from one of the paths in -I, fix it to
get it from the proper place:

  $ cd tools/include/uapi/asm/
  [acme@quaco asm]$ grep include bitsperlong.h
  #include "../../arch/x86/include/uapi/asm/bitsperlong.h"
  #include "../../arch/arm64/include/uapi/asm/bitsperlong.h"
  #include "../../arch/powerpc/include/uapi/asm/bitsperlong.h"
  #include "../../arch/s390/include/uapi/asm/bitsperlong.h"
  #include "../../arch/sparc/include/uapi/asm/bitsperlong.h"
  #include "../../arch/mips/include/uapi/asm/bitsperlong.h"
  #include "../../arch/ia64/include/uapi/asm/bitsperlong.h"
  #include "../../arch/riscv/include/uapi/asm/bitsperlong.h"
  #include "../../arch/alpha/include/uapi/asm/bitsperlong.h"
  #include <asm-generic/bitsperlong.h>
  $ ls -la ../../arch/x86/include/uapi/asm/bitsperlong.h
  ls: cannot access '../../arch/x86/include/uapi/asm/bitsperlong.h': No such file or directory
  $ ls -la ../../../arch/*/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 237 ../../../arch/alpha/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 841 ../../../arch/arm64/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 966 ../../../arch/hexagon/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 234 ../../../arch/ia64/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 100 ../../../arch/microblaze/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 244 ../../../arch/mips/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 352 ../../../arch/parisc/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 312 ../../../arch/powerpc/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 353 ../../../arch/riscv/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 292 ../../../arch/s390/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 323 ../../../arch/sparc/include/uapi/asm/bitsperlong.h
  -rw-rw-r--. 1 320 ../../../arch/x86/include/uapi/asm/bitsperlong.h
  $

Found while fixing some other problem, before it was escaping the
tools/ chroot and using stuff in the kernel sources:

    CC       /tmp/build/perf/util/find_bit.o
In file included from /git/linux/tools/include/../../arch/x86/include/uapi/asm/bitsperlong.h:11,
                 from /git/linux/tools/include/uapi/asm/bitsperlong.h:3,
                 from /git/linux/tools/include/linux/bits.h:6,
                 from /git/linux/tools/include/linux/bitops.h:13,
                 from ../lib/find_bit.c:17:

  # cd /git/linux/tools/include/../../arch/x86/include/uapi/asm/
  # pwd
  /git/linux/arch/x86/include/uapi/asm
  #

Now it is getting the one we want it to, i.e. the one inside tools/:

    CC       /tmp/build/perf/util/find_bit.o
  In file included from /git/linux/tools/arch/x86/include/uapi/asm/bitsperlong.h:11,
                   from /git/linux/tools/include/linux/bits.h:6,
                   from /git/linux/tools/include/linux/bitops.h:13,

Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Link: https://lkml.kernel.org/n/tip-8f8cfqywmf6jk8a3ucr0ixhu@git.kernel.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/include/uapi/asm/bitsperlong.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/tools/include/uapi/asm/bitsperlong.h b/tools/include/uapi/asm/bitsperlong.h
index 57aaeaf8e1920..edba4d93e9e6a 100644
--- a/tools/include/uapi/asm/bitsperlong.h
+++ b/tools/include/uapi/asm/bitsperlong.h
@@ -1,22 +1,22 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #if defined(__i386__) || defined(__x86_64__)
-#include "../../arch/x86/include/uapi/asm/bitsperlong.h"
+#include "../../../arch/x86/include/uapi/asm/bitsperlong.h"
 #elif defined(__aarch64__)
-#include "../../arch/arm64/include/uapi/asm/bitsperlong.h"
+#include "../../../arch/arm64/include/uapi/asm/bitsperlong.h"
 #elif defined(__powerpc__)
-#include "../../arch/powerpc/include/uapi/asm/bitsperlong.h"
+#include "../../../arch/powerpc/include/uapi/asm/bitsperlong.h"
 #elif defined(__s390__)
-#include "../../arch/s390/include/uapi/asm/bitsperlong.h"
+#include "../../../arch/s390/include/uapi/asm/bitsperlong.h"
 #elif defined(__sparc__)
-#include "../../arch/sparc/include/uapi/asm/bitsperlong.h"
+#include "../../../arch/sparc/include/uapi/asm/bitsperlong.h"
 #elif defined(__mips__)
-#include "../../arch/mips/include/uapi/asm/bitsperlong.h"
+#include "../../../arch/mips/include/uapi/asm/bitsperlong.h"
 #elif defined(__ia64__)
-#include "../../arch/ia64/include/uapi/asm/bitsperlong.h"
+#include "../../../arch/ia64/include/uapi/asm/bitsperlong.h"
 #elif defined(__riscv)
-#include "../../arch/riscv/include/uapi/asm/bitsperlong.h"
+#include "../../../arch/riscv/include/uapi/asm/bitsperlong.h"
 #elif defined(__alpha__)
-#include "../../arch/alpha/include/uapi/asm/bitsperlong.h"
+#include "../../../arch/alpha/include/uapi/asm/bitsperlong.h"
 #else
 #include <asm-generic/bitsperlong.h>
 #endif
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
