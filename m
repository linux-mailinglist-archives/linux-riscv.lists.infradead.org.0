Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2026D9D1
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 05:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOFaponIHhYJPD5eniLXV8ERgg5XnDzZ4O1IbPz/j+4=; b=tp1nLkDSR1oXlw
	tr/V7oxnPVyYSD+0IpmxOz1CFK9y1IVpu3zFOoPR846/O+VrvFlWLcAv6J4C9NQhrxehiq5qWKo3+
	uH6Dwl9vwGJ2Gf2LdxKsUzoO1cEgtvhp4TDaTD7VbgC2gMmsYET6+qsAyvQTaDLjdkUKe+VAXniXX
	XFpo/DomSRQMfJjdVaBbsrIN0Su7Thf+x5GJT7WE06+nrfu59pMImMpi+l1/a856BwuPX9iRC+NIY
	blUfQmHdUOpgrPA5tzoLJHEECunBxYKTZw7dGgJnuDfEioua3o+AcJiRvFhPq0FUqfDQDMr38HwAv
	HjXDrszXgdZpFuZ6X4LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoK2c-0004cp-Ml; Fri, 19 Jul 2019 03:58:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoK2Z-0004cA-5D
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 03:58:40 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E03D21851;
 Fri, 19 Jul 2019 03:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508718;
 bh=R3UxDjgTbacNgKcJvMdnsgwwpj7qgbnHxLcI0sBnYsw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CrOBPF4hHcblIC7sFQ8nOU6D6vcoSc/uKhMk6R8CO5/fG/zSkPpoNgJaOFXb8IUP3
 hg4ysYyoyMXyDm15GpiKvTkfzrJ75x7Ew/Z7P4KjkJPJ7PVFeAM2BuMdhqBCE1+a89
 mfKvcBMTvkErVR7qL+CUV2F8uNrTBslrMscO/Xvk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 051/171] PCI: endpoint: Allocate enough space for
 fixed size BAR
Date: Thu, 18 Jul 2019 23:54:42 -0400
Message-Id: <20190719035643.14300-51-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_205839_218471_2079AFD8 
X-CRM114-Status: GOOD (  10.01  )
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
 Kishon Vijay Abraham I <kishon@ti.com>, Alan Mikhak <alan.mikhak@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Alan Mikhak <alan.mikhak@sifive.com>

[ Upstream commit f16fb16ed16c7f561e9c41c9ae4107c7f6aa553c ]

PCI endpoint test function code should honor the .bar_fixed_size parameter
from underlying endpoint controller drivers or results may be unexpected.

In pci_epf_test_alloc_space(), check if BAR being used for test
register space is a fixed size BAR. If so, allocate the required fixed
size.

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index 27806987e93b..7d41e6684b87 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -434,10 +434,16 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 	int bar;
 	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
 	const struct pci_epc_features *epc_features;
+	size_t test_reg_size;
 
 	epc_features = epf_test->epc_features;
 
-	base = pci_epf_alloc_space(epf, sizeof(struct pci_epf_test_reg),
+	if (epc_features->bar_fixed_size[test_reg_bar])
+		test_reg_size = bar_size[test_reg_bar];
+	else
+		test_reg_size = sizeof(struct pci_epf_test_reg);
+
+	base = pci_epf_alloc_space(epf, test_reg_size,
 				   test_reg_bar, epc_features->align);
 	if (!base) {
 		dev_err(dev, "Failed to allocated register space\n");
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
