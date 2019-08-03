Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF20F80464
	for <lists+linux-riscv@lfdr.de>; Sat,  3 Aug 2019 06:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e0UJJoZtWGTkIj4t7OAZ8OmF+wvJfoQPgQcPbDVdw30=; b=sBsy8oToBli72A
	7kKGpZOKCvPOGAIL3BpsUaXfAlCKRrYwrHP9nxZwcWhbXF4HbJl9ZJ4zd+MpaQzFvi8plXt/IPUau
	1yijt89JnKSdPik5RZRnrZI/IxaSuG0u8Nhb3DjBiE+xNiLK7OpCefnrVqRGrzUYSyXmTS7eXHUHj
	KamsCpsnXQDKAdhw+lbSkPkpD3di9ny5CB6CqVd0fHsSUjKybWC4J0vU4+XrBtfaLhBNIxBkdWesm
	2mdLDRb6+zOXFIvM+sfFyjTa58iM9Br/pLX05yqCUS2OokrNKJAZJ+v9X9SzDFCv4vaNsXC4jbHvi
	zqPQTZwe+IrcslwO8dhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htldl-0001hD-0Y; Sat, 03 Aug 2019 04:27:33 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htldg-0001fT-Gb
 for linux-riscv@lists.infradead.org; Sat, 03 Aug 2019 04:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564806448; x=1596342448;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WGA9LNHmgoVjWNUYeIrs9rW619vN81TklxixEztnNLM=;
 b=rXa9ARSRxuCi+w/hjEa49xhc9W0Hy3EM1WlQrXye6iumrZ894O3lax7A
 SFtTowY2uODa/yYla0B+D/f3/wtSwu/alcZas1Ts8SvcasIyS6uHFQ74a
 JhVkC1i9VBJdzJXaIJ7EX6cijfXrfdfFxHXvSCnNHyuninAFFLNtpAmqJ
 v83p4pSZfVwmhpjraS6dUrKRHqrQA7YwMWxs16YDpG4dRUUreoqsTGa5c
 sO+8bliMppl3Iz1HCyqgK8meGK4yVSyYIseagTm9OF+QgRFD3zHOIoDNW
 six2NjjVIVUvL10uHKStP1UciyKOVMoJl1nlMEfFQSlBbwKm4x9wLhnG3 w==;
IronPort-SDR: evaBsyGyw/O2lTVxWLqyJIwQzC0WrYwqmNzmZN5qYMFFFBjSi4g3sF1voNAjpC5KlsHqwrfnMn
 dfz3hqqgRiJMykdR4ihcEJ140+SqjxCDfvib1HdOSirwE6Ee8T8JXwZXiM4ytGl9N2GevmDmD0
 l5yi0DCu3OTIuV9mUhd022CUrlXNccN4vkkH+r+GNjSh+CPzWgE4/WN5fN9H6LlHj9IszMD0h8
 eAKv10BLCYzNW5toGZygt47gZNbAx+ySs+EeKzHkfolfM8WfMWpvXGQr480czq4t7xq5QSIGD1
 xdA=
X-IronPort-AV: E=Sophos;i="5.64,340,1559491200"; d="scan'208";a="119512909"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 03 Aug 2019 12:27:23 +0800
IronPort-SDR: WxZqloPFOOHAhjN2p48JengQCz5LaA9TiqrNt+6fthhDyf+pkZ8bmIUDxCua7J9tKHlWOg1BAt
 7v727KJH5F+nqUeDIP63ffEiLHQ6estPfNW/q7Z9XSLTjlJidxRouUXZUOGDp6pEQbN5KFbLot
 bxtz11ifWUhDnqGKC7FJ49XWlwTOQaH37Sgp2xe3Cy2K4xdTCu3K0WMG2sOAmQYy/oGIM8c9qL
 vfLh2t3DMfkEOE8MpIf6t+02iezWfc3Z2SFzSw9ZaTBP5AEeT3YHb9ziC2qTNHs68bp+sLud0F
 cooOUmIs0+vi0PrVvSGsmmMe
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 21:25:18 -0700
IronPort-SDR: QXW8xcKK5nFNUmRNgUr/m0wldyNbVndOvpTNiNeTvE0moFFjOp9Ub+Ee/L6VfiNmNggTMwmJ8r
 CAnVg8TA3d6xkLB09DKJSy1uEesSSnvhvMVmIxH4+RdqkiOB1A12LwDgeehVptgUm67QfvOSmh
 uNnwGrUbMFPuhFp7iLEIkXNCZjxNhxNYDZbefXEnjJNCSxZgt0FZrY7M/JLZle4OChfDFUyFN0
 Uso741IWCnJefG04G+bZP47adDLO8zj/3CseWcC6JAXEea+X1u485icJhcOasvBTR2/PQmBeGM
 ilw=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 02 Aug 2019 21:27:24 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] Miscellaneous fixes 
Date: Fri,  2 Aug 2019 21:27:19 -0700
Message-Id: <20190803042723.7163-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_212728_667678_2CC0F699 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series have some unrelated fixes related
to clocksource, dt-bindings and isa strings.

I combined them into series as most of them are
prerequisite for kvm patch series.

Changes from v3->v4:
1. Removed export module patch.
2. Updated dt binding description.

Changes from v2->v3:
1. Updated commit text of dt binding patch.
2. Removed couple of remaining uppercase usage.

Changes from v1->v2:

1. Dropped the case-insensitive support patch and added a dt-bindings
   update patch.
2. Added a export symbol patch.

Anup Patel (1):
RISC-V: Add riscv_isa reprensenting ISA features common across CPUs

Atish Patra (3):
RISC-V: Remove per cpu clocksource
RISC-V: Fix unsupported isa string info.
dt-bindings: Update the riscv,isa string description

.../devicetree/bindings/riscv/cpus.yaml       |  4 ++
arch/riscv/include/asm/hwcap.h                | 16 +++++++
arch/riscv/kernel/cpu.c                       | 47 +++++++++++++++----
arch/riscv/kernel/cpufeature.c                | 39 +++++++++++++--
drivers/clocksource/timer-riscv.c             |  6 +--
5 files changed, 95 insertions(+), 17 deletions(-)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
