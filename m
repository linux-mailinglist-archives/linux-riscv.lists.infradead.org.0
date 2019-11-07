Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B63F29C0
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 09:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=03CVuMURXOpocP8lMAZQRgW/CU2UrjyUd7ClwMJ5bhU=; b=h9y
	khMPh4FES8iVc7omr1NqbLp7DXjBC/PK8sYHQFleKHu53tX3UZ1DqmqwZmWxtQEWwSYQjM8ywXu2+
	nXO89iIK2orPv2q9vdeFZF85K+rkFtmYKNu9JN+VkXOsucF3cnzjrqL0cP5TUbAnPUgEAzsyHwOgF
	2YpmNsNgiKbWJcp12ytK3Q9Qn8DvyWJuchFj0qq5pfzsEJ0hOETZyKqcmm29ckyv5HQdchdCR3pK4
	4x8/zmDeL5mLz/6CPT8WzHDVuHMbz2e2GbfJlhdIxsqkb5PiBnS6ZqmaFewkqA0H3lOFRLO0neVI9
	cVHU/T7pb6pYDcQzLkCdypxb+81rqpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdVq-0005Cu-BG; Thu, 07 Nov 2019 08:51:30 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdVd-0004vi-KJ
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 08:51:19 +0000
Received: by mail-pg1-x52d.google.com with SMTP id l24so1617129pgh.10
 for <linux-riscv@lists.infradead.org>; Thu, 07 Nov 2019 00:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=wRSTyomOLDs6+V2ErS/oC2G/L0RCS7+9Zv3fKuKSwjg=;
 b=AENY4Zn7wWImtkMCK8pNWAF3xkH4Ggiw1TeVZZxn9N/m3I9ECcqWZRo9NQ5hL0QkJg
 shLGmQ5htRKCntK70+mrIQrYdjDkXtZRGb74kwMGdBnXwe0157esau6X+mvIx2H8zVci
 OQPdZ2mMtn3hXqhVt0EpSx3KH8CtJe9hEWKNRY3RTcksLc5+XYyIXKYesCQjgrgLuM7p
 uPKdrE/M3TlAqRQ7v9JiBAjML52fJx+wbJHSQ5Y5mLRvxkVaM6DJZgUmKpvGUjDYTV4F
 V0GILPJtIgLLGMmfa4JwKqG7z2cvCCUn2dkpa+B1H/34P32Eu0x4unmgoEPAzUoIt8N4
 e+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wRSTyomOLDs6+V2ErS/oC2G/L0RCS7+9Zv3fKuKSwjg=;
 b=Ybj7xAA0COW4a3Z28iDCx+SGfdoNlQE8Xj3eNig16/CPwSxy2t/SLUlS0w6tm1gh16
 5BRcDVaMiMIozU5gibj45IJQYlPF2cgF6FUB9CnhMuLMi2CLyw/MtuzU+9fiMr1Q9eKF
 w/hTEBJRBMfuAy/V7fXHMoIM38iaLZORYSHAyM6hDpgjn3TaC7sSU+SBcIseti4ERFkT
 KbQEIY0G6WcHZ5uboix6pNMWgofKNZun0byrGJ6h497lPXDnBsYVi6MgY60fMXmRuVLY
 NEpdLu7rQ3m01cOzau4d8Tk10GIFchqVIeTf0ACDO8Y5SgbsCbDcO8WTceUZ0OOak2hB
 6Ukg==
X-Gm-Message-State: APjAAAWOi4soOFsA6gYbO3g40A9JHmd30BXMae2PUGgDQSPdFKbL1byL
 413e8Sw0tYgIEoQa2iNrK4q27g==
X-Google-Smtp-Source: APXvYqzxRxALH7Vn3Ne9JafqSo4E0XcubLLZEaYFdKNvjVDn83JWCsE0Y+Sf1Krx0b4nDU5Fy1/CqQ==
X-Received: by 2002:a63:2d43:: with SMTP id t64mr3037018pgt.428.1573116676572; 
 Thu, 07 Nov 2019 00:51:16 -0800 (PST)
