Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D665C83B58
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 23:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0KY+VYaH70mR7qxpva9i8/sRKlVoxZKZaX/ygABQiA=; b=jRa3SrLppcB0iB
	dgnMkJX8ruYqpGVoevNh0m7PdzcFZbqvPl9zaUlZ3Fpnt90jCRMancypOvh/x5I9k9VYZXiXyWNzE
	kagwI45RbHcxV1iIqpBUU5zbeSFAZsFKsq4Klq52QZlCTV0Y6pg79qCIead+d7TAs2NMUsvM0FoxL
	xAH83NYXajS+qIrLvvtnpFwKV55PvaBuroVX9KfpPwVrynugZbFcoWZ5k/3V5QWmcCfE/wbiXGhck
	+2nu/EnaxTxBrKqfcfM4Q7Oz87ie1atElEu+IjL6RvOCmv3ZpQG8ljjBdM7+RuWX50rt8Eq6a/F+X
	U0WbRdhYXzCSt7cxBPng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv76M-0002mc-F2; Tue, 06 Aug 2019 21:34:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv76I-0002lp-KF
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 21:34:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E00472186A;
 Tue,  6 Aug 2019 21:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565127273;
 bh=BA+UGscKPxuHl3GcdkS7m3JOxOxCmTFTvrCrso1YyF4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WOH2o4JDkeT5aoSs9KFR8S9XHuUmM3HGCoHFjFeTGf1f8GD8ehcu6/7qxEZN8LcL8
 IKXF9VdGmhZCFzGcY4/wNiCATSTIQXflaCji6G0TPhAGXWrhuBiV0TdyV9VQbEkEgL
 RDrC3fXcqTAzU+l8Ai6p48opgkk2bTEUkTlaxuU0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 38/59] riscv: Fix perf record without libelf
 support
Date: Tue,  6 Aug 2019 17:32:58 -0400
Message-Id: <20190806213319.19203-38-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806213319.19203-1-sashal@kernel.org>
References: <20190806213319.19203-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_143434_689228_FB686172 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Mao Han <han_mao@c-sky.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Mao Han <han_mao@c-sky.com>

[ Upstream commit b399abe7c21e248dc6224cadc9a378a2beb10cfd ]

This patch fix following perf record error by linking vdso.so with
build id.

perf.data      perf.data.old
[ perf record: Woken up 1 times to write data ]
free(): double free detected in tcache 2
Aborted

perf record use filename__read_build_id(util/symbol-minimal.c) to get
build id when libelf is not supported. When vdso.so is linked without
build id, the section size of PT_NOTE will be zero, buf size will
realloc to zero and cause memory corruption.

Signed-off-by: Mao Han <han_mao@c-sky.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index f1d6ffe43e428..49a5852fd07dd 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -37,7 +37,7 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 # these symbols in the kernel code rather than hand-coded addresses.
 
 SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
-	-Wl,--hash-style=both
+	-Wl,--build-id -Wl,--hash-style=both
 $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
 	$(call if_changed,vdsold)
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
