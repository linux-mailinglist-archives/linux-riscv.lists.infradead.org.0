Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137C26DAFC
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 06:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awqcoD4Ml2qAN2/vG38JUB+YQSK2pt+Kj1n2sqR4WrU=; b=Yb0BBkqcDJZMx7
	icL54PuNckDuJJcy1/hz/mSpQEiRuErzeLTVEIkHIXvontrnlUyIVNA/+jTarQ/plFrKfVi8dUH9i
	FzCOzDugzSkqhFVCVtiJiufgGzr46E7AoTT9xXgo6ahQ4cK4Z2AMn5vfoCjlNZiB0PhsDXETueY1O
	8mm7zh+vTpaLTiucoDVj/h4W+nEPkBwsJ40jzdV9EFPa82EogUMevv/WxMGUz3ihrJgBOr1vVn/NB
	gGBXbdR6TRidYD6fJwmcFd5LtgxpwHk1f8GKGnZbuwYsFzyRyi7UGpPs2p6sOGsIMmNOXTPZ6XbRM
	khrIIMjYFyLsQqYG7XVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoK9Y-0002aY-PP; Fri, 19 Jul 2019 04:05:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoK7M-0008U4-Ga
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 04:03:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05F9E218BB;
 Fri, 19 Jul 2019 04:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563509015;
 bh=c+iRnZ27tC9FBRyjBCfA8nzhfMEhSdTERTls/ftsW8U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e+lR9ZBlzwxJicApcquL9mcDjrtktcJfNitKAng7ZaLhCAvzMNtFZH7Gpw6j9c4Rr
 RlJpNYQJWpqy9mlAIZPTr1Qc4CIkQINATUnGPgidpeOQCFvgvWtcw5KIz37uBmiZxi
 fqMXuPm57jS2sUy4NAinK2dHUSMWI4FKqPTVjg+o=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 022/141] tools: PCI: Fix broken pcitest compilation
Date: Fri, 19 Jul 2019 00:00:47 -0400
Message-Id: <20190719040246.15945-22-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040246.15945-1-sashal@kernel.org>
References: <20190719040246.15945-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210336_712769_C89626C8 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Alan Mikhak <alan.mikhak@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Alan Mikhak <alan.mikhak@sifive.com>

[ Upstream commit 8a5e0af240e07dd3d4897eb8ff52aab757da7fab ]

pcitest is currently broken due to the following compiler error
and related warning. Fix by changing the run_test() function
signature to return an integer result.

pcitest.c: In function run_test:
pcitest.c:143:9: warning: return with a value, in function
returning void
  return (ret < 0) ? ret : 1 - ret; /* return 0 if test succeeded */

pcitest.c: In function main:
pcitest.c:232:9: error: void value not ignored as it ought to be
  return run_test(test);

Fixes: fef31ecaaf2c ("tools: PCI: Fix compilation warnings")
Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/pci/pcitest.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/pci/pcitest.c b/tools/pci/pcitest.c
index ec4d51f3308b..4c5be77c211f 100644
--- a/tools/pci/pcitest.c
+++ b/tools/pci/pcitest.c
@@ -47,15 +47,15 @@ struct pci_test {
 	unsigned long	size;
 };
 
-static void run_test(struct pci_test *test)
+static int run_test(struct pci_test *test)
 {
-	long ret;
+	int ret = -EINVAL;
 	int fd;
 
 	fd = open(test->device, O_RDWR);
 	if (fd < 0) {
 		perror("can't open PCI Endpoint Test device");
-		return;
+		return -ENODEV;
 	}
 
 	if (test->barnum >= 0 && test->barnum <= 5) {
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
