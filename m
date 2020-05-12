Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F15C1CFC22
	for <lists+linux-riscv@lfdr.de>; Tue, 12 May 2020 19:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ihEijElopu6eOurwB1Pey4kfpNkG9QrDKxk17lo5BLI=; b=psdDY5BhTos1nN
	6863is1hiQo5Re9X26yh47MxKNzMDwTfjrvOUagHXgPamjRpPTBSXdhLeftnp63WEH2Tim8EUnnEw
	5bmRPzHwYsMIGQbft3W+oQnu/EOLkb2srySrv2lu/EMd/vlXi+fpawW8Y2RFEWKU7lTiBesHyGNWG
	3gIY34StgGPhvy62oUI1I89FrwytmXyLFSaTBpx5KVCZ6DrlN1HJFcVsO6k8cLB41B5tknc4nvUz5
	3Z6QGJrm503QROLIlKhTLf/x5YXinhITVva8GoGj1IQoxe4AecJj1dhQ3gbd24CqUnqVY9Bwzc9zZ
	X3sXuivWktHSu82Dpx8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYgR-0001Ev-T7; Tue, 12 May 2020 17:27:11 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYgN-0001DW-JV
 for linux-riscv@lists.infradead.org; Tue, 12 May 2020 17:27:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589304428; x=1620840428;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pkopmhjPeLL3KurZFQqOAJKPug0srGyFJVNPAWCZUnQ=;
 b=EZ/FMWcA7rhS5ECuv39xh7ptnrXK0FANW0RrTW4dXz2bHWRoLZccf3rF
 bSB4ouamjApmNKXO7To+0s4p0YhD7tYlWTMbuMnI43njjia90IyPMIp+I
 urxcxD3idnRm3JIFNk/NG4zd/HVao/FWe6CmhCx8HEJ5BWCZfcpjq39rt
 Iq7XQXUonWRFDxXDS8MOgEhiBWENbAgVNjGJJ66OkKjsTshrRaMpSoKOx
 CihWtgb+guxUbghD0j8rOY+NLIXeiNVFErbT4fVm76uJ7czaX+bJsDzeg
 xUZCnENjNgURsrVQa5S/H445WpLmxxM17PyGZg/XWQ3FeZLZrGZSUn0n/ A==;
IronPort-SDR: Fo9oNtxUuBaFm91TYgoLBLZIPWovAi2iAJkMEQGdamgyNjz77a7jbEjG77sFBRSL0/2+feAO0q
 jxbEZpTtf2XocD2ZNrofpsx3FqOjoMoWgZ7S/tzscEnP3CktQTTuM3mOXkTfGxAlmLJ5w9lEGD
 Xv2oychGWDUog2yG1ndg2nkr7NZ2VtjuiX78g8KYoiWFInh70eDZ5tg7L9X9++kM42qDOpOTg0
 WTMx6uxxRNp86zYn03MHG+rmQlMRInnS7qKH8PLQNj4sZ8c2XfMwoJAxM7EoUqgu+YJ2v6F5Jk
 XJ8=
X-IronPort-AV: E=Sophos;i="5.73,384,1583164800"; d="scan'208";a="141861202"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2020 01:27:04 +0800
IronPort-SDR: dn3wHA50F2ybgMzzEDLO4pCo1Iw7Qm7RPkBf1kpHGiqk55HvMyu3+cBdJomAGPz8gPw8SE+98e
 dVKxNBpW48ZCGD8B3m18/ogIyw75AnF5k=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:17:19 -0700
IronPort-SDR: 2ejtzASysWYYZdITFELGb9zYXq8bhGjmDZIhqQerDQZ0ODBXymb1YEIFDwnpa3m4RQhiDcNDdj
 sHsrvCZ1Dsyw==
WDCIronportException: Internal
Received: from unknown (HELO yoda.hgst.com) ([10.86.57.98])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 May 2020 10:27:03 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] irqchip/sifive-plic: Remove incorrect requirement about
 number of irq contexts
Date: Tue, 12 May 2020 10:26:36 -0700
Message-Id: <20200512172636.96299-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_102707_649707_6BC5F2BD 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 "Wesley W. Terpstra" <wesley@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Marc Zyngier <maz@kernel.org>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: "Wesley W. Terpstra" <wesley@sifive.com>

A PLIC may not be connected to all the cores. In that case, nr_contexts
may be less than num_possible_cpus. This requirement is only valid a single
PLIC is the only interrupt controller for the whole system.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
[Atish: Modified the commit text]
Signed-off-by: "Wesley W. Terpstra" <wesley@sifive.com>
---
 drivers/irqchip/irq-sifive-plic.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index d0a71febdadc..822e074c0600 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -301,8 +301,6 @@ static int __init plic_init(struct device_node *node,
 	nr_contexts = of_irq_count(node);
 	if (WARN_ON(!nr_contexts))
 		goto out_iounmap;
-	if (WARN_ON(nr_contexts < num_possible_cpus()))
-		goto out_iounmap;
 
 	error = -ENOMEM;
 	priv->irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
-- 
2.26.2


