Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D911B2E749
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 23:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zBl8JbTX5AEQBzCFca4hZQKwnWLPHzER7/+xj4k0lo=; b=jLQGERWnshaKWD
	FAqKpkAH2SGx3NJOEx1hg90lGlFkyxfFVcw/gn02f4VtRarmSZSK+bNZh9nCL5sDTjUrEPpJqvcYt
	q7tgcuwEpHmh/MGpbfpYf+hWL2RGpUX9UxiC4sP/kdQRsWwy6CSYZfWwA0/asvzwvy1E9Ru8Npmqp
	H+Pv+ZPvpX6jDgw/gJ70+d0vWQ0Ok56kzD6ZygpSYFN42G+1TNjYd3X3FXyuWR/MVkylu84NYzE8L
	R7jtFzCjqqIOL4pkl/gwhgv9GV9jSIJtrIA8hWdCNzt90PyZ9oTiUMuD7hpqN9xJH+2VAVdtO2mmU
	Aq1jLE0czO4HTAyu5Bjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5wZ-0000oV-P8; Wed, 29 May 2019 21:17:07 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5wI-0000QW-5w; Wed, 29 May 2019 21:16:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559164610; x=1590700610;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t6/BBRKinUB4rge6hAORapSWWPFH+YEGVDDiNjrTWJA=;
 b=aViAEm0/NOE5aSc/pPcikzMaIPkw66HZoh8XS2YMaXG3B7iFFGFQqi8E
 nShjXTMgNucKbUBuiX3XDBV+Wtiord8txg86Wsax92LjMCVT5DYwoU4wV
 KfpeLIuatx0T3+TaPzbcuTewcH86KShg84Xk66Wter4E0aeP1w8eHXHNQ
 2bzxsNG5QyHcp4KzMCFr6bJXTDGr/a/xXyuOh9f4xzHKXWmDWJ+5BWvm2
 H7nvFTNWhabwAukdWMCMcgMOUDRknulAXKc72OHxgePRkriW7c+TTfdE1
 JtweMznoO42+8B0QRslToAHOY6+rTMJjt8oQN+2D3n4LFRjn9kNghhqu0 A==;
X-IronPort-AV: E=Sophos;i="5.60,527,1549900800"; d="scan'208";a="215589989"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2019 05:16:49 +0800
IronPort-SDR: dax/yysEuhS7yOlJ+YN2XBekIakfAPoYtwRwEr78No0xSqrJISOW//0kEoQyTtoH/HAi+xQIch
 yE6TAeApChadFLABfLpy9yAjckH6GUHXteQvqZccH5JQPG7g5aJdt00T8KNt9iPURWQktIV4XL
 DJfHbq7s8GXXkeIlRA+1CjpRKkBEh9hSf2W/fxyUC2ujZzkEwhSpftgxmGOkwe1l1nu6Mry0v2
 AzeBnNtmpVKvjE4O5LFERXJeujQqEtWg9CDyG/Vqc21X59hy5qHCl9CoMBSRPEeflWkvPQrMxM
 CfFZZZGG4MLXeK4cYuYWf6bo
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 May 2019 13:54:21 -0700
IronPort-SDR: AtYWETTfUQbYBogdkAYSQ9pD04Qgx/UBv+7e7JgZLMDSy8je1uswZmLuzGHBuBVOlP9GIKuarN
 EVG63Bzc1dznWiALKhS790djk1hjza3hs0FBXbCFeETWKPPZG8+GdQGKOepq3o9LP1t6kOuit3
 vpcn0jy2WV2CpCwHXQMUcLJRzP4PVH6LZMIbT6KA2P8cn34CJjqc68GQbK6hNBdxKF0uHk0uWB
 cnpyuhVgsdf2EaU3Etyc82a0IK/bY9SCTlHQenWjPwXcU+T/zQQcQgSEzw2dKItxYw0Ba+LMHc
 3CY=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 May 2019 14:16:49 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 7/7] MAINTAINERS: Add an entry for generic architecture
 topology
Date: Wed, 29 May 2019 14:13:40 -0700
Message-Id: <20190529211340.17087-8-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529211340.17087-1-atish.patra@wdc.com>
References: <20190529211340.17087-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_141650_572227_34848724 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Juri Lelli <juri.lelli@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

arm and arm64 shared lot of CPU topology related code. This was
consolidated under driver/base/arch_topology.c by Juri. Now RISC-V
is also started sharing the same code pulling more code from arm64
into arch_topology.c

Since I was involved in the review from the beginning, I would like
to assume maintenance for the same.

Cc: Will Deacon <will.deacon@arm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Acked-by: Juri Lelli <juri.lelli@redhat.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 429c6c624861..f0b72ed51e22 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6583,6 +6583,13 @@ W:	https://linuxtv.org
 S:	Maintained
 F:	drivers/media/radio/radio-gemtek*
 
+GENERIC ARCHITECTURE TOPOLOGY
+M:	Sudeep Holla <sudeep.holla@arm.com>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	drivers/base/arch_topology.c
+F:	include/linux/arch_topology.h
+
 GENERIC GPIO I2C DRIVER
 M:	Wolfram Sang <wsa+renesas@sang-engineering.com>
 S:	Supported
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
