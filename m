Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C43F160D57
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 09:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hcs3IYu1loQeGMz6D7BaruDwBKpT/QAWJLc9WJ9RvcU=; b=NsQBWZbPic8BvL
	1NUGwA17DeK51ePhNTJUna3Zv6wj11kT7do7PkwEIvfKXpJj+mooA15KDF6V3snNuDXdhXLDcdglX
	vHKBkWFiqAaFr/RxS9A6us6TmaIwsQakXHb4Uc8DWG3u0cDxwjTN9xvb6/vBnLpH4IBH8bkTJ9fcx
	0LwprLgVuC8w7WxVAIMvNvntFfDQ2Wa+Nn2iLx29o2LrUEfwfqCQtHe05F1869hiswfwMsfdgJFa1
	TRowV88qtV6Zol70zWSUjXhZn+HxyLGC9OtXPJch5hqHhR4Txv1w2qyN055rbufdCANJamrrKyAUz
	+OqyP/gKeYVbXOrui7/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bpS-0005aa-2U; Mon, 17 Feb 2020 08:32:34 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bpO-0005Zi-H9
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 08:32:31 +0000
Received: by mail-pl1-x644.google.com with SMTP id y1so6408395plp.7
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 00:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hcs3IYu1loQeGMz6D7BaruDwBKpT/QAWJLc9WJ9RvcU=;
 b=hJQ43EsIlapSjLKR42NfRJjH1Lsaw4P+FKomgrWFxgqnsCwR2ujO2E5Mqw+bPn0Yxu
 wipai+3ldCMpM3eS07bSj3k5yqo6YZQVMW0tuIltyYqE4aqN0JIUZjlt0uSkIgN4ob1o
 LoJjzNq62ebA+QLaIeie7/kd4Kvrq7jvVAz8DfqYhXkAx8DOUF69YcY38Kav0xSrk6zY
 QbgebI39Tva9CMqOkV6GCu3glUouzusjITCZT/XCA0/MYiiAgxxOcjHtbyOlDEQ7cVm9
 NDjvXCMOA3VE52APYJEffDbdHhbZLuJ7Q+a2OhrKWfTIzEkj45SeJmOQpZtt1HDZGWyR
 dJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hcs3IYu1loQeGMz6D7BaruDwBKpT/QAWJLc9WJ9RvcU=;
 b=nbdO4geToTTPP8Ne2MeYVwZbrbZ5vAoFR5lJxDO/XQpuXTJvK4gYaSMRAPv3VcpZlc
 gayONtjSPOnBkhC5g8YeHKFXveMEjIg9aXJgKOqyLNq1eSpmYx+ALzZR1swwooEWorx9
 mgh8BnhPu8GZ+boYbzzt5k2PQQLxbAdmDIAJa2bdpzUMRDvRUptO+rJ7hFCGXlEOyYWC
 KozCnFNIR++KGo9UPCsSfc/NnV5X0PWP+MbVwVNZGkMRs29r/mvBXBNTGMWrft/oGkHo
 VTB21l0MWa4KYr4wIfPLqOeKcDp1YLAApNc2IAyUILj9Z7nuDeq94kFG1ZiW1tedXAhx
 egdw==
X-Gm-Message-State: APjAAAWUGDQRtqKR4ZJTBUnNxdT3oFjtg39YjqYC1kvbMHGtyZHbh6Fq
 Euzry4LojlokNP83U3L+iNygJw==
X-Google-Smtp-Source: APXvYqxB9MmYpJKEMtx+61G6Xv0FfZl6HfdanIBdAUEALAkOL7licVIihuYQiaDeJscs1E4Ns8JUMQ==
X-Received: by 2002:a17:90a:1785:: with SMTP id
 q5mr18885984pja.143.1581928349196; 
 Mon, 17 Feb 2020 00:32:29 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id z10sm16989319pgz.88.2020.02.17.00.32.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 00:32:28 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/8] Support strict kernel memory permissions for security
Date: Mon, 17 Feb 2020 16:32:15 +0800
Message-Id: <20200217083223.2011-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003230_599995_533E0546 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The main purpose of this patch series is changing the kernel mapping permission
, make sure that code is not writeable, data is not executable, and read-only
data is neither writable nor executable.

This patch series also supports the relevant implementations such as
ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.

Zong Li (8):
  riscv: add ARCH_HAS_SET_MEMORY support
  riscv: add ARCH_HAS_SET_DIRECT_MAP support
  riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
  riscv: move exception table immediately after RO_DATA
  riscv: add alignment for text, rodata and data sections
  riscv: add STRICT_KERNEL_RWX support
  riscv: add DEBUG_WX support
  riscv: add two hook functions of ftrace

 arch/riscv/Kconfig                  |   6 +
 arch/riscv/Kconfig.debug            |  30 +++++
 arch/riscv/include/asm/ptdump.h     |   6 +
 arch/riscv/include/asm/set_memory.h |  41 ++++++
 arch/riscv/kernel/ftrace.c          |  18 +++
 arch/riscv/kernel/vmlinux.lds.S     |  12 +-
 arch/riscv/mm/Makefile              |   1 +
 arch/riscv/mm/init.c                |  47 +++++++
 arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++++
 9 files changed, 344 insertions(+), 4 deletions(-)
 create mode 100644 arch/riscv/include/asm/set_memory.h
 create mode 100644 arch/riscv/mm/pageattr.c

-- 
2.25.0


