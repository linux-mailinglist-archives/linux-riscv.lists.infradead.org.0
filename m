Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D952D5CCA
	for <lists+linux-riscv@lfdr.de>; Mon, 14 Oct 2019 09:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=i5NhupoDpNkEvZtJzDhFF0RpNcBcB/0XRM1n31fM/6w=; b=S0A
	+k4PELDgUqRwhwcXAop6X9mCMPVnxkUpI6U58lZe0Nz2deaxBNR26yLMXUXY++fBjnDtaO9ubJZ+0
	Z1qbR6sFveQBQPOevWYKWJOZOUUjpotE5rrSCxNV+ttB4uQuzxNZUTTzJXvuwgp2ceyVLxff9DR3p
	22RxKlVfDScJTfhWroasB+nR4mKLEfPVmCLruIL1BHKn8TD3xj8O/1P7bF+z7VxuiLNw5NzDJ7rvI
	fctd5Ang/ayEYwy5K+ce2F59hez3OhmdGtyRXua+6Go+Ka2ud1k8yhRtmH16mCLweZWeQ2Qedsxy6
	VXJyo2lT4A3dslgNSmvJHVgZkwNpZYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvCd-0000hf-F3; Mon, 14 Oct 2019 07:55:39 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvCZ-0000h9-T7
 for linux-riscv@lists.infradead.org; Mon, 14 Oct 2019 07:55:37 +0000
Received: by mail-pg1-x529.google.com with SMTP id p1so9615653pgi.4
 for <linux-riscv@lists.infradead.org>; Mon, 14 Oct 2019 00:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=MNI5mn/r/9PEydTyYbiuaqnRTU24OX4PsHrUiRu8H1E=;
 b=XjAHdaytuN27WH+qMN1Na/Sgfty15Gq3pXeDtv7UFpL81s6ZtkFfeO0KjOh3WUkY79
 sUj8Ee/viGjKBeLPGQXAGXB4GlpXIEVqBTlC26OlXDppd6hQX5QvLbA+6mF1xtZRhQWe
 NsIGAp+t2mrThJhYbXYPlD8T01d/KURE0l7NVvvUPU75RWEi/xKU/L15mJtODActLRtF
 NReuM+P21xepmbaAC2XnD4jqORJHpW7vB5UZc5iRv0c3ylYtqnnFsRWQ/7PPRrUBDd3W
 Dhu77b2z3sSC3OplJ4XBYa5Uz0JRt7VZJ0F9DKWyanlFrS/VlEV0qjF5Y/tuQxlkaQLj
 pO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MNI5mn/r/9PEydTyYbiuaqnRTU24OX4PsHrUiRu8H1E=;
 b=QpQAzBJjxE+WCRjpg48HhHJpA4LFxR8OoZh1CzqxHPeF1p9iUQuzN7n1R2FcokeHzV
 +5Jl4daI2fIDMa79CniachjswnUMR/orc3QeJyL6LcnT3ZG+sjBT2Qc6b4YKskFmivfF
 V/6KEHbhG5O1qYsC3VoDSZM89TEHQebF1Z+u/06WjFc1zN1aVzJfWmEPuokZbClkArdj
 VIOS+dm5BEHW/GiOEVqqcp4R+65pUAFt/YVggx9HERpyC7/5KIkvxEz9+AxqFtIYQi2p
 KoNh/1tKyxYmMyVTMOHSJVqd5WjS0H4zfrRPpnqSkkwemmKNg3V3XCk52KSXBKBUdEuG
 N2IQ==
X-Gm-Message-State: APjAAAX/xHUlkeEUk/eDBbUGoWmwrKqBtLQAAH+mYrD4lP/EVFiO3eqG
 TqroDA0GW7HFWj1Pbb7GTOIhog==
X-Google-Smtp-Source: APXvYqzjZQsECmJcjeJL+Kb/fahhGk640iRkKNvonQHNJJ4VgDDn32GAg0181aKdTuVxeQDLgKWDVg==
X-Received: by 2002:a17:90a:b391:: with SMTP id
 e17mr35586164pjr.132.1571039734974; 
 Mon, 14 Oct 2019 00:55:34 -0700 (PDT)
Received: from localhost.localdomain (111-241-168-233.dynamic-ip.hinet.net.
 [111.241.168.233])
 by smtp.gmail.com with ESMTPSA id j126sm16583137pfb.186.2019.10.14.00.55.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 00:55:33 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [RFC v2 0/4] dmaengine: sf-pdma: Add platform dma driver
Date: Mon, 14 Oct 2019 15:54:23 +0800
Message-Id: <20191014075502.15105-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_005536_005682_5B701C4C 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-hackers@sifive.com,
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
 drivers/dma/sf-pdma/sf-pdma.c                 | 601 ++++++++++++++++++
 drivers/dma/sf-pdma/sf-pdma.h                 | 124 ++++
 9 files changed, 803 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
 create mode 100644 drivers/dma/sf-pdma/Kconfig
 create mode 100644 drivers/dma/sf-pdma/Makefile
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.c
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.h


base-commit: 4f5cafb5cb8471e54afdc9054d973535614f7675
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
