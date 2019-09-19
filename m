Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72FBB7402
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 09:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vJpIL56qV6K+UOUaV7BeQBDHCpnVb32v6ijNMqvp5zk=; b=jIO
	Z5apzVvtB7ntVC+InWVWLyN3Q8lrRuI0IzOp0a8rUDUSLp2jFE6XwiJpJCY+dAlxo5CybsZnCQBln
	OwZH13oyksYRTDLHTuMjrNTk9VGkSbqto8FCV1JF78EIEcSDlaYxpwSR0DwnfYlXt/wD5pJqaF3jO
	sSCTZ0BZV3epnrANj36zYqn4pzM8s/Km7TCE21+thz6Ne1Py/EdSpeJJAssSrdZcoB3b6tnufGMf8
	tMEkXuT8Os6ykToRVAVIUOaGu8n3yixOTcA1LXW39+anJnan+DQVVOr27bWFavygO/QbgFZa1eCOU
	MgA+yTJ9EI3XbZpAfNCmDdDPjlmT/EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqq4-0000GD-Fj; Thu, 19 Sep 2019 07:26:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqpx-0000FE-L4
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 07:26:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so1357587pgj.7
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 00:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=LT2z44LmrD8QiD0ZavUH6kqFzDYzxRxS7Yx8XNbtmgg=;
 b=CtQFocnZL4WmYuwxWCYhyEntS5rlt+d1KJfZ+HqgKSog1hBrz8eBhoC7C/vROml3Oh
 AS++a3QV9CsqrBUzgONj0CPB5SzjdH18bMPKvGgPA/TopigokdBDKHJTdr2MO1vdwu9A
 oyCWz79UboRAvyHMV8QE2A7lSeDLGuy7FrLbe9azF3v/ppn5HSRegEli0MrxXI71FkLn
 7yfJlz4wFoUsQnY8gyFCjw+j4+J/lNhR4t6muGEMsg+gZJDjn/b2iBzpZqO4xYbYZDtE
 6QkI5t16FOK6ssoLnkapKTHBxwKZrINNCZ9xNk6K4eQVuS85UDsRcxDa4Ln//yQ10cn8
 PDNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LT2z44LmrD8QiD0ZavUH6kqFzDYzxRxS7Yx8XNbtmgg=;
 b=OqksRqf8zVgfmmHRPeqEmGyFCXb13l9YybTUch1QepGXQlxATm3msqQ22SOqR87hos
 CrIGWftvvjwN1Uz/gySozDturmvzcA9+SwjfTHNJT8Lthr0wyMkR4X0lIKAfVIbo4BR+
 rZz2ybkLeCj368nQ3N673ngU/z52zvmvMDGiPLSUIxu0UOuiXPqIm10wh50btbUDIZvC
 z7ZGluyHlh1DTOauvu55kFKht/5T4WbIpahKMkZFVay/sIyPPbbAIJViimK15PRBMizY
 kL/IQBdM06VbmiphtHKpqc74HMK9uGZYsgq5BETljkxa7kn6oWldRGkRp8zL8zTTR30H
 b28w==
X-Gm-Message-State: APjAAAWzqXwXm2y/p4wnikDo52lePQxa5imdXWdryqBUmCl/N3ZeBjB/
 Q4ADKCsv8r4yIh2tmy2Rk2wsKbZNDymwoiqw
X-Google-Smtp-Source: APXvYqzj/tUGOJg5wnHc5YqepfesJlG4rD39ze0qs4Fw4GBM+v3Y4zCzaZ44ydGQGaexDNA219KQ3A==
X-Received: by 2002:a63:3c46:: with SMTP id i6mr7623466pgn.18.1568878004335;
 Thu, 19 Sep 2019 00:26:44 -0700 (PDT)
Received: from localhost.localdomain (36-228-113-219.dynamic-ip.hinet.net.
 [36.228.113.219])
 by smtp.gmail.com with ESMTPSA id b2sm10453620pfd.81.2019.09.19.00.26.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 00:26:43 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v2 0/3] dmaengine: sf-pdma: Add platform dma driver
Date: Thu, 19 Sep 2019 15:26:03 +0800
Message-Id: <20190919072634.1885-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_002645_930041_DA06BD9E 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Green Wan (3):
  dt-bindings: dmaengine: sf-pdma: add bindins for SiFive PDMA
  riscv: dts: add support for PDMA device of HiFive Unleashed Rev A00
  dmaengine: sf-pdma: add platform DMA support for HiFive Unleashed A00

 .../bindings/dma/sifive,fu540-c000-pdma.yaml  |  63 ++
 MAINTAINERS                                   |   6 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    |   7 +
 drivers/dma/Kconfig                           |   2 +
 drivers/dma/Makefile                          |   1 +
 drivers/dma/sf-pdma/Kconfig                   |   6 +
 drivers/dma/sf-pdma/Makefile                  |   1 +
 drivers/dma/sf-pdma/sf-pdma.c                 | 623 ++++++++++++++++++
 drivers/dma/sf-pdma/sf-pdma.h                 | 124 ++++
 9 files changed, 833 insertions(+)
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
