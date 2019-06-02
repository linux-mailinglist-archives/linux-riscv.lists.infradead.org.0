Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 191463229B
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiXWsaCYS/ds5WByT/Y6oKcFBoUOFeDflX9REXZxoPo=; b=qjvuN9s7ZcMtr0
	uRs+l2s/WO2ki2qe/nqn13wzQmEHpSjLVvrJk9vtr3J1nt/22paA2ZtmJqRjTwLPktWYPPIOGjGb2
	MRoKbd6Toam3Bq/Rk+4Gwv7Efb99kypsqNK1bjysLzlaod4owHYNmvfDEl6q/XECo+YNY72AEbxEZ
	27Y8EaMWTZGkRSiya6nXIZxPXMLeQCKWV95GF5TlKE9bJt/fMf8mIpREvO8JOxd46tO/fPIDgjrtp
	Rx1d0IhZ73kar4sy5ABsfgjhbbGwGuswzPM/pu+RJRHC8H6EgH22+Ed6+p6TO5Lw7dRcICoLvjB5i
	RNS77qNMVu/y6apTcinw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLSH-0003ew-Kn; Sun, 02 Jun 2019 08:03:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLSD-0003d0-Ok
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:02:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id f10so8522686wmb.1
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lVmMBuEiI1TSAqk1FfU1U7RUZqQknARWWYl0UzTN3/Y=;
 b=czEV6VfJGHSdQrrv7KfOsGVl0G73ngWzwio3YKfOAcumfIM9TrV/w4Z7BC7b8o6mF/
 GewBgTlEEmUNOHIMMOhCJBAbL6rONe/U4BY7S1Y2ictwYrJeZ4iozJLwqqdDA5aI2li9
 krAhN5NgTTXufkDh5VOLGZOSqkhUgCBL5yixxmhL2OEc8ml2fD19C+Bf88n65vy1ZkmY
 qD4jv5We3XUwTJlXTVyNGzZqAsQXMmTkhInBAKEuYkjv1d8r+0+0uKG26Q6CqpysV2Cd
 2+OiwNORhGauyvRBrw58tYvb3o9Cm71w8TaLhMnaWKhmqgYaDimAcGFb43XvNb53hKVK
 Gwuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lVmMBuEiI1TSAqk1FfU1U7RUZqQknARWWYl0UzTN3/Y=;
 b=fK2k05iSULRo07A53PEzkXFhuZDuCa5Ap5sKtlH0yTR6e03jvUF9UpP1IG408Lj6qL
 ABLDv/Yt7Lmh7VdEfwxsVc3CNClo/y5Qok4IpxdfiJTA+ir1uBER1ElBHGJhFlMX8oec
 gRa4QFs7oaJdgbPsxcN3gUpPG60U2NlSmWFptUyYoSamlcFvuLhhJVhfMwOOHAh0lUfi
 VuHInzZiOAVGKtJxMlbooPgwlHj2pROZ2vRCOTWZ+wwKeFyCvUnzvLHszURNEs0BOjwE
 OzOMCgM7UMnqMHW+O1QWD0wSyjfV3tZmx5kvb4B6B42Rv6YuRq+r4lyYQaGDLX0vTFwp
 kZDQ==
X-Gm-Message-State: APjAAAU96/JuyxSXnY2zksGHoUn6G3K19t8f4Hji25IDUEnIJK24idL0
 fk7unNULilFkWUH7L1M2+faz8A==
X-Google-Smtp-Source: APXvYqyqRK0MO1SgJM+vCDNFXLFtqxjAsoNIptEUPqNrNKCiXiOIpOuGAH27qr3kIa093dNVUbbOdw==
X-Received: by 2002:a1c:5546:: with SMTP id j67mr10910514wmb.80.1559462576132; 
 Sun, 02 Jun 2019 01:02:56 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id t6sm22208264wmt.34.2019.06.02.01.02.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:02:55 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 1/5] arch: riscv: add support for building DTB files from DT
 source data
Date: Sun,  2 Jun 2019 01:02:47 -0700
Message-Id: <20190602080251.31372-2-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190602080251.31372-1-paul.walmsley@sifive.com>
References: <20190602080251.31372-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010257_801178_35A576BA 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Walmsley <paul@pwsan.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Similar to ARM64, add support for building DTB files from DT source
data for RISC-V boards.

This patch starts with the infrastructure needed for SiFive boards.
Boards from other vendors would add support here in a similar form.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
---
 arch/riscv/boot/dts/Makefile | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 arch/riscv/boot/dts/Makefile

diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
new file mode 100644
index 000000000000..dcc3ada78455
--- /dev/null
+++ b/arch/riscv/boot/dts/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+subdir-y += sifive
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
