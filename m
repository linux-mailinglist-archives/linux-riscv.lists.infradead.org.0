Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF121767F5
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 00:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bw3d0g8QhJT6Kkk6bHPEFYdqHJcppavT5+aUv1xBG2w=; b=seftdd6wRLmurH
	njmDb/HWMlqix8/9edT/5RZjIWXZs1dZ7QzHpB4QFa5XMJZjMF13IoILgqWnQVruZ6sQn3qpuW0gs
	26L4N54hjFLLXWTE3xu2XYuzh2cK023Ir7YLuQoWgi8JcsB2WwxY7GoqsBZxPulszclNHISpmCG6b
	E64bGxsfQOvlpX2DxwL0bigyh5vAJHyZ3ja1bTOkq3zBm6Rc5eU3bOT0bbi+8ufcVWtLpkNNY6BW/
	zPdGFEUm35NbZXlwJPAuYDhAmDr1p+/GBSVTKsQsU3K+e7WipfHzvrH47aUPGU32Eqknin+ZscHkX
	Hi2Hvk7huntbLyZiWiGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uGL-0002ud-9Y; Mon, 02 Mar 2020 23:14:13 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uGI-0002tr-8T
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 23:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583190865; x=1614726865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AGqPkTKe6UEXeLLRbH5vhOJ55qI3COFWkFGnJ1Hvl2A=;
 b=j9YLdRgCavtcNV3MVrMpPiT0qAFN+Z9s5yYf9brsmIgyNsipK4DJaJ+W
 GDK+Dpvll1mC5N4nEfiIk4OacY1a81iBbPAU2MHWh3WK6XNjLcB6dHn4d
 uN7UJ4oe7/FddGnxx9h+xOrh5Rix4w5W0k54+PZfNrotLHNqEMBWpK30S
 CDjqeXKyUg/7u4D5IIg6Eaznn9WC5HfPlExvbz9p9CEaPeQIdVWDMyh96
 l5QxfJRfjyApgA1Z3C+1dY2i05Y1qXS8ndGC1Zks3l+U0xNrNGZ4NOE68
 eSoj0WJ2IXzWQMIO17UM/nMb1UDakZmi2i/sYTqem2cqKY8+4Y0hyrSRB g==;
IronPort-SDR: c4HgKnNiP5YUUtp0r6rKspDyrSX13LwBrdSFQaCS0XopOO4SZDWncE3Vca0OX8+BYi7fivQZNb
 f38qulc4b7hM8zTH1GLM0E7GPTDdKnZRf484XYlqAUg8SSKxSvTb9gMimo8kSpncXG2gDvUXu4
 NU043pNcwhHVTcvL/cP8WLRvvVktOaH2XdB917LJchE/1aq+KidLsRgNr4rqgoRIXtZ3FhHqyS
 Q9+DozOwiAdS1VIYL36VRgEuGOLLfjhT/YlYgUkwyY4a15Iu3fqmdLMiJ6AqgYihb2YfBMVvl7
 7iM=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.70,508,1574092800"; d="scan'208";a="233148685"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 03 Mar 2020 07:13:56 +0800
IronPort-SDR: KiWhP78oG74LP1MZv/cNypZnwQyJ5qkZGuwilc0lG6BJARaTOPKAP4qETTVS5v+pRRzJI3PAfb
 Yj7+VqpbNnAHd0xa7aN9x2o1CsbOAmqRCFCDyPANu4Uj9NpvM/MBx88ZAfxKJiYRqkpQP0yjk+
 vRKoq4+EjEN46p+drWudCZ+KiNCetsIM2K7fiovtm4zUSbNLtH0iZ4Ou73Z/pT9VmwmZZXOW9t
 z1DKHln948wNLzEb2vLaQDOsjPlbnoSoMISD+k5lkjQ2s7X6sXygmlliblPo4S9F5n8Yl/ZZ1v
 k7kbdQaxYrFOTKdGTBE4m3Q3
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 15:06:07 -0800
IronPort-SDR: mqEq2MevqO9o2882QUhs/dzrhYoOweLKrDEouviGDeX58NS0lglPclveQfXS8xGa6YXGvbVHUZ
 zxP+yo1cwYQ+nPhMAV6yFGR0XyfQpIj6w5qDvOlEO1D0LX/SDgbD82HVbbtuaMOa53kloIOXJX
 6ogck5Fykqyf3IcDZnOwewDaHdh7BzumvbmJMf0J6Jh2xnyBBnP8I8maHNnG5hw5QNdDGiX5oi
 T0ACYnWkjRfufF5RfRuz0DMK4/Z1skuqR403z8YKDQHLEIkWXonZ0RViKQMSLdgolxfg1WC+31
 Tp0=
WDCIronportException: Internal
Received: from usa002267.ad.shared (HELO yoda.hgst.com) ([10.86.54.35])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 Mar 2020 15:13:50 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] Improve PLIC functionality
Date: Mon,  2 Mar 2020 15:11:44 -0800
Message-Id: <20200302231146.15530-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_151410_332474_06A2F91D 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Vincent Chen <vincent.chen@sifive.com>,
 Marc Zyngier <maz@kernel.org>, Anup Patel <anup.patel@wdc.com>,
 Steven Price <steven.price@arm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Atish Patra <atish.patra@wdc.com>, Anju T Sudhakar <anju@linux.vnet.ibm.com>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv@lists.infradead.org, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series adds following PLIC functionalities

1. Enable/disable interrupts only on cpu online/offline events.
2. Support multiple PLIC nodes in the device tree. This is required
for multi-socket platforms such as OmniXtend.

The 1st patch was originally part of the CPU hotplug series[1]. It is added to
this series now to keep all the PLIC related changes together.

Rebased on top of 5.6-rc4.
 
[1] https://patchwork.kernel.org/patch/11407379/

Atish Patra (2):
irqchip/sifive-plic: Enable/Disable external interrupts upon cpu
online/offline
irqchip/sifive-plic: Add support for multiple PLICs

arch/riscv/kernel/traps.c         |   2 +-
drivers/irqchip/irq-sifive-plic.c | 119 +++++++++++++++++++++---------
include/linux/cpuhotplug.h        |   1 +
3 files changed, 87 insertions(+), 35 deletions(-)

--
2.25.0


