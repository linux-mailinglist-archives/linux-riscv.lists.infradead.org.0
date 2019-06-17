Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E3948D5F
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 21:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EE8Jf5Ho5Mj2bTLqZokQnqGuUWlFTprPYAhVv8leWA=; b=DfowQNub8e4iSl
	hl02V6WJn4xEIX2WN194m1DNilrtSaRRYwD2i5OMciWGFLt1DD2Xf/pspexvFMkhwofywme8VJLXh
	RcuZVql3lkltoeEF+2PmFU5yJojPE6xzFqHcSgkaeOS/oTUgDeASe90EIUDagaQ39CqRy0ONaXfNX
	qrYADVOgAROfxBligVUbwt6t8k1avoekqefeGwaxwZSSJKC1Vh0ygwDwZB/HqNoho0D5G/AOafHfP
	ngGFQ1knuNBTaRn4HrOocTkf9REeMxjXG187lZPpsnfafEPyK8PRYiiSuqDOvSgIYp+QQHZPLSQHd
	EMnTJchix1aQHY+fF22Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcwuW-0005Fs-B8; Mon, 17 Jun 2019 19:03:20 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcwsH-0003bW-RQ; Mon, 17 Jun 2019 19:01:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560798061; x=1592334061;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=41zR8QjGMqwDXm/EOxIo4VhtiejJSwkpc8NiWlOpJ0o=;
 b=EKmfXpL7QA9KpvaBunhOEYkMXhcuYgxnYw/5yMyJNmZ89KmCKpiLqffl
 i46ULg94aQNPjhbOM2gi4sIpnQEMxAFgG8FVKFmCTDbd2bqh05REjCPgx
 q89rdZ+Op4B8TfLdouE5ScXeSPbnvyDrt64h3wm4DAYuB5JZ+2m7RbYdk
 4R23N3jy+IsPOocHkO0D5skPAqnQNU+rCGo3jdPtzCo27fY/Nlzbb2RNX
 QkzxnswsW3augTTHvPC43/cnR2mRi5acYEuET5uRXT30ZnSxypn6rM4N6
 QOb0gSNYtGFFwdr91XZA6Ci50rIcF/1Eh/l3STg14pY0iRU9RPQKXRLS+ Q==;
X-IronPort-AV: E=Sophos;i="5.63,386,1557158400"; d="scan'208";a="217145888"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Jun 2019 03:01:00 +0800
IronPort-SDR: 5tdlOBQCTp0rlojKiVAVuCbOl+konm6LlSu/tdQ0FwQuh8hXW6UgZWQmUieoyutxnwQk+LTA1H
 wg8SSRL8RYeobG6TifLA4rNE/Is4RVSdQKjTKJ2+kEPrd5HrHnkoy6fy7bPF6DE+D6OuSeldBt
 2d9IDzPng5tCOYrUXIy0bRoUFUbEgt9XNcO5kvB/l4uk3lEIv0chO8zJItwur5V6/LqrhXq766
 Qxl4+9XtFEbWK4NUYzi67otWGUkL+E6vsshGPAvbFRpohV6AMZ0MDqyQSah8VKM2RAyDut+N9a
 4R4eCLF/YFk1MbMO+1+q3Mji
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 17 Jun 2019 12:00:31 -0700
IronPort-SDR: 5sUm89DLg86LTT++XMnEPR2jSdCE5MaQwfzr9HlRyf5iwKcy5zp28LRQQmd7TMxYAuZ1fNw30B
 459ZfbJFgwAVTKPs9nKxf1E4+lNKOaJVP0Fbr1Yl8K53d+JwBG5UWpUhzutPjcVT00hrkMYbdG
 Cae24DcFXM/uWBZR+PMIxGlEABrADVP8zbX2hGZgBNTHWXNel5CKyP9nufYJTM0aVyKGU9YlGZ
 CB93X6sU8FPK1IiwanicqFZIv/1vK9c/aeMY4WWXxRmO5T/cxXgiCdE69aDS0+1RIJBuY8Qv9J
 vsM=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Jun 2019 12:00:59 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 7/7] MAINTAINERS: Add an entry for generic architecture
 topology
Date: Mon, 17 Jun 2019 11:59:20 -0700
Message-Id: <20190617185920.29581-8-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617185920.29581-1-atish.patra@wdc.com>
References: <20190617185920.29581-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_120102_015742_1584F94B 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-kernel@lists.infradead.org, Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
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
index 57f496cff999..c6f7d7152f01 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6595,6 +6595,13 @@ W:	https://linuxtv.org
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