Received: from localhost.localdomain (36-228-119-18.dynamic-ip.hinet.net.
 [36.228.119.18])
 by smtp.gmail.com with ESMTPSA id a33sm2402361pgb.57.2019.11.07.00.51.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 00:51:15 -0800 (PST)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v6 0/4] dmaengine: sf-pdma: Add platform dma driver
Date: Thu,  7 Nov 2019 16:49:18 +0800
Message-Id: <20191107084955.7580-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005117_670282_AA3F952B 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Yash Shah <yash.shah@sifive.com>, Green Wan <green.wan@sifive.com>,
 Bin Meng <bmeng.cn@gmail.com>, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, linux-riscv@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add PDMA driver support for SiFive HiFive Unleashed RevA00 board. Mainly follows
DMAengine controller doc[1] to implement and take other DMA drivers as reference.
Such as

  - drivers/dma/fsl-edma.c
  - drivers/dma/dw-edma/
  - drivers/dma/pxa-dma.c

Using DMA test client[2] to test. Detailed datasheet is doc[3]. Driver supports:

 - 4 physical DMA channels, share same DONE and error interrupt handler. 
 - Support MEM_TO_MEM
 - Tested by DMA test client
 - patches include DT Bindgins document and dts for fu450-c000 SoC. Separate dts
   patch for easier review and apply to different branch or SoC platform.
 - retry 1 time if DMA error occurs.

[Changelog]
 - v6 patch
   . Remove incorrect reviewer and fix commit number
   . Revise sf_pdma_desc_residue() to report residue according to cookie. The tx
     could be in completed, in-progress state or still in pending list.
   . Refer to fsl-edma.c to free irq and kill tasklet before exit.
   . Minor fixes include left-justisfied, empty line and unnecessary line.

[Reference Doc]
 [1] ./Documentation/driver-api/dmaengine/provider.rst
 [2] ./Documentation/driver-api/dmaengine/dmatest.rst
 [3] https://static.dev.sifive.com/FU540-C000-v1.0.pdf 

[Simple steps to test of DMA Test client]
 $ echo 1 > /sys/module/dmatest/parameters/iterations
 $ echo dma0chan0 > /sys/module/dmatest/parameters/channel
 $ echo dma0chan1 > /sys/module/dmatest/parameters/channel
 $ echo dma0chan2 > /sys/module/dmatest/parameters/channel
 $ echo dma0chan3 > /sys/module/dmatest/parameters/channel
 $ echo 1 > /sys/module/dmatest/parameters/run

[Expected test result]
[  267.563323] dmatest: dma0chan0-copy0: summary 45629 tests, 0 failures 38769.01 iops 309661 KB/s (0)
[  267.572427] dmatest: dma0chan1-copy0: summary 45863 tests, 0 failures 40286.85 iops 321643 KB/s (0)
[  267.581392] dmatest: dma0chan2-copy0: summary 45975 tests, 0 failures 41178.48 iops 328740 KB/s (0)
[  267.590542] dmatest: dma0chan3-copy0: summary 44768 tests, 0 failures 38560.29 iops 307726 KB/s (0)

Green Wan (4):
  dt-bindings: dmaengine: sf-pdma: add bindins for SiFive PDMA
  riscv: dts: add support for PDMA device of HiFive Unleashed Rev A00
  dmaengine: sf-pdma: add platform DMA support for HiFive Unleashed A00
  MAINTAINERS: Add Green as SiFive PDMA driver maintainer

 .../bindings/dma/sifive,fu540-c000-pdma.yaml  |  55 ++
 MAINTAINERS                                   |   6 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    |   7 +
 drivers/dma/Kconfig                           |   2 +
 drivers/dma/Makefile                          |   1 +
 drivers/dma/sf-pdma/Kconfig                   |   6 +
 drivers/dma/sf-pdma/Makefile                  |   1 +
 drivers/dma/sf-pdma/sf-pdma.c                 | 621 ++++++++++++++++++
 drivers/dma/sf-pdma/sf-pdma.h                 | 122 ++++
 9 files changed, 821 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
 create mode 100644 drivers/dma/sf-pdma/Kconfig
 create mode 100644 drivers/dma/sf-pdma/Makefile
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.c
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.h


base-commit: 4dd58158254c8a027f2bf5060b72ef64cafa3b9d
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
