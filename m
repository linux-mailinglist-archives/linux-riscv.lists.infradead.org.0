Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611D5E6DA3
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 08:57:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2/NOAiwHPVon0Lu9MecMx511ywa0qVArykFraWmsoZM=; b=qkB
	HdRtV3XtlVJLVhzMhykjiHUYdBV/1q+vyua9dwMCTVFOHhaKWO6j0r3733+3KMQiqj8hQtB/2x5b1
	Cq7nGdEXlyc1k05oo9gyP4PN4ekkyCjPt2kZT95WkoBtSfW54eCBo9tDMD6maPCl9w61AGx7wzKrN
	TtepGflc+ilywXU5tgK+/0oU5w7lzHMfp5YTADbhYJWa3VCiuP9h82AWspjdNdq9Ms4EWUOLBcDqm
	0d0eoPi+dcpvHmgpIsk/wZ9L9CUzFvorabbJRABlwHAPemw7cwagQlD6+ifYluc3wMyn+1JjkICQy
	SR+qB5fbrzm2g9+QpM0GW/IaaUTkSig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzuL-0005aH-DE; Mon, 28 Oct 2019 07:57:45 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzuG-0005ZL-Hy
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 07:57:42 +0000
Received: by mail-pg1-x530.google.com with SMTP id l24so6346938pgh.10
 for <linux-riscv@lists.infradead.org>; Mon, 28 Oct 2019 00:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=0tOD6xTgafBMzD/bQT7mA2BK+hDrqf70u3fKrnf/Mq8=;
 b=VRinFB+OJkAI+0T8PjMCYoRQof4sh3mxSQmc2bhFFpv5fQnmTVGIpuPnVScat+4NDl
 ZfRqSL4DtLJ9PjAZwFTE/XRKr4Bk1fpmj9A9em4QCzb4LfkN5SdZoXeOGc3DLup8wy/H
 IF7JO+Bh9BZmkQ5Pm0SqNPbOxgL3IJGtRmuPB/z3oWOEJp0ycpzuH64hWYIPpWd+spaC
 x7+S+69A4ONXZxmM5bQnJFxLEtv+K8ExMnoogG3mcYRaEsRDXB4hYOE53bNQCmiZHvVn
 9ladJtnMbBlAT+rQYn/+3maNCNUOUCEMApRmhSl/25xXFr+LpUW3gmtshzX79xsMhb3Y
 b0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0tOD6xTgafBMzD/bQT7mA2BK+hDrqf70u3fKrnf/Mq8=;
 b=RXS0do+PQNWfcGwotTzczP2yQ3jPfAqZKOfv3oRqua2e/ya+HLajpV+QfbHbS60gIG
 N1inCl9xwnWxyrBzTUEvbCPlODGOFL4/3qYsGRCpiDE03xmAVUaL+HYJsOiRW3jSjbQa
 K66q6k88UKg7z2UykJqtojMxKCmfTvIFe8oRVzNnaR8p1Okt8gMGUwKsitFv9Zq8e0nF
 VwCzx0PyGmiQIexCnwaFqTIhl1jtId7pxLuoIVz1+XnNj2l/Mpn4FBImnHsEtT67rzEt
 mx7IicQkTfTywqtlrvfz6kMaRX6GlMivt3TqQNSctCc6bp+qRUx6R2gSWZemu/MN7JX2
 GShA==
X-Gm-Message-State: APjAAAXo+fcpYVRBrU981yaxp1hiH91B2+E9gSVWi6c2A+vAAWdaffqU
 Z3jYOTbVZXRQxKvj3qqR8dlnuw==
X-Google-Smtp-Source: APXvYqz+AAFzlNhGkv597kxEls8SCGWc37dH13XlmSzuhKJPPkYP/vWnh+D92sxsTEH0WNQUaCTWjA==
X-Received: by 2002:a63:4b54:: with SMTP id k20mr19750139pgl.70.1572249459319; 
 Mon, 28 Oct 2019 00:57:39 -0700 (PDT)
Received: from localhost.localdomain (111-241-170-106.dynamic-ip.hinet.net.
 [111.241.170.106])
 by smtp.gmail.com with ESMTPSA id y36sm9504752pgk.66.2019.10.28.00.57.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 00:57:38 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v5 0/4] dmaengine: sf-pdma: Add platform dma driver
Date: Mon, 28 Oct 2019 15:56:19 +0800
Message-Id: <20191028075658.12143-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_005740_596487_B74EF9AF 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Green Wan <green.wan@sifive.com>, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
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
 drivers/dma/sf-pdma/sf-pdma.c                 | 602 ++++++++++++++++++
 drivers/dma/sf-pdma/sf-pdma.h                 | 123 ++++
 9 files changed, 803 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
 create mode 100644 drivers/dma/sf-pdma/Kconfig
 create mode 100644 drivers/dma/sf-pdma/Makefile
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.c
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.h


base-commit: d6d5df1db6e9d7f8f76d2911707f7d5877251b02
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
