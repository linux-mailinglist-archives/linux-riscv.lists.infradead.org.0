Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4BF1F6181
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 08:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9DgspORC0G2Ec2gHfY9r/7RcFUEKV22JPuYoq+paU5k=; b=LOsHE69G5YMTMeDLbWjfUpoKMu
	77cCH0oltM58FCDn+/Ra3Z7YIqtoxZenqS8hIqGzO6qxHquX/FgTOJKRlV2yQk+6FEwXR4UtTq73O
	ZBhIwaJ8ZmZaiS5p4NvCqgG5S2VmmJuHV5pe3KKBbw/q8TXJ2ZyJoHE2jAfxWY8UISU5lPTDQxrlI
	p6BLj3FPDFmRifysSgW9G/FmWeoi+vZhwakNUXDPF48A2h70NIeZyIkxb6HZQUCATeOSy/OKdx0JY
	yCGS1y7im4bq8bBAZv/FT1UB/qYvuhJHgOhq2dXvGoPhLGM4EI69OgNXU0a/EkpoUhbiKogDIbEac
	6JrxqFQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjGTx-0003Sl-Pc; Thu, 11 Jun 2020 06:14:33 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjGTt-0003Ro-6p
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 06:14:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591856069; x=1623392069;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=eOn5ER/b/ejbUDFEIssbX+livatM3KA5ETXmf3Txwkc=;
 b=XCh1jIZoNnvf80lO8TmsF6Az4eN4ngBSusdjfMighs1FhDGx+wIvg+xf
 X8tOBfJZrLlQd6XgQ2PqnEeTv5EKecDkxIS7mAcI3SOT0sRwsEkz/Trs2
 ey5YKENCckKcN5WysMDBJ5tikeuXd6HqgZxx9+/EvABeaikqMA4+eYw1p
 eMsL9xzhohr9ojuaaApHW4sauPpBqMAUGlxOOsJH2gwOnwMmML/YvxzZi
 WsPGo1n0GVpzJ+JNnQE7fpKMQ7ObQvog0TT71tuS3zNNPZZR1bz912gPi
 zWHQWqFJhKxaQ4amIJ7amnvEtOXcKbm3LufFTtLYPteTkdFRTV+w8nZ9d A==;
IronPort-SDR: NSrhS4yt45KDxkc60u0ji4W+z3x9bqrlMvtF+vkO5BDFa1fX3iKd2bgjTeqa1Ce5yEVzjkr3gY
 bRd+oOsK1hnqhhUYTpHcLrtbjFSR+NOU0951JjkG6Q3+3uwf+PwgKZh4idHnZ1VyFRIpTxRyDd
 ezPeLd4IouwH64s/dpADyx6mbfzl0xHukUe9ZsHYxOe5eRQWhmrDDowyxEJnFH+44xe0ciiKUy
 LukKU9r9WN8ei+OBlMGhS4AhgQtarH3ruZI3xdsBv0M4q8/RlsEmu0GahCGv6xpQMwp3FN/Taf
 568=
X-IronPort-AV: E=Sophos;i="5.73,498,1583164800"; d="scan'208";a="141117299"
Received: from mail-mw2nam10lp2109.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.109])
 by ob1.hgst.iphmx.com with ESMTP; 11 Jun 2020 14:14:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D58hPZL7w+cgWTorKm++hKr7B1gx6RyAFxoVgAZHjkedodsEw0w6cR36eNS39iBLwxWVXraIUfEG2XqBtsjgS+N1CxK1UM4bMKi8a2ZkqByaESzzbCNEG3VuUlB3SjAD7qxWDibv9OVmQ9VzHPu4917XeTMLMaBf6c7Y2H2e14ns0OnFFLjIvizJHzaS7LlpgaaxeilG6rwXvHVSVRVkptVG7cDaFsloc/ZW1JTppdHYBpAUrJtUfMmh3V27eHs14UrrYBEFXWayXTPPN6XZ64IxtS/LXcNDaxHaJ/LSrken67MNvA9LS3ODFqRrncq5ggcY4CNWHEttE5eVPLZwsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9DgspORC0G2Ec2gHfY9r/7RcFUEKV22JPuYoq+paU5k=;
 b=GUGTLzc3QuAN4a0X3MaDxpGwXqNv8DUQ/2ZdfVLpwaM/3acC4aZWeRvCwFZsafo0+NjpVPbd9HkBUsajg/FsXOEuKpI34KzwEBw4t7RAeos14mz1byxLWsO5VhmLyBgEd1L1cfHGFxcFQaCm2MvSBdQNEh++N/cYgHeI1zU4IkbeNeFlf8/ZqwypMujjUUxXi6bDAcWmN25S/r/Wicfqljem3vAyp9jf72nlbdw9VSg8HzI760AFPGRqIkQbckhkvjUvPL9R9ix2H0VVRFqsZFk5ug7l4NCSZc7HytWau1RkyuUrWXc5bIJD1wfEsNRFfN+D+pyWuBEF/5QadYC+2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9DgspORC0G2Ec2gHfY9r/7RcFUEKV22JPuYoq+paU5k=;
 b=OLXinpX5sw3Dn7wYMmGSpbgF8htx5MX1gJjLmEblX/p+SWCZ842NTUn1JW4REDK1eVkAWe23mg38ZdPkcP4VA05ePdLMpG9EMH6EYALSEAfO7S6rFIPe79XVe+v1pJ6+Y9J0QhLUOVuU48cVF4IdifGUzdGqsvRtxc3BxVlqJ5g=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6332.namprd04.prod.outlook.com (2603:10b6:5:1e7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Thu, 11 Jun
 2020 06:14:23 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 06:14:23 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v8 0/6] New RISC-V Local Interrupt Controller Driver
