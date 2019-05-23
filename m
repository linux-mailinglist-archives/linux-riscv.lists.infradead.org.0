Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EA528CBB
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 23:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lf5KXEYQVQOdkEboyaK4nodDevfnjyKFS/Aebkivxi8=; b=ney
	MFBxb6Io8M6jVPOb3YDM3BXEMDjxUEiRHUnq+WFWnbjzTMJCcaqMSwiuwAX0UExqXnwIe36FrIj2w
	x6ETCHwDel61jfVdFwMMedDAdUwHmyw512negvWMv90EN0gROsmkpgvmE5ZpMss0V0OQKqs/lY4fV
	PMxDLi8j3hdydIlKkXpiEV1mM7TTNWscUt9NtLfp04lRxfJU33VvAbebmH2N48du33XoXdPMPuX/y
	KF87nYgGsUD6k3jvVwkIxbZHHICFDirJNydA1vEqL7W6BAjR25q8F9StiKD8zZsP7rbLA0ls0LhG1
	Xzt26+qUn1fm+woave0LFKs3WQP23uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvgr-0008K5-1n; Thu, 23 May 2019 21:55:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvgo-0008Jj-5v
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 21:55:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so3995281pfa.3
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 14:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=PurhQGxmOt5OgX95ziE8Uz5xXLYO1YnGDYcH4NyaAV8=;
 b=KmwMdbusxLFDrj22KnPcx5BKzA583dV/GrebLLNnmUsihWE/QMWs3lTIAouKLUwaop
 LwgmVJQGVUg2aA+8mx4KJjU7bAF7LtGSr8FiMglX9PLU180cgIynnL0/9TXMA3mSW1M+
 /UmO8YBNF1bNKg2+C2Nb60imYJGTKVl+XkH4yQ6Fxqbenfjbl/IPPANZqo6DAu95G16f
 3MfFyVw8gm66EwDQbIfgC6fEkCdxWH+Uwd6/EWrWkuO+20grvDS8y/Fis3sO7q93IPon
 ggEp6LFhzmrCxLh6InSejc0sfAGzRbxlvvT1/+7Z6b9W8sM4GU4RF8/D8lGBbGXY4321
 unfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PurhQGxmOt5OgX95ziE8Uz5xXLYO1YnGDYcH4NyaAV8=;
 b=IwW4UJC2kA6Lc4jVH+JaM1vZqspuecUMOh/8t+lOKbZXHip4MT6gRPGKiT4zpCdJAx
 kOciGQKFB+CJCm/HMKNMf25mZoQn/DALghLCdxsfw1KETGy3pt4DSZ+XOzTkx/7+KjAl
 8lYBesFtCj05duMGdpz1L6WQRy7d7i4A9vNYI6Ff+5F1ssALy5Z5t5uQZLoitlBLZnN3
 OhrERTUhJ1ePz7fgWeecg5a5OV+XVNwou7FVh+tqWVHzTGE6COhgDUPa+2p8Q6ZxMhkf
 Iq8GCTRCHNkNLnFhewtNRq3KRWNfhovhnNRuWpnviHN2zkbz1XSq/A5V9VuByWvsLAel
 qvLg==
X-Gm-Message-State: APjAAAWeMBk3VoUGYKAn4BJLhmqKPyiBZiB3OMWlPpXjPeZOvFLe3ABK
 r1mVFzpMvjXgRul8yuRPI9Ganw==
X-Google-Smtp-Source: APXvYqxfZfJf2dgCCL/DsR8P6LzvbOxJ1paNuXirPE+CZvt+G3bi+/s0Wd3kQSCpvTmI4e02K3NZLg==
X-Received: by 2002:a63:903:: with SMTP id 3mr86725371pgj.400.1558648553134;
 Thu, 23 May 2019 14:55:53 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.2])
 by smtp.gmail.com with ESMTPSA id q75sm422403pfa.175.2019.05.23.14.55.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 14:55:52 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH v2] PCI: endpoint: Skip odd BAR when skipping 64bit BAR
Date: Thu, 23 May 2019 14:55:40 -0700
Message-Id: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_145554_226381_336087B4 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Always skip odd bar when skipping 64bit BARs in pci_epf_test_set_bar()
and pci_epf_test_alloc_space().

Otherwise, pci_epf_test_set_bar() will call pci_epc_set_bar() on odd loop
index when skipping reserved 64bit BAR. Moreover, pci_epf_test_alloc_space()
will call pci_epf_alloc_space() on bind for odd loop index when BAR is 64bit
but leaks on subsequent unbind by not calling pci_epf_free_space().

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index 27806987e93b..96156a537922 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -389,7 +389,7 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
 
 static int pci_epf_test_set_bar(struct pci_epf *epf)
 {
-	int bar;
+	int bar, add;
 	int ret;
 	struct pci_epf_bar *epf_bar;
 	struct pci_epc *epc = epf->epc;
@@ -400,8 +400,14 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
 
 	epc_features = epf_test->epc_features;
 
-	for (bar = BAR_0; bar <= BAR_5; bar++) {
+	for (bar = BAR_0; bar <= BAR_5; bar += add) {
 		epf_bar = &epf->bar[bar];
+		/*
+		 * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
+		 * if the specific implementation required a 64-bit BAR,
+		 * even if we only requested a 32-bit BAR.
+		 */
+		add = (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ? 2 : 1;
 
 		if (!!(epc_features->reserved_bar & (1 << bar)))
 			continue;
@@ -413,13 +419,6 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
 			if (bar == test_reg_bar)
 				return ret;
 		}
-		/*
-		 * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
-		 * if the specific implementation required a 64-bit BAR,
-		 * even if we only requested a 32-bit BAR.
-		 */
-		if (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64)
-			bar++;
 	}
 
 	return 0;
@@ -431,7 +430,7 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 	struct device *dev = &epf->dev;
 	struct pci_epf_bar *epf_bar;
 	void *base;
-	int bar;
+	int bar, add;
 	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
 	const struct pci_epc_features *epc_features;
 
@@ -445,8 +444,10 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 	}
 	epf_test->reg[test_reg_bar] = base;
 
-	for (bar = BAR_0; bar <= BAR_5; bar++) {
+	for (bar = BAR_0; bar <= BAR_5; bar += add) {
 		epf_bar = &epf->bar[bar];
+		add = (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ? 2 : 1;
+
 		if (bar == test_reg_bar)
 			continue;
 
@@ -459,8 +460,6 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 			dev_err(dev, "Failed to allocate space for BAR%d\n",
 				bar);
 		epf_test->reg[bar] = base;
-		if (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64)
-			bar++;
 	}
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
