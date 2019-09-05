Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BE9A98FD
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 05:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tnc9/Snq6QwIkq/Zeolajfp9hpRAuJjMKOVFU/V6Alc=; b=jmj
	pkfYBIBeh3WiSa6nF3SE1LhVwt0wxeA8yA+4a9AKvQk0GHorQTsdcaSyi6dNim/jRQEDL5tujfWh1
	Ir2gE9BrlHdQZCkXwC4H8iTN9C2V3sQBZy/+/GaAanBfijB7dF0oNYIrQJPaz2v4+5ndJyYbCANsQ
	btp/de5TKQcsDfzsa+ciQWSLNa/5Amtm39nl7wo3MvYk/cN5B5ewYQGEp7ze94WAUSO4YoLoNID/2
	YYwkNyPtlvIIKeoCJA4Xej5PwYVsZ1SigCdIct2ygATBHX14P58EyRZF6B11t+KuwDsAvqCfiQG+n
	+20NVuzasHelEM9347nkQMOMxCTVyTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ijQ-00077H-BE; Thu, 05 Sep 2019 03:46:48 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ijM-000762-MT
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 03:46:46 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07439447|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.453906-0.11693-0.429164; FP=0|0|0|0|0|-1|-1|-1;
 HT=e01l10434; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=9; RT=9; SR=0;
 TI=SMTPD_---.FP-7udU_1567655200; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.FP-7udU_1567655200)
 by smtp.aliyun-inc.com(10.147.40.44); Thu, 05 Sep 2019 11:46:40 +0800
From: Mao Han <han_mao@c-sky.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH V7 0/2] riscv: Add perf callchain support
Date: Thu,  5 Sep 2019 11:46:34 +0800
Message-Id: <cover.1567653632.git.han_mao@c-sky.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_204644_918629_1195AD2A 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Christoph Hellwig <hch@lst.de>, Mao Han <han_mao@c-sky.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patchset adds perf callchain(FP/DWARF) support for RISC-V.
It comes from the csky version callchain support with some
slight modifications. The patchset base on Linux 5.3-rc6.

The patchset has some 'checkpatch.pl --strict' warnings:
WARNING: Use #include <linux/perf_regs.h> instead of <asm/perf_regs.h>
#141: FILE: tools/perf/arch/riscv/include/perf_regs.h:9:
+#include <asm/perf_regs.h>

CHECK: Avoid CamelCase: <Dwfl_Thread>
#329: FILE: tools/perf/arch/riscv/util/unwind-libdw.c:9:
+bool libdw__arch_set_initial_registers(Dwfl_Thread *thread, void *arg)

CHECK: Avoid CamelCase: <Dwarf_Word>
#333: FILE: tools/perf/arch/riscv/util/unwind-libdw.c:13:
+	Dwarf_Word dwarf_regs[32];
As all the other Linux architectures use asm/perf_regs.h directly and
get these camelcases, I didn't try to fix them.

Changes since v6:
  - add "WITH Linux-syscall-note" for uapi headers.

Changes since v5:
  - use walk_stackframe from stacktrace.c to handle
    kernel callchain unwinding(fix invalid mem access)

Changes since v4:
  - Add missing PERF_HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET
    verified with extra CFLAGS(-Wall -Werror)

Changes since v3:
  - Add more strict check for unwind_frame_kernel
  - update for kernel 5.3

Changes since v2:
  - fix inconsistent comment
  - force to build kernel with -fno-omit-frame-pointer if perf
    event is enabled

Changes since v1:
  - simplify implementation and code convention

Signed-off-by: Mao Han <han_mao@c-sky.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Greentime Hu <green.hu@gmail.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: linux-riscv <linux-riscv@lists.infradead.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Guo Ren <guoren@kernel.org>

Mao Han (2):
  riscv: Add support for perf registers sampling
  riscv: Add support for libdw

 arch/riscv/Kconfig                            |  2 +
 arch/riscv/include/uapi/asm/perf_regs.h       | 42 ++++++++++++
 arch/riscv/kernel/Makefile                    |  1 +
 arch/riscv/kernel/perf_regs.c                 | 44 ++++++++++++
 tools/arch/riscv/include/uapi/asm/perf_regs.h | 42 ++++++++++++
 tools/perf/Makefile.config                    |  6 +-
 tools/perf/arch/riscv/Build                   |  1 +
 tools/perf/arch/riscv/Makefile                |  4 ++
 tools/perf/arch/riscv/include/perf_regs.h     | 96 +++++++++++++++++++++++++++
 tools/perf/arch/riscv/util/Build              |  2 +
 tools/perf/arch/riscv/util/dwarf-regs.c       | 72 ++++++++++++++++++++
 tools/perf/arch/riscv/util/unwind-libdw.c     | 57 ++++++++++++++++
 12 files changed, 368 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/uapi/asm/perf_regs.h
 create mode 100644 arch/riscv/kernel/perf_regs.c
 create mode 100644 tools/arch/riscv/include/uapi/asm/perf_regs.h
 create mode 100644 tools/perf/arch/riscv/Build
 create mode 100644 tools/perf/arch/riscv/Makefile
 create mode 100644 tools/perf/arch/riscv/include/perf_regs.h
 create mode 100644 tools/perf/arch/riscv/util/Build
 create mode 100644 tools/perf/arch/riscv/util/dwarf-regs.c
 create mode 100644 tools/perf/arch/riscv/util/unwind-libdw.c

-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