Date: Thu, 11 Jun 2020 11:43:44 +0530
Message-Id: <20200611061350.434293-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17)
 To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (122.182.246.89) by
 MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Thu, 11 Jun 2020 06:14:17 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [122.182.246.89]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 33111e46-7eac-43a5-2323-08d80dceaf23
X-MS-TrafficTypeDiagnostic: DM6PR04MB6332:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB6332693D624A7B4F5ADF205E8D800@DM6PR04MB6332.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G2d1z6+moVvjv21YcQHTtM+x5CydaqWnoPKauTdRp77axU+7e3EycclBwCh2DU0X6ZXDDq/g3Tfy7oEUxQdXbxGT0RdzZ9bH4utRj8tDH8ZwXrNUJKGCO7hJ9ND8SVHTLh0P4aNSSoILsPccedlr6z/9VW5bfBHuefIWueyDf9M+CKDoBQleqnc5DfxH3uI1wfoNYHIYj8hL72Ds8oV8dOL7NcVBVzUQnHqbFmpFxJhl4O9ConZVg0+VzXdLo2Gy3GKOK2e41/QFHNrsRwU9wHt8KXenOjG47MyGs9rxmwm7zPr3ia1PYL0WjJ/GwjNF6W17xk08tZAfkz1WQBPPxgorgonPA7lALPrDB/xfZnBj2YVUIKVbUKIcd7qkaqweUAgFs6GQW8nkmcFiJMVmSw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(36756003)(16526019)(4326008)(186003)(44832011)(2616005)(55016002)(8936002)(1076003)(5660300002)(956004)(7696005)(110136005)(7416002)(83380400001)(478600001)(52116002)(8886007)(966005)(86362001)(316002)(6666004)(54906003)(66556008)(2906002)(8676002)(26005)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ulLCRJ/3D7NAsZ4YPQ4Gam8dJlVQzpaUF4Lw5sEouOklmJkxWYdjA9ldlxp22PIX6tW5bJTqYN8+V53FnvnXZMe0CdQtXWJWAPplhs7lT1nOTIVUxvk9t3g5TXBwZcSgYi0zA2UKwVxVPvtLJmWDZoiQA3+8PUgdpgu8l5JVq4IE3op9q2auhmiHg9ucMZ3/1ADjn9jE4YP/czBD9JZr7r5BwZArlrNfSoYWkdS/3SPI3/5F2fB+BmrggIYGVakirzmPWfgKrqDtaaeSJeWho4G2m6/9RlNx5OX/HM4118aicdEoz6hvCHPxyZ2x3h57QaEZPvzFtq9JBYWszHsY/EMF42wNr9/wlvp2/cxWb/Zy9A7+9wtkjIhDH2C8swsa0LjyLm0cwV+D4NOsTc15gMO6XTFdI5DztYN5Uck0bAIYg1ZH1wwul8ovHwD2Vg09IF8rM4or+4YCWBUuIynsHnOyM7I7hCNRWsd0EryO9P2xWjJIx3+FIdY6IN1vE4iY
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33111e46-7eac-43a5-2323-08d80dceaf23
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 06:14:22.8912 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vBr9enE+Ts4wG/PDknkGNAcD/X9Tc2g5DNv75aLE+udO/7xVhZQ0b/q+zUzMz1gBIxzzVamZ8C1ouGKYHzjG4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_231429_453052_BBB33F30 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Anup Patel <anup@brainfault.org>,
 Anup Patel <anup.patel@wdc.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patchset provides a new RISC-V Local Interrupt Controller Driver
for managing per-CPU local interrupts. The overall approach is inspired
from the way per-CPU local interrupts are handled by Linux ARM64 and
ARM GICv3 driver.

