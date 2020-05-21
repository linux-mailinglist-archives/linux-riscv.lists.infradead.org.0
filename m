Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285911DCE20
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iG/eqT64PCH6pf5TXlmbp7yohHFMKW2Z5a7YhrM/Nfk=; b=WuHtsyTMTYaD5RsAqq4eonllHx
	OUaph09LiWjesMZXcOj5eqcRi01te2SC/RshtGWlmtvlYieu4wu9s512e1lc62GS0xTwWVmoegPev
	pVcuxeu8CAvXbCI02anYU6bplVVtixrhmdc+6bZF4KTeEmPOCO6d5EvNQk0XnnsRfzXsEbf1gP4hl
	QCwxhbekO2AfveLI5n6sGWAlBh4sL2mti9Yi7l6ni0ArM9cxaXfC8LvTGoKUHf5qLHMf3A23xzpkC
	yVnNV8w6VBddwO32UxmESGl00fxIbfEY29AJC8VFg8TNRveIkuYCQItG1oK0Blu7MX3mHTmmVAm8e
	JG1NhISw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblKb-0004Tn-Ml; Thu, 21 May 2020 13:33:53 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblKR-0004Js-Fb
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068024; x=1621604024;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=KpHOuZquHWHjANF6F9P/sfKDY99ZhYsGrKWpXJBO1bg=;
 b=MJ6keaNq0sreF5SpIP8Pxvrfdb5wI9Z7cCUyz/7Voye4EJbjnRzDctpV
 BroSoUODqkdEWgdN7hRQlVsvb/zyr3wyW2IjlEXM1Ow6+FPYo99FisT9u
 Wo3y2vj205Gle5ZFCK59l4RsDZUfhJaO78DeYx+KSOO4SDu3/wBinuquv
 nZ886KqIreAxhg/VY9oEgNdIv5x7ztosIek0DIiJK2b2kSATO2FFcnT1W
 xWdiLqUnWjECagBi3xWvizwzeod+OXodDIdJvZJU16nmuDSAIfFhdPqb/
 d2R0DuQFLzshwdQ2uMvOdvOuWeQdIgfLGlKZ4d/R/aHRlG7WL2o4XhK4M A==;
IronPort-SDR: Jignb6g0Y9pmY2TDs6RolbNcnhaL8fLpNVtdmk1iHrJGc8WItX4LPH3wcw4WMU9Iu0eHOXEoaR
 1O99q/zxSPCigQkOAleaaDCPgArC56STiyVcBRm3hmQ1qWRtHetHq7LxgSMnWQtTi8rrxwb6pM
 KmZ8q77iGaNmaM5E/9m3zknco4GbWCeBIJWEtip4iu1dhUIhQZf4OIYbBxyzn7MptpjzIFpvXe
 FZ2MbrKjSWbfsltgWs2lcH+V3fy7SS3oepatuopoMCJ2tD14vLeN1bVua53pR/jd97i4OccnQ0
 IlE=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="139660898"
Received: from mail-mw2nam10lp2102.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.102])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:33:34 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DtoANsdGw5L2Rqas7bMrb7UjOB33PjnAjIRQCHhQliahjOEy31xTzKc1NCmGdSDzT2kl6s5WRTLUQTw/LtxdZsvKle5tTJ3iyKfFqsVJFO9XZpFxjh5sVSGChBFg9hGnEQdHy9PprV9QX1ykSQ6xkEIUST/f4G1Ze23N37SzFd4q/GrfvcJapI56uajPo8wk1KWjbKtmtobvd1t1Hu7lXN5+dqg+3GxJUwod7ehntPmVio1fhtlqv9z5gEgg2jU5Ygl8biG37w+i0A6fkuylt1I3Pmp68n4DyTBc7XWql3L6KrWHQ3DnrdEmwOUFJGawSFnO/Q/6h4jXyc7djs0vIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iG/eqT64PCH6pf5TXlmbp7yohHFMKW2Z5a7YhrM/Nfk=;
 b=JdlkGePER3KVm8kqCm9J18IiWsBNGSJarKks15eJQF9ZO0poU6OEoqS4R1XW1777oDNB1XcZrRP3LDD84MW6GzdfW7CKopFb5igSc2+K7R9343JIczbotf6lDC5oJF4Ikr397jO/aruNOtagLZGUe6ArDbxJDVDptT2LcCK2dKTLiyiSJpzJh5yOqSMHKj6q9wgUl0zW8a5E67nERymSVqmX44AuEDXfUcj+ZQagXRCWLbo1mYyQ3HmmftePLXDP6WEw5xIvVaZbUSBUIzcCfvsESm63JLF3KzpC6yAwMdzjxipBomX+po7tcWpP4vUgRuRKpqSjrHw9n73JtGVwIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iG/eqT64PCH6pf5TXlmbp7yohHFMKW2Z5a7YhrM/Nfk=;
 b=L/1/mwOShaVyKbffYVNz+3o42ZaHnurUMvNRXZiwdHIWcdjmmkiSwPCGiyTgK0jhRYZtfNaMQuUJleIfvh8KGQfZcXrQ73/HRqr4sZZ6jttu8ajgF0QKV0jhK2Qdw0A6tTP1wfouW6X5k6um0hqjmkgNHHsx0dxXz87UjXFkVzk=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4442.namprd04.prod.outlook.com (2603:10b6:5:97::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Thu, 21 May
 2020 13:33:32 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:33:32 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v5 0/6] New RISC-V Local Interrupt Controller Driver
