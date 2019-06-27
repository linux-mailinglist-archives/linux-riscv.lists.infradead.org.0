Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B2458B4A
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 21:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVMF+w7qJ4QxD3zYJIkvoHY+qMhKOc2qglGNpaIR/1U=; b=lwbZziuXZgXgoW
	AXMN8cZPwHc2k5XF3CrtchbXmsnsyUeRAsmRswqgea06Tkw9m8KzVIGvoG5PxGw0HRmYG65RDmHe5
	gh/bh/vAjyj1NN7i+M7RQ29qM88HNmNx2p31KNYPn1C95LoaKxj9/rrtPlM+LN2KGMwqiraXdRZal
	QuKKs+YoBd2WiIxib2b4zApT/ArVf9NwH9VZ8Rxuxcy0H4EEcvF9SrUmw5UMsljzS6neyYBhB94x9
	Mhc+74lN7dNXQTqp8ca951Yy+sBZHNU1vAKG1s1oG722/mRD6t0eMxME6wVc/UqSM78TGW29rQ3pj
	9Tq8cwF9wJrVtMMm6G5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaX3-0006KX-23; Thu, 27 Jun 2019 19:58:09 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaUW-0004KX-7T; Thu, 27 Jun 2019 19:55:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561665332; x=1593201332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oQMIBe4X+ZjTJgO+RVN0FBG87NxgHXHIhEqoSO1Ulas=;
 b=clX0R9ICcRlrJjbdO/ODH5bifM3hm7VQs9J9H8DrVgRqfab5C7j5YcC9
 vCADCSTjkYAMFhkV1rl07rLhQ3Qhl7kG+PEXdV2JvLobIWXiTCk5Rrofs
 TztijLPPD2hFWBeWkOkwBIuZjoO45p6nHEqHxjeUQfcS0plGyLEuZDDoi
 jhLc1nws1B+X0e69Z7EaiKDVfS+l23cOY00sKxzOjcK96wcUKzAhhx2dt
 LqyZ0JZskgkPX2sDbhz6UAI2Udi8RiYuAR+zarxhdnBPChjkJWagIZ3GX
 J3Wrx+9LwNaSOUtMGCUiOeCUQG5mP84v9Mt1fNB3Vi3jOd0G+NyV3n4at w==;
X-IronPort-AV: E=Sophos;i="5.63,424,1557158400"; d="scan'208";a="113353784"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jun 2019 03:55:30 +0800
IronPort-SDR: pdxqhM88FpoXLWmHzj6kck0ABJz2f1ONlsOaDrTcG2L81YJF6xxuP9vjDlxBd3faqxosQBBI1/
 l/Sn4mzrn16UuWtpiq0dX3O3QDtOikLVg9rgP+LeI3JIsy+FCH1XbI/eXgy7YThCa0CMDbXYCx
 WVTuFO+9IS5Cr0Zk6H38nNmwjQC/Z5gCoTAlvDkc6MdVRIKO1xGaJ4qRuyh80d3VN05lhtpwYS
 +0EhYv0LCyKNDxz0JBKMmmxoXwBIhlztB/TjUSNsmED7xMeC3ARw6nOMHAUbzUPTG6opdrRcsM
 X3E+rfGdQZ/+fstK1AqLyq/c
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 27 Jun 2019 12:54:42 -0700
IronPort-SDR: VKMKNLoNwcVlcafpKYKocVIPgXmwVxuRxjJwhvS06W1GGyBrtK7utAxstFIXBnWKdzCF1x8wsK
 XJZctog61N4/pDEuD0ioEVUe5arFvGOiD+0uQOXuasKnvmvKaP5h/TGkH6UL8gbfz0YoH51WFH
 xrSwRYbO/moGR7R87FJCQ97cpTUvhwbD5ewCvzhOpnTniTpRB+KlumuU7I2vU8/O4gvbAauHLz
 cgrRMGMuG4NbZ/B6aDXGUTCFMTaGyew2ePpYxLxvH6dLfxOxh3jbGPfnhFGwCTZ/6aqR+81OZT
 sHw=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jun 2019 12:55:29 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 7/7] MAINTAINERS: Add an entry for generic architecture
 topology
Date: Thu, 27 Jun 2019 12:53:02 -0700
Message-Id: <20190627195302.28300-8-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627195302.28300-1-atish.patra@wdc.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_125532_620611_616757D3 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
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
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d0ed735994a5..453d2eebcff0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6594,6 +6594,13 @@ W:	https://linuxtv.org
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
