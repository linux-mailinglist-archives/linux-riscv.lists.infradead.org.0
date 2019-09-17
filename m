Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92570B475B
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 08:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FZopH7RrPAs7D3Er3/Vjh7HHqEv54yypQfVxZnAwG+o=; b=Ulv
	YaHPczcI7CfvRWeKSjejs+Isi02QlBb1QrUvrcA/RE4Y0Z8GDv/70Fu4SatE9q+QlTFEdGCZqBXRb
	ldEMWqthzFD67sq96WSTMeJJy+r593E/HC4UR5duMB7yNY5CwK0b7SzSMRgzUAJIKylOCZc+axswk
	WhMS2L1pQybCVdOoOrI1BKkQH6jjRYb1GhgudmRfm+8uwxQSOPhei92cb0TqGKVvN7zSAlon82QxL
	TaMX/imrgMlsQ2DlBXKPs8KXoFt+lBQ7MXIkLrdzXLnNDMLc2tJQBheXsHnuhFYvy1XPPsW6sH3zW
	aC/hMBa2emTqWxTzS+m8WQia0CiouiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA6s9-0007rg-QS; Tue, 17 Sep 2019 06:21:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA6s5-0007qt-1r
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 06:21:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id x127so1510149pfb.7
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 23:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=TEwv74xGLonyUSKE60jjZa5xk8QOk2YknSg9pzIDLUg=;
 b=hqtP5Y5Yq0jTC+rzc24KLymUET1TvjR5Y0h0InG8LyO11aFL6tcFT4iNkH7I8UE0cG
 BkL+UFsADnhEeTHQVVAFR/CIbBedh/b99DDqdbtI95cPJFVOg52P+hHJ5fttXtZMAV47
 Bg2l9DukDANYWyHYtsQ+dhUxhshOXh8Ovl9FufVg6Xwzh/Q/mI9wNqhwApTqY2yTvuUm
 pV1Lnm0ODH7TzRPdyw7wz8WEvymt0Y/5SnZR7ZNHZ64hkwUux3oVuUDYtLLfeHq4akZ2
 1vko4JDd//qfnAiZNtrQ12E2waVNv7BvHpJNqf6m1yVqOiufEw+fkvPJaaBHIo6pH17M
 oa2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TEwv74xGLonyUSKE60jjZa5xk8QOk2YknSg9pzIDLUg=;
 b=TsGdUDWYsFBfhywFDTCvSZlowLdVi0sdWRs8lUqwGLKDjLGghQS3JE2IYFXE9HLby5
 rPTXG/XhRi4Kh9+a9Fy/lqN0B/dasZ+4Hmt7ntc2OyfWDa8Ypf/N9LwEc2FYijgNqPjO
 9hUUbuwhsaW6Zl3yiAPBN7KYUpuuW5lY/VvZNvynYymD7UR2zhMZ9U+Bp6BpEO7PLS2K
 2/6pWK4IHYPvm69Z6ZxAFQR7RI4fYIs2xHSreV9l7WagYjF10ITK81U5HheZOcoa+wZi
 C6JZwW6SYPwrQmghNJk+1zHFRGM+XKdcfC76zYwk6IlP08neqy0y0xWx1oazmE4SZxsK
 PK+Q==
X-Gm-Message-State: APjAAAWwoNPRTIZU4B7euczEvsaFHba/OMIyFzidU21xKxz+Y071uiuV
 G7xwTK0sF3xTaIQN0WwFMeThYU75N823NjUi
X-Google-Smtp-Source: APXvYqwNofpu/24HvPIr7zem7L9ISS92QBaKN3qeRCbMyGyJm5Y2QMYLHzoNduJ2Ml4wyt2+Tr/SoQ==
X-Received: by 2002:a65:6802:: with SMTP id l2mr1831103pgt.33.1568701311473;
 Mon, 16 Sep 2019 23:21:51 -0700 (PDT)
Received: from localhost.localdomain (111-241-124-228.dynamic-ip.hinet.net.
 [111.241.124.228])
 by smtp.gmail.com with ESMTPSA id 127sm931089pgi.46.2019.09.16.23.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 23:21:49 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH 0/3]  dmaengine: sf-pdma: Add platform dma driver
Date: Tue, 17 Sep 2019 14:20:46 +0800
Message-Id: <20190917062119.693-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_232153_134416_A7B71925 
X-CRM114-Status: UNSURE (   9.29  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/dma/sf-pdma/sf-pdma.c                 | 609 ++++++++++++++++++
 drivers/dma/sf-pdma/sf-pdma.h                 | 124 ++++
 9 files changed, 819 insertions(+)
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
