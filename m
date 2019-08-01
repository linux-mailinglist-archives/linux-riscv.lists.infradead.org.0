Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59EB7D27B
	for <lists+linux-riscv@lfdr.de>; Thu,  1 Aug 2019 02:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5VU1U/Y4YlGD/wAVIGFBHxpJ/SBdm9akbwaAtGvHU0=; b=eXY8CrCs/iVdiE
	HEK+ljUcsrGs9nxCFpmKfqyqajqPv1oAc8qAFVK9hZwD97v/TPwKjoGTZ11klbbwYtcOzrdILC4oU
	sTwozMY5ld/rgUDnOsjTo0LOVYnh1apHz/Kcv/urr332T2lpwgwIc3cIFzIRZDdibN5f/YCGZc3TP
	d/EDslWwDaTWIKJjBtvwCuM81Xos7/cQLXNoUCNB21i2GsuYuMT8wjmBg0Y8tmuKHg/22648fzWjm
	VYH0RkMU3c6U/n0CeldaaBi4u8aBlujsM8lX0rq3mfZ1G3bq2FTWiNK8hdjPf3UyG8NovPseW2TQm
	2ZYn7lrC7lor6Kj/vmiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszQf-0000FF-1f; Thu, 01 Aug 2019 00:58:49 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszQb-0000BA-6X
 for linux-riscv@lists.infradead.org; Thu, 01 Aug 2019 00:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564621125; x=1596157125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EgHMt/UGrlopQ8ONP3bfsGEh2iUNdhTT7QH850cl4Xs=;
 b=KI/vUDPGncR47cFBhqaiPQAkDemWq180v4vrfp1A99Y9Gr9atwWw/MbK
 mRlBlgIdphaotWMI4E4fWEzfxP3VQk4BiEiFB6ZVZkMq23iImzYUc16KY
 l0mPpqAQkrPp2qs0rOLyebfb3F4vPGSijlC48y+8twWAB2i+vXg82jBij
 gqbhbU05eSyix+ip4Lj+MTo2J9UA0E9h+e8ExnwvCYNxQzPIreS5H40se
 2MroYxk5NA7HBD4xdgLD3V4jYwFJpGacTUs/WBoE/24TfMxH/SE17dgdP
 X/FzDdAKTxrNLileL5eDpX34tKHsZXb5klz/Eab38gWueC8Bgd6hrsHG+ w==;
IronPort-SDR: knYyR9SdKpWezRobXDatNUi92flNM3w/sjE6LngNdIjO4PtXYolt0yYyR06EZo6EEnOLu97I2h
 yWWMlcygKvRDDf4iY7ZTLa/9t+lSr2TaBY/l3HA+9ryLIpy9SVNh0YCIip4LTQX8XCF4t34Grf
 G3SqV7vzvqTT8V4Q+Vqidr1WGJyp1/u4aOJZwHkF6PrK0ExlXHl0MjDNcgQB5Erya50vrlixh3
 VKpIjRmgUbNFVG+dRDtg8Z1jS7DFtLdZef6xLHkk5wpftey29y2RjaaFoUxwUfgf2QIDsnrNL0
 Ebc=
X-IronPort-AV: E=Sophos;i="5.64,332,1559491200"; d="scan'208";a="114650427"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 01 Aug 2019 08:58:39 +0800
IronPort-SDR: Kw4+AaKpKe3DONcO46TXkcLC+ZLmmlX1qk5fTOPTYXIt9u27cXw6i4GEwZ6qXeTi0ndCx5byEW
 eRiZmR7F80giYT1wwGmdJ28FecEdQ13kWXWoTDeoHXZrTU3Si2AnL7dnIMBLp8jxryI3fAoDZN
 sMatC6Ands0TU6xeYpN5RH/V7u+Vvl1JajtXL8Ea7HMVqHGksB+B3v1H81R8ageWE/OKKfGLjG
 kwvM7ffKGA9QNpOYrZLscXl7eE197t+/66iFQU0R6JGSv1qDplyKf2u6UPRr3I1PGFhW0Fmr8r
 mGG4Z2MtvPVKUPNhpgqbHjVK
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 17:56:39 -0700
IronPort-SDR: vB0wWq2g5VV0TXjRYxActlFjCpILQXjTEq4ugNlJDp2TqO/ZK2OOY0Dlhb009q/s7ft8HAdxBu
 IhKw36nvIfY7stv34BJEtkttLD3H8bBhk3ZMUti3CMRVJgkX5Uups95qBb9dvX9InN9jqPFnon
 tGcyUmGj3MZoYpfhq+g+GowPPHTq1b2YGxZveEKK0VM4OIAPCV2KViQcHw7ZBpZ+C2uvI+QxOf
 phjgQoFz4bRa8s+eRujUlM2H32JPZC8Nk8g39aZbYOaOUE9k+/5suzpdl++3i0UUfc2p7FJnfF
 ZME=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 31 Jul 2019 17:58:39 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/5] RISC-V: Export few kernel symbols
Date: Wed, 31 Jul 2019 17:58:42 -0700
Message-Id: <20190801005843.10343-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190801005843.10343-1-atish.patra@wdc.com>
References: <20190801005843.10343-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_175845_300258_4B4E26B3 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Export few symbols used by kvm module. Without this, kvm can not
be compiled as a module.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/smp.c  | 2 +-
 arch/riscv/kernel/time.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 5a9834503a2f..402979f575de 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -193,4 +193,4 @@ void smp_send_reschedule(int cpu)
 {
 	send_ipi_message(cpumask_of(cpu), IPI_RESCHEDULE);
 }
-
+EXPORT_SYMBOL_GPL(smp_send_reschedule);
diff --git a/arch/riscv/kernel/time.c b/arch/riscv/kernel/time.c
index 541a2b885814..9dd1f2e64db1 100644
--- a/arch/riscv/kernel/time.c
+++ b/arch/riscv/kernel/time.c
@@ -9,6 +9,7 @@
 #include <asm/sbi.h>
 
 unsigned long riscv_timebase;
+EXPORT_SYMBOL_GPL(riscv_timebase);
 
 void __init time_init(void)
 {
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
