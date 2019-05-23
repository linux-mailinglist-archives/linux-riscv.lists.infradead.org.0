Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449D328C3F
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 23:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dtr4hm+s9OEv2TO+6sFz89NnNhNCZzrvnyciK6jyypY=; b=CTlL150NsoE/QzRSFMa2d5I7pf
	q51gS/syT31fRtEI+2AcpL7dtilwrqKMCAWlk6df/VruMOz9YN/2qAYzObZavcsIt5+PMexIZY8Ge
	3AcyZld93hCME7be/CxHvBCBpvvi9PLpQ1wm0lm4Yt7rdLaoT/IQkiAmlJvpSENfNT9+oPG3GQTWe
	gCPy4DuB1FvENx64DgjtY+6MZ40D4AZpVYe39wcE1vzZTKk8m8K5KcgMGTPjd1jX0yGa+Ee2X3Ws4
	ANYmE3r78Ml6mVj0eyqKFM+RhsDM/X+QSD/etv5GKopMkLudAFMhc9aWU7fsC3FBxhXhh0aoveMnB
	qzhy76jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTv7P-0002rq-46; Thu, 23 May 2019 21:19:19 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTv7L-0002qE-Hv
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 21:19:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id i21so3766320pgi.12
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 14:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MSZ9qLvgnuUWthhRIbf1Cjhkpu+CFOpygVqw6RbqY5U=;
 b=WIEVJh7TgDCASi/+YnUkSMzEwtd6hlDck+n8tN2K1tMOc34LB1Jh1QvKVxb0cutw3A
 DH4g4vh5nw8eXnfoR/heSxG5RvW1s4Cu7RyyZ6t4otZ8aHQMWiZqrWSxK+3N7aAy6R+4
 l8r6b9AvVpOk1jZ5i+uT/WsV3S0MArSerkECLKNwwo4gMVmHGwsbZ2PrkVXf3810gVjH
 4xz9PTduCE02rrpFhwTGSl93D/REB0grsaDhqd9PMcZVxOt1JnTht+mXI17goUcKY5W/
 MUmKkcNqR6rdY6EVi4f6uc5ZmjTB//hhHcF8odQI4bMn7jlRbjXi1cGld2z+oA2gXfiR
 dE4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MSZ9qLvgnuUWthhRIbf1Cjhkpu+CFOpygVqw6RbqY5U=;
 b=b8LUlHi8SeH8efkFzpty3iv/jVbqxdJ/gNpulgt4hDUMRSdR6l+LJsdpVQlLZtT83m
 s34T/mmROWJrlXPqYxhwSfp8PS/yIse+bbvEm7wXupuo6Mf5Mm+pUkpTdTickiFPlH7V
 cPMli6qQpsQd3E9pg2pNYpddiy7U0Wh/Kfp8rScRE44hq9wheWDclRRpnJ7WO7J1iMI8
 eo2wKyGTe6/fWJ0DnokSzINzOgoo40AyxktOPJDl9OyWFeyOiNfUytMPni9EfgXA38u4
 PZx+jGpeDCHzLyLFQqkfLrGlVegPxQVcyVQ0qd7cl8eCgXl5gmT/GfpIAMjsPO7gM4FF
 OitQ==
X-Gm-Message-State: APjAAAUUW58jnGQVdkprgRS7qc06ZackYPT12N1eMjnBgk/dSVwjCRdc
 XhLVXZBKdSfOGWM0aUXSWBzRPA==
X-Google-Smtp-Source: APXvYqyUyOAczgUqoXWQtDMPqw03qjPB1y6pLPNlzLwxi361TeJoFHwIvI96nXB0BIicaNoroN8SrA==
X-Received: by 2002:a62:7610:: with SMTP id r16mr108209123pfc.69.1558646353373; 
 Thu, 23 May 2019 14:19:13 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.2])
 by smtp.gmail.com with ESMTPSA id t5sm234092pgn.80.2019.05.23.14.19.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 14:19:12 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH v2 1/2] tools: PCI: Fix broken pcitest compilation
Date: Thu, 23 May 2019 14:18:00 -0700
Message-Id: <1558646281-12676-2-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558646281-12676-1-git-send-email-alan.mikhak@sifive.com>
References: <1558646281-12676-1-git-send-email-alan.mikhak@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_141915_592806_CF35C212 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
Fixes: fef31ecaaf2c ("tools: PCI: Fix compilation warnings")
Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 tools/pci/pcitest.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/pci/pcitest.c b/tools/pci/pcitest.c
index 5fa5c2bdd427..6dce894667f6 100644
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
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