Date: Thu, 21 May 2020 19:02:55 +0530
Message-Id: <20200521133301.816665-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0033.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::19) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.30.72) by
 MA1PR0101CA0033.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Thu, 21 May 2020 13:33:27 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f5b98668-ec46-462e-e18d-08d7fd8b8e03
X-MS-TrafficTypeDiagnostic: DM6PR04MB4442:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB44425E86E0093B79D4CB1A2E8DB70@DM6PR04MB4442.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ggqs9SZK1M53QGykwZFQKMf+PZICDVkmjjVD+dLxQI/Kcq1kowz3Yz+GRWfywsweVDSIjzgQhgvx5Q9Zt6OgUf61alpsQTdFSHX0zYq00NarkLiZk+CUmqUnMrQi0DTMg6NQt1ipYCsMwtZARcCEemDTzslUmYcDXEND805FhJ1JO+2tErQiFCUhOvlxoxPEXC0IQGNv/6VhmJQue9HR6fDZU/mQhtUAib79jpOCMDs27PC2+cE80zvaVc/yW4zXfb1p1IxJtqW6nVEc4wsJfD485vd/Cr47+CQXE2qKeGhWoFs/47isoLULKzSc2DDeZpgcXP/vqt3x21ArS4jjqg5WULkXZtNkcsLa352ZGBgcu/2q7xiYi+PdbHAa6bidHhoz0Bz7SsmxZOzY5g/AuW3k7DXOA/F6h8lOchX16+Q+ib3r129phzXBIx5a3rEWJx7BZyLCm0+X8iL66aTo5v1jbto/fT+waIO5EqT0YcJYFhQHTdwHRx+W7cw11zYcePb2t4qNNvdYg0Jx+yBLhw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(2906002)(1076003)(66946007)(66476007)(4326008)(66556008)(7696005)(8676002)(5660300002)(8936002)(478600001)(55236004)(52116002)(86362001)(966005)(316002)(110136005)(36756003)(186003)(8886007)(54906003)(26005)(44832011)(2616005)(956004)(16526019)(7416002)(55016002)(6666004)(1006002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: iOlfmwc0q652mpNK2wuFX6aIuoY7bX4oUU500hDiOtHz8aLYf4iabAuo0EkeIS5H23mJ2q6LHDBB5sVdPFy22uM821M0x3ZtTqwpgX/R6I2rCHVqNpUQlCwpUbnBci/ZeAainguXM3dUC3s+coCh2two+8vCgx0h/sLTJd5tzyI9VTNfDJ1gZMf1ZdSmuK1PvmLtGULyhNnBTMblJuQSywC8HM7ESzemuEQsbIbkxdAVZ0xEC+bGLcEH1Odc330s0YVaJo/G7w90j11mEU+0/S0sa7CvcNDFM4Ne89fmrivx2ltiImuguBGeQ5nbB88BZyTCKvrJapkW+u+6yEMiFQz1N0M0u/esaMeZNVZy0UusZVpZdnJ+0jItQv2Jjbi1SDJHFKwi7jXAk/jVS+haLDUWMeOF7K2SHlqHohRMXtROYGGIoi8I37KnznWxzzfZEV9DzR4y4tJ7MxP8xe9X/ziIcdepY2s7+EG3W5rnqBY=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5b98668-ec46-462e-e18d-08d7fd8b8e03
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:33:32.2793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NftLPczDPqDR67R1/punPYitcXJv2+3SSsJqP5ilfGbPSBGFEu950yP3AhTlXxo8QudD1lhCOUS1lE2DjS93gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4442
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_063343_905102_D9A7D61E 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.30.72 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patchset provides a new RISC-V Local Interrupt Controller Driver
for managing per-CPU local interrupts. The overall approach is inspired
from the way per-CPU local interrupts are handled by Linux ARM64 and
ARM GICv3 driver.

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

The patchset is based up Linux-5.7-rc6 and can be found at riscv_intc_v5
branch of: https://github.com/avpatel/linux.git

This series is tested on:
 1. QEMU RV64 virt machine using Linux RISC-V S-mode
 2. QEMU RV32 virt machine using Linux RISC-V S-mode
 3. QEMU RV64 virt machine using Linux RISC-V M-mode (i.e. NoMMU)

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

 arch/riscv/Kconfig                     |   2 +
 arch/riscv/include/asm/irq.h           |   5 -
 arch/riscv/include/asm/processor.h     |   1 +
 arch/riscv/include/asm/smp.h           |   3 +
 arch/riscv/kernel/cpu.c                |  16 +++
 arch/riscv/kernel/entry.S              |   4 +-
 arch/riscv/kernel/irq.c                |  33 +-----
 arch/riscv/kernel/smp.c                |  11 +-
 arch/riscv/kernel/traps.c              |   2 -
 drivers/clocksource/timer-riscv.c      |  30 ++++-
 drivers/irqchip/Kconfig                |  13 +++
 drivers/irqchip/Makefile               |   1 +
 drivers/irqchip/irq-riscv-intc.c       | 150 +++++++++++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c      |  52 +++++----
 include/linux/cpuhotplug.h             |   1 +
 include/linux/irqchip/irq-riscv-intc.h |  20 ++++
 16 files changed, 280 insertions(+), 64 deletions(-)
 create mode 100644 drivers/irqchip/irq-riscv-intc.c
 create mode 100644 include/linux/irqchip/irq-riscv-intc.h

-- 
2.25.1


