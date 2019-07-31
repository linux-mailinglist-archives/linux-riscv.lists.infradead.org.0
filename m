Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCBE7B78B
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 03:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gd9dEP2KTBPcRjgjyGuG6Beo/l6pgEJiPr9Sio9TXSk=; b=VB3Tq8nMrCd4tx
	u6qmYBxTrUKggf68/wM81mAkaGoj4sibLgwxyJfH6T/HNw9pAlYkwtel/xqGxBKWuX6OvTs+p2IEs
	uFt1awKHcUQHwfVVpezxPCFmSHkR2hVx4bEMYmiQc8kjWug4c/GYd1dqFNByFvPDtdtvR8vGFbsJw
	U2EQuyL/evn12WXCct8d4KzLZVKS6utD7yiCTk45SNER1PO4btpBA40dfpKfEaqkXWlrzM/5mHjAd
	yiVUygpWxB4DKRVgf8sjVwemOZ7NGmiuH/siT1bPPJFVd/T9cr1iRp7ImBepnvRry7fRexcI1/hh+
	D19y1pQDjPNVS2z09QCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsdMC-0007nF-Iz; Wed, 31 Jul 2019 01:24:44 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsdM9-0007lV-MV
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 01:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564536282; x=1596072282;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JNdFTTJDwVdGW8P5Pk91XlkU/IeFj6Dz26xPddYDU28=;
 b=QkMZsgzWTv3w6558EtiUlpxWN00XBFgOg8EjzRtsABUJs827V9eD9c2l
 H+33px+k6A6U3TwyVBy1a0oZJLFeRa9GIhqwUiKnmK4Nb460xtGPtIIQL
 iKRXI4d8C24F9XOBJW0RhM7ef7cgRCgE124Xg4V59bQsphT7cTIP0naQS
 tYLLR218sgk5oXIa3nNGCXP/PHjvqhwWa+tipGpCwbFqjL5hZDpVFGPUl
 j+cAmUPwqulU/hkFlT1JGUXker+IF+DaNFp0lpyovsorlUgGLCa72mjHQ
 gRvsix0xLspvfapkhuPOnvLTuZqHCLPaG+ELK/g6kn0hkjOzAcxP2QW8z w==;
IronPort-SDR: QrJVbu0Od3OiQ0Hl+xgH0d8M9Bg7n/AqBVUyLYf6fq27vC8N9YpU9Sp536+Niq4XcC1XNDijo3
 lcDwxkR3ph2ZYwiElZF9Qt9CjSMQQx0h+GflG13vdVdqoYoCEsqP3ASDQ13qXywdU7Vr1nj+a7
 4GdbLi1vsHMWnAFm78lrTPVLALvKa93qOmBZZ1AdRUbCCveFepLnNs4ge5qWDsxui54VQbgB5K
 azhHYFMIXrBxbKssHhpBXPTB0QQhF2akBELGv/w64Pw6d7tWRnL1i9KLJVp+bY2NdDKcsY5Wqf
 LCY=
X-IronPort-AV: E=Sophos;i="5.64,328,1559491200"; d="scan'208";a="119218121"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 09:24:36 +0800
IronPort-SDR: VwwgFdzjlzR2/cTU0rDB49Lq66Lz6+2yY1JrPlpzrNwyQB2tTCz6+arv20jyQPMEftUB19ML+V
 83ZVU8p+qufoe9myzXueBWrcgLtl5kBVjrlftufupFNedCtOhhY/5kUnTyJMqosFrV6ZZ7VLjs
 PdBKpSC5h+XEtdByZh3DCgWQuZ+lBT9DBNNSEJ5l8skQCh4i4N4x9MYmhkX5xywkjDVzaMeEho
 /ET9EKogqhHklPaE5DmleOe6DIW/Pn0kUCSjuAcLdQLuATRtK+E5HGHCLLBJWYyAI6uWRag217
 RQ4/xFXbrFsWT0YO+5KLIWF1
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 30 Jul 2019 18:22:37 -0700
IronPort-SDR: R03ASlzY6GN7SI1Abs1LdfvtEfAh/JPexQ2OoDZva26KHh3shgAf1ahUfCObsGpRrqo0lTN8nC
 MqP5rYkp6YuBUXJ59M67mMa317qLfkCpsEMqGVZ0IIp4+C6imSHZPTCB2TD5eLIkecCiO9yDw3
 JMp2/aKq1Cjp4cKpCNUpTSkgmC8qwIvzITxLp0xe6VOCk6GEO0L3WO1/h61XnHh24w/1cYDzlQ
 Nz/7AssexUE7FXCypWkTmUYmkFLw/jLzX7xu08wqUIx5mzOwIJJCIatTexN3wIVK3MONDoFFAR
 vL4=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 Jul 2019 18:24:36 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] Miscellaneous fixes 
Date: Tue, 30 Jul 2019 18:24:13 -0700
Message-Id: <20190731012418.24565-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_182441_854417_0E6EB726 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series have some unrelated fixes related
to clocksource, dt-bindings and isa strings.

I combined them into series as most of them are
prerequisite for kvm patch series.

Changes from v1->v2:

1. Dropped the case-insensitive support patch and added a dt-bindings
   update patch.
2. Added a export symbol patch.

Anup Patel (1):
RISC-V: Add riscv_isa reprensenting ISA features common across CPUs

Atish Patra (4):
RISC-V: Remove per cpu clocksource
RISC-V: Fix unsupported isa string info.
RISC-V: Export few kernel symbols
dt-bindings: Update the isa string description

.../devicetree/bindings/riscv/cpus.yaml       |  6 ++-
arch/riscv/include/asm/hwcap.h                | 25 ++++++++++
arch/riscv/kernel/cpu.c                       | 47 +++++++++++++++----
arch/riscv/kernel/cpufeature.c                | 41 ++++++++++++++--
arch/riscv/kernel/smp.c                       |  2 +-
arch/riscv/kernel/time.c                      |  1 +
drivers/clocksource/timer-riscv.c             |  6 +--
7 files changed, 109 insertions(+), 19 deletions(-)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
