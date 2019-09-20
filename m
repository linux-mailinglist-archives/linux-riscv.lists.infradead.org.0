Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8B2B8D50
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Sep 2019 11:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XBq0/vtkIQpNZtznW2IA2LTVJeMuButF9VDOcBmsvXI=; b=Ptl
	zTAev+9z5+Z2ZkE5xJXuOa32FYO37/evc7cJzbb1b3Nc3akqzusQaQFGL+BUGkXmhCzp7PHSk43uE
	Dg8/fKvWJoFw/M9VXa1f7ygAooOE2ax84tSTlY2uItNOopKijEemer7JjL2Z9fReHYhUXHpjJhJPv
	vxUgN5tSaMB++xlWh2Cs7aljSj/EIVH4M9aMHYXb2+mhlbYEMQBXnvHyQjbkSrBgbdR+JXc0oBNKD
	mbbaA3I5tBnDRJshJ/f9NB3adrl/uLp3KKy0pjpbgmlRELeRKEeAqO96hHMuJBCOa6IGLicFiko2U
	SQpc3uzBYIa/XGSckd3MMWVnp6Ali8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBElY-0008Fx-Hv; Fri, 20 Sep 2019 08:59:48 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBElV-0008FE-P3
 for linux-riscv@lists.infradead.org; Fri, 20 Sep 2019 08:59:47 +0000
Received: by mail-pg1-x52c.google.com with SMTP id s1so2335650pgv.8
 for <linux-riscv@lists.infradead.org>; Fri, 20 Sep 2019 01:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=fl7tvYNwHE+ftYPEVIMQMzgm5oG99WNIuJI3GxZgUsA=;
 b=hyZVfm0sFvnfaVQ8yA97zAHqoWuJ7+HR/2+eWXOyui1BFw6qlUB9f6vMq+kKuLsiA8
 OBIaI5j/gM9V8KHksAR8fWJEpJgawjRYNS88Ea1YGS21kOK56j8DU5YpyzqqL+8IXwiG
 YJTqMcklLsVrIbiCcrpICEEFsmW0JbG3X1KGLjxJHBIBDnifxUco/NWjDfIlI/bePnrJ
 dH+SsPUMJfqh/jZWhd2RwSxI8c1KRL3fxgGyNnkNT6xqNMNGoBxECIlYE57tlnqriDqa
 oQ+WuCYAEFr/C9eYGbbvAz/n+gfcyfoI3V0rZfSqXJLMyNGzEp8K/ZUZjcB/J/Q1BEj6
 cuoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fl7tvYNwHE+ftYPEVIMQMzgm5oG99WNIuJI3GxZgUsA=;
 b=qElVVeLJMxfioDahLJ9oPka5tu+O7PkEk8ZHmuqT+K9R8yW7KXNPensjl/vD+MZc8o
 5WayW+rHAZcQChvFkt/jHFcPO2fdWhITmtEoy8aUnDpL0QJT0Xa5M1RBuQwj0bSU65HS
 NcEDBR9cU6DAUdzRdT1trN6os1M2Q1ZfBiUbrdp6SqU3rcjt6w4Wl2HQo3ksNe4TnwxX
 3adOdxY0d7pVARxHfp66K/6udOwor1ADmZEHUzEPki9ifiqLWiaqUKGuN+LeoasAM5pe
 xPOFPKMj8/D7U3IbXaTIQGg63oq4WtoWkjSRD7mvqKKRSCQFcUyfHy74pmzrQxQVwwKq
 pfeA==
X-Gm-Message-State: APjAAAUmbuQyOPUjSNkYH+49kjGvgvkMrk2sy5EQAoG4NlrOQstN5Za6
 dlyaBUOViJ6JX0aimyd9RZwRZA==
X-Google-Smtp-Source: APXvYqzmet1EfGHuUHqh6NTQ1lvfZsx/K1gCHSn3id2QMeiTRQkBQBnhD+Yp5VeV4ljcAy19JYpMFQ==
X-Received: by 2002:a17:90a:aa0a:: with SMTP id
 k10mr3457599pjq.18.1568969983538; 
 Fri, 20 Sep 2019 01:59:43 -0700 (PDT)
Received: from localhost.localdomain (36-228-113-219.dynamic-ip.hinet.net.
 [36.228.113.219])
 by smtp.gmail.com with ESMTPSA id h3sm1144046pgb.13.2019.09.20.01.59.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 01:59:42 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v3 0/3] dmaengine: sf-pdma: Add platform dma driver
Date: Fri, 20 Sep 2019 16:58:59 +0800
Message-Id: <20190920085930.19380-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_015945_854845_9B1838A8 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Green Wan <green.wan@sifive.com>,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-hackers@sifive.com,
 linux-riscv@lists.infradead.org, "Paul E. McKenney" <paulmck@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>
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
[ 7756.975356] dmatest: dma0chan0-copy0: summary 11208260 tests, 0 failures 36207.82 iops 579325 KB/s (0)
[ 7756.984093] dmatest: dma0chan1-copy0: summary 11206263 tests, 0 failures 36007.36 iops 576117 KB/s (0)
[ 7756.993453] dmatest: dma0chan2-copy0: summary 10929638 tests, 0 failures 33984.39 iops 543750 KB/s (0)
[ 7757.003008] dmatest: dma0chan3-copy0: summary 11204208 tests, 0 failures 35759.65 iops 572154 KB/s (0)

Green Wan (3):
  dt-bindings: dmaengine: sf-pdma: add bindins for SiFive PDMA
  riscv: dts: add support for PDMA device of HiFive Unleashed Rev A00
  dmaengine: sf-pdma: add platform DMA support for HiFive Unleashed A00

 .../bindings/dma/sifive,fu540-c000-pdma.yaml  |  55 ++
 MAINTAINERS                                   |   6 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    |   7 +
 drivers/dma/Kconfig                           |   2 +
 drivers/dma/Makefile                          |   1 +
 drivers/dma/sf-pdma/Kconfig                   |   6 +
 drivers/dma/sf-pdma/Makefile                  |   1 +
 drivers/dma/sf-pdma/sf-pdma.c                 | 623 ++++++++++++++++++
 drivers/dma/sf-pdma/sf-pdma.h                 | 124 ++++
 9 files changed, 825 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
 create mode 100644 drivers/dma/sf-pdma/Kconfig
 create mode 100644 drivers/dma/sf-pdma/Makefile
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.c
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.h

-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