It is a major re-write over perviously submitted version.
(Refer, https://www.spinics.net/lists/devicetree/msg241230.html)

Few advantages of this new driver over previous one are:
1. All local interrupts are registered as per-CPU interrupts
2. The RISC-V timer driver can register timer interrupt handler
   using kernel irq subsystem without relying on arch/riscv to
   explicitly call it's interrupt handler
3. The KVM RISC-V can use this driver to implement interrupt
   handler for per-HART guest external interrupt defined by
   the RISC-V H-Extension
4. In future, we can develop drivers for devices with per-HART
   interrupts without changing arch code or this driver (example,
   CLINT timer driver for RISC-V M-mode kernel)

With this patchset, output of "cat /proc/interrupts" looks as follows:
           CPU0       CPU1       CPU2       CPU3       
  2:        379          0          0          0  SiFive PLIC  10  ttyS0
  3:        591          0          0          0  SiFive PLIC   8  virtio0
  5:       5079      10821       8435      12984  RISC-V INTC   5  riscv-timer
IPI0:      2045       2537        891        870  Rescheduling interrupts
IPI1:         9        269         91        168  Function call interrupts
IPI2:         0          0          0          0  CPU stop interrupts

The patchset is based upon Linux-5.7 and can be found at riscv_intc_v7
branch of: https://github.com/avpatel/linux.git

This series is tested on:
 1. QEMU RV64 virt machine using Linux RISC-V S-mode
 2. QEMU RV32 virt machine using Linux RISC-V S-mode
 3. QEMU RV64 virt machine using Linux RISC-V M-mode (i.e. NoMMU)

Changes since v7:
 - Rebased on Linux-5.7 release
 - Minor typo-fix in pr_warn() of PATCH3

Changes since v6:
 - Rebased patches on Linux-5.7 and tested with runtime CPU hotplug
 - Minor changes in PATCH3 as suggested by Marc Z
 - Don't programm PLIC threshold for CPU_OFF in PATCH3
 - Simplified finding IRQ domain in riscv_timer_init_dt() of PATCH4

Changes since v5:
 - Rebased to Linux-5.7-rc7 with PLIC improvement patches
 - Removed riscv_of_parent_hartid() from PATCH3
 - Addressed other minor comments from Palmer and Marc Z

Changes since v4:
 - Rebased to Linux-5.7-rc6 and multi-PLIC improvement patches
 - Added separate patch to force select RISCV_INTC for CONFIG_RISCV
 - Fixed the driver for Linux RISC-V NoMMU

Changes since v3:
 - Rebased to Linux-5.6-rc5 and Atish's PLIC patches
 - Added separate patch to rename and move plic_find_hart_id()
   to arch directory
 - Use riscv_of_parent_hartid() in riscv_intc_init() instead of
   atomic counter

Changes since v2:
 - Dropped PATCH2 since it was merged long-time back
 - Rebased series from Linux-4.19-rc2 to Linux-5.6-rc2

Changes since v1:
 - Removed changes related to puggable IPI triggering
 - Separate patch for self-contained IPI handling routine
 - Removed patch for GENERIC_IRQ kconfig options
 - Added patch to remove do_IRQ() function
 - Rebased upon Atish's SMP patches

Anup Patel (6):
  RISC-V: self-contained IPI handling routine
  RISC-V: Rename and move plic_find_hart_id() to arch directory
  irqchip: RISC-V per-HART local interrupt controller driver
  clocksource/drivers/timer-riscv: Use per-CPU timer interrupt
  RISC-V: Remove do_IRQ() function
  RISC-V: Force select RISCV_INTC for CONFIG_RISCV

 arch/riscv/Kconfig                 |   2 +
 arch/riscv/include/asm/irq.h       |   5 --
 arch/riscv/include/asm/processor.h |   1 +
 arch/riscv/include/asm/smp.h       |   3 +
 arch/riscv/kernel/cpu.c            |  16 ++++
 arch/riscv/kernel/entry.S          |   4 +-
 arch/riscv/kernel/irq.c            |  33 +------
 arch/riscv/kernel/smp.c            |  11 ++-
 arch/riscv/kernel/traps.c          |   2 -
 drivers/clocksource/timer-riscv.c  |  43 ++++++++-
 drivers/irqchip/Kconfig            |  13 +++
 drivers/irqchip/Makefile           |   1 +
 drivers/irqchip/irq-riscv-intc.c   | 138 +++++++++++++++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c  |  44 ++++-----
 include/linux/cpuhotplug.h         |   1 +
 15 files changed, 252 insertions(+), 65 deletions(-)
 create mode 100644 drivers/irqchip/irq-riscv-intc.c

-- 
2.25.1


