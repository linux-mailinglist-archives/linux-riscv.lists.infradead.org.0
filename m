Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEE228CA8
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 23:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kUxNL1zY4bLp+kTtmfqflO4+21T1iP42sxZcXL3NMOo=; b=Jxs
	M8Xo0J2m3EoTHZlLu6vwaM5qn7y9TYLmqNiMWHjyiyp2AVGo3MWwaPllvEYWEZVy0Ntll+rgz6S/S
	Kk5FIAJOB0Q0XyCIh0N7imQro23DC/uhQBCNqHLfDTy9NR+XFtEF1u6d/X6LVZgiheoY0sRyXBa7h
	5fCX+TgOymW5iOnqqRr+m+sM+9ouvPE87RuQ7bC4sUCp0zL9Y9lqZ07S0si3oEF44CcKqKyKAN3dr
	cxoOClzgoM27qo9i5pL4/0EFRpNw8X/kG514O/T01voX7zHRgNAUZVGsMyL9cs3UP4uHlZGFe6FCX
	Ly+Srvxaju7J2lf3RwgfAKap471pEcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvZP-0004yp-BZ; Thu, 23 May 2019 21:48:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvZL-0004y0-VI
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 21:48:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id p15so3273306pll.4
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 14:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=cRjsWIBkFu7xChKc5ODPWxRtyAuuqlLwnhGlual1d7o=;
 b=Zhdv63Etq9ZqvxrpKVb9soHIGj0Q24oISvjDjej3wPUUd/Cnb+UldZiZtfrDTaIgu4
 k/3l6z4swcOXGNbr7U7MmMkvFFMhvHlsvYBN1lmFjkeK6VbWXm5sjP1aWe9DSHu1k1fH
 +cN0PVDMxA8slbCi7HJThOcm7ANy2YsLJFyrzLpf3iC3NXZ/pUASClHd3DQAmJYekNSX
 u5PpK/415fxUlaYwU1eLb6sqZCWwrUM4eIeYNMam/BkP+B1PYCzfQsTmmVxb+B6ApH+H
 bd7TG4fOrpjsWnsZoHWIFNl/habsr+Nqb1HSaXiq0no7Go4qLaX7JC+frOnhw9DqukLe
 ySFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cRjsWIBkFu7xChKc5ODPWxRtyAuuqlLwnhGlual1d7o=;
 b=U1wgRKbOO6eNWtXYzBLrmmQ+TENNIWKnEUmG/pm6l+0g+LjtudBgt7DFooWc5EW0J+
 XCLvmdtSgq/DRNz8XVN0Uz5i2MoG7NPMZQrrAY7KuUp0y9l4svzW9YwkZzcCvIz70Iim
 PTVrcHQJKmUEm81DBfshRTG1H7iovexGzE3XqgxXJNWwUOgsa1YhMS4n5jlr5aoK9V0c
 UEhT1SWVQeap29ge/ANjjpD/FDeD9jcrLVvNns7+Jrtsrr4D7XcCnVwL8f17hRCZRPDW
 3x5jC4/u15//XcSeM6cYEWRoYz9pk8s6W5qjyVEzWk/DgqbXVTZ6wsdTakLMnUoWP6cN
 EQ2g==
X-Gm-Message-State: APjAAAVuE6XLV38e/zhR8Pu5WTommwr9MPBlcUUrBhnXDODoZc6KhlN/
 k8JSIwFqCWytV10dUQhIzzYWkA==
X-Google-Smtp-Source: APXvYqwYpmQE4QulweV//CaaANh0ZzjwCj5mOtvZC5LJ9Go4sqfKX4lZUjjLrMyvaVKS4b5H7zgJWw==
X-Received: by 2002:a17:902:4e:: with SMTP id 72mr49493273pla.80.1558648091144; 
 Thu, 23 May 2019 14:48:11 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.2])
 by smtp.gmail.com with ESMTPSA id f22sm280757pgl.25.2019.05.23.14.48.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 14:48:10 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH v2] PCI: endpoint: Allocate enough space for fixed size BAR
Date: Thu, 23 May 2019 14:47:59 -0700
Message-Id: <1558648079-13893-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_144812_007427_CBDD7BBC 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alan Mikhak <alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

PCI endpoint test function code should honor the .bar_fixed_size parameter
from underlying endpoint controller drivers or results may be unexpected.

In pci_epf_test_alloc_space(), check if BAR being used for test register
space is a fixed size BAR. If so, allocate the required fixed size.

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
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
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
