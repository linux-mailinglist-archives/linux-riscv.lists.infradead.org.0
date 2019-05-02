Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B29B11811
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 13:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pKU4YZDJWoFkFqWVt7jB14D1UMYI2gFwzuYuT7pxOeQ=; b=a6A
	rFkn+OCCkxQ+IygR7XcJBNXmSrD881pTJFD1Pbm8mD9ucXrVVMVdoZDXvBR24hx+TP8IfpBUHSJP+
	MlzXkmP3rys1J/3+F8ol7Ht72GbKrq8pMXGt0r9nLTdYi9IcvZI1JzfCzi7xq+w4BeBGFQ5eoI+HU
	ct1aM811AOAovT51Phg1HUvrdPr5cqfgo4IW1iSiafMevhOLEN5PhRX8i0UkrTxm1QDr9DoDyhh/J
	t1w2HB/UGWuWEsiAUrXe1GCne0DC4lmRFyYcIlme/AMjzoaZTLzWMlQg7+0u42D6UK7xyUk6Y1Kam
	CqDhXvpJkD8yHpL1ttwkhDd+PYa1d7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9hV-0006LN-JH; Thu, 02 May 2019 11:16:29 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9hS-0006Kp-7B
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 11:16:27 +0000
Received: by mail-pf1-x442.google.com with SMTP id 10so953220pfo.5
 for <linux-riscv@lists.infradead.org>; Thu, 02 May 2019 04:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=R5swJlAITju8XH6qDqL0ICBlF1jL9P7SgWpPio7VZHA=;
 b=NYaCI5Lq9sbeex/Hyus53942eETnhAANEybb8Pav+qTxn2QwpygQeTPQ9ijMngIIVi
 MWZiQ9OR8+52nfEJCJRnWdf87muqgNpsbqZvPlnXLqdiiiXCMSpt5B+lKRIjZk+5FaB4
 psDwFfwr0qko0Vnjf/Pd5jZN6gLFz5spWZSgGIUXXzqqqj7XRKCqmJsrRjy1jGh+5Yik
 PIXix3jtrxsLXwyvzF21dFbVZWnYX66hs5XJMJRZk7AQEAR3pOGPhxtrSvqawt7xInuM
 pVuPXRpetMck8s8L238K0ZaonxcR4gKcebzDnVn5wDtJC/54sgWBu7Q4m92mcw9zNfF+
 RLiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=R5swJlAITju8XH6qDqL0ICBlF1jL9P7SgWpPio7VZHA=;
 b=HqncC+XEitbyrKTVwrXoERIFMUR921V0xA9GQcda4jKpfgoJeWeKjR+YZmfgU1i1I+
 j3y7k6OCd2UEUDmGZzLYEEW+serMxtIbZbIcI0ZtdT/YTjnpsJeWBEQo2rqwSpXZBVof
 LerzpQ8F28kNP+Stv3PusuAFZH2Tpu4r2iuUQ0e3d44lONkgLe3w3GyuidVrNppMm/W+
 462vUagfmVyzuRRg9FtE39thEkXmwTcrjU6ahXPG9oXhy8SzPKX4NZFIoa+ksg7auoJ7
 xBj490m3+XwAO0MBiSL1jvRQKnYrDrYjnxxQx4K8e+XuZ2R0IjzMmeKNtc4ka5EisZtv
 e4RA==
X-Gm-Message-State: APjAAAWp1LkFPALNI9a3AHDg+rY4YFpE/fjMQEb2hFztI+olXAYKKnFU
 AkBaoAcH2NcqG1zsbmddrgqF/g==
X-Google-Smtp-Source: APXvYqwPrwaCqwJmTsBvyyjLyJcvTq09ZepuI44bbmNSKK6Ky+Diwbr40NVY49IX7vbv8sys9jbz9g==
X-Received: by 2002:a65:6688:: with SMTP id b8mr3331152pgw.81.1556795785150;
 Thu, 02 May 2019 04:16:25 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id t65sm5550010pfa.175.2019.05.02.04.16.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 02 May 2019 04:16:24 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-edac@vger.kernel.org, linux-riscv@lists.infradead.org,
 palmer@sifive.com, bp@alien8.de, james.morse@arm.com
Subject: [PATCH] EDAC support for SiFive SoCs
Date: Thu,  2 May 2019 16:46:00 +0530
Message-Id: <1556795761-21630-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_041626_316624_3722D678 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, paulmck@linux.ibm.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>,
 paul.walmsley@sifive.com, mchehab@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Adds an EDAC platform driver for SiFive SoCs.

This patch was earlier part of the patch series:
'L2 cache controller and EDAC support for SiFive SoCs'
https://lkml.org/lkml/2019/4/15/320
In order to merge L2 cache controller driver without any dependency on EDAC,
this EDAC patch is re-posted separately with updated MAINTAINERS entry.

This patch depends on patch
'RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs'
https://lkml.org/lkml/2019/5/2/309
The EDAC driver registers for notifier events from the L2 cache controller
driver (arch/riscv/mm/sifive_l2_cache.c) for L2 ECC events

The patch is based on Linux 5.1-rc2 and tested on HiFive Unleashed board
with additional board related patches needed for testing can be found at
dev/yashs/L2_cache_controller branch of:
https://github.com/yashshah7/riscv-linux.git

Yash Shah (1):
  edac: sifive: Add EDAC platform driver for SiFive SoCs

 MAINTAINERS                |   6 +++
 arch/riscv/Kconfig         |   1 +
 drivers/edac/Kconfig       |   6 +++
 drivers/edac/Makefile      |   1 +
 drivers/edac/sifive_edac.c | 121 +++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 135 insertions(+)
 create mode 100644 drivers/edac/sifive_edac.c

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
