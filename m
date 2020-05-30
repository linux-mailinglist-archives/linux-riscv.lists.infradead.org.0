Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF2F1E906D
	for <lists+linux-riscv@lfdr.de>; Sat, 30 May 2020 12:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yxreYj9+Pg1AMAV1jSxmL2ISop/iKMYI+xvW41gCUiw=; b=BdYd1R1Xf5g5ZhGItpNvouH2Rl
	Km0jsgHpJjz3Dx9NZL/dK1rpLcCeWptMRVzVY6iFVdxBOzkQHgJoDDAmRc5lbyqAYs4gEecQ7BKL3
	l5RjhsVoyJNjyNy6ywLsAHHirgqyOr8heIiKzGjmYrUwnxTiApHDio2j5J/54j38ruEtiWnXEnCCK
	S347+83vtXhfu4bVIVzLSKIwQJnnRVLCsCISPHH+uBz5YKTgA0qmG52eLaU00lMQYaQn5+4BvQkeR
	DApN3sHPU9tUbmN/6Qnvo8gsBxGP7xygypUDrqCIBcLCX1NAAuPUXIRKg6aLdxHrvLT0nUtS5KMuZ
	6ZbXvwWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeyPQ-0001Xd-2n; Sat, 30 May 2020 10:08:08 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyPM-0001WS-9U
 for linux-riscv@lists.infradead.org; Sat, 30 May 2020 10:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590833285; x=1622369285;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=u8wh4UNXiKdJj43cKZjzZHBy976No6IGs/vYJhp0nUU=;
 b=ScfYatcjmceiD0HZpubCIrRiluxncBhMCGAdUV2hz2tdhEVcpILLUyYo
 L1TRBjvkAuUfZql+/kXF08IpsZ6/toVdDVdHZR1wQgEx5/D6IRn8UGU65
 sMmLZ6AqZcCaaZs+9omUjc7HR93HMACMpvBQX1d/TFAUtfmnuy2SLjWbN
 jACEvvBxPLyPxgxdRlo1PW9VHgMKCBntrnDzKBW7zqba56Au1CZD60t6Z
 fPBl8l1v0CrgXkU+kqo3Z0O9Bw9Iv8X/80wFEHwllQ9j9/pZNDgBseo/i
 5dZ0QG1tRlrfomSD59QLKFhoQrIqLCtGjrlDJnie13nTOuPSjJ1qRwYK3 Q==;
IronPort-SDR: uRO5RMWHSGja4ZPG5DdzPFjRX5xhdQfTbfXEhZKPqDKuNvU6ZsEwH7uefZ12vicf0OwJ8MMHox
 j0eCa7zCbB4pyIyY5UzX/16OMi135Ax5+zOphZMOuzDYNDevrAQsGTUpuykEtBqYtTCMOb4xWC
 CrhOsBOeB93BFosj1CW5/Z7X0Plj8Q99YJuLd+3OFIgc76jSCsqhsgotB4YQFo92psKpI/1v36
 GBj4DR46jKZNVGN4YdguMAaqpkkvAmzuRVVhuLij5FWkJqmpgaPEwRyR5dLmvJDAphMWG6xRzU
 Pv0=
X-IronPort-AV: E=Sophos;i="5.73,451,1583164800"; d="scan'208";a="139175256"
Received: from mail-bn7nam10lp2101.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.101])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2020 18:07:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZUC5Z+D90ynUnz+THhpbZqyuQAyg+w+OfdwL1mgcpgmk5bQkYRoQZnT3HpgMOaDR2eE7CuRA0fbmF1VplVN5O/xYWQWSr0IvTlvupmmGLdwKfBc/LAm84xGdLyBXARmVkBwItm5f+R882jXgEelN9u8LebS0RtZcjUTooRV+JyrfJu8FBxL01rkMmdeB9UVqEpby1FO+suCC0VdXqzB9d65twxs0aECKr7u1IREPZLk9S9GnX4hrxjlj9nAikHqAfIrGm41XMX2GT4hY0pNToET1DBIAhQyCU2OeWntfQOe88Ljm7lDKAw4naAU4WIr+nMRK4y/WRL2K1MvdVFgH7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yxreYj9+Pg1AMAV1jSxmL2ISop/iKMYI+xvW41gCUiw=;
 b=E6iZlOA+Z4k+KbNSmJS9gkJa/+CVmm/znH5UDmdVInUNqjR906+URfcE4pDv6sA45f7H8nwJ6KmAS8xoSOFVrXnxP5tc8t6DEE+rWYgUcmq5WZAsJHU+9PuX6rydIWttgSFq3HXSTUEdY/lGBKagvdZCR62Pwh3d7fp4XsUZ8fugY+UQRV3bCGWkH2ser9NvjnSR8w2Kuq1IWNcbiRSRQdyyMgDe2nfXBnftMvhAxyKKYi+PLUR6JN3JWmoTL8MGCdoID/OZGfrgBkopROj6UhtlFvWF5SfGoQUWEndz7nbji/2Jmzw1di/pTYMu09IIoOmH/M8ImU0wflp/uizJcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yxreYj9+Pg1AMAV1jSxmL2ISop/iKMYI+xvW41gCUiw=;
 b=w0Ccb2tUM37vwZFr/K6lz3rJ2jQx6nmRFRfBUfWLrqwD1Vt+JxfAIZBsCpoj8BpQ7w5gzvv6+TEGC1Utzwo78pdPchhgUGuyvA1YtCkHdo92iHh4z9L9XMr+z8pVy4PI9UnZH4RwzJ2ZE4dnWd6FhyqixNncGmXACryfIF20EJ4=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4314.namprd04.prod.outlook.com (2603:10b6:5:98::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Sat, 30 May
 2020 10:07:52 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Sat, 30 May 2020
 10:07:52 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v6 0/6] New RISC-V Local Interrupt Controller Driver
Date: Sat, 30 May 2020 15:37:19 +0530
Message-Id: <20200530100725.265481-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR0101CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::23) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (49.207.61.131) by
 MAXPR0101CA0037.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21 via Frontend
 Transport; Sat, 30 May 2020 10:07:48 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.61.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 01e3b737-5c8e-4ce1-b8e6-08d804815059
X-MS-TrafficTypeDiagnostic: DM6PR04MB4314:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB431459EA60377CA4A00C9C7F8D8C0@DM6PR04MB4314.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 041963B986
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1jCeR3fb6i38Sbq9IEzIS+TlhNox3ur5CQUVIduI22K8eNXpmgvVyLPmU8NIemIcSBLScB9+pok0/WasJFZHgZ0weLWaqfiad7cBLxB0D+3yxUgZo/s70KkN/dqK67+mGqn2FUWOyJ2N+StVX8RwnRBtmQgoeihVSbtDm5PC7sDIOHYVsEjegwvsn9c+kXrVnj5wdfdDZvFxuMYW/oPp4aczaxfMhURqjLcpFZGEUPM3PCtZsYrWb8VOlNs4ali8Gst1j8qKomZJGtPPqQJdVEL3KwWf9VICcZzHuMXjUgL0Cqhjga/kJ3xgQX+stMv1dns6o6Ve5PB9dbUzR1srnYMF1yx+F9DClQmqgs4aC0bs8Qa6hUneJ/WGHG07oDU5Oi2oYEdua679i3q6OSozgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(26005)(966005)(1006002)(186003)(1076003)(6666004)(55236004)(4326008)(956004)(8886007)(16526019)(5660300002)(2616005)(8676002)(8936002)(478600001)(36756003)(44832011)(2906002)(55016002)(7696005)(52116002)(7416002)(54906003)(110136005)(66476007)(66556008)(66946007)(86362001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: +mW4zNRGJGeXJnH+W/vk0tFdMucMX+//CkCNRcaRtNpsrsg7a36j459gXEZm3jt7vEGaLkq56h1/fj+gyHFHW9x61EFuolXGk5pVY+VdD+qdUs4GGsGlUEd+WiQsD0VN/ZVGucorUqTMEkY2PY2b0D19RlwVzkDMKyBqdd4W20RR4zxVEhY2lLM7ewg66m42ATGbTcTmn3yjwcS8cBmpY8kxA7afPgCEAgnrFy7WqSD1o84X33PPyOfDAWh2eCla45z/qoGwSWZbhqdDAHDW1nQzJgqRBTDrS+0CfPM8ezZcODFwamOhblH7QDmuAC1BRXFjXRgfDTFZ/S/mK6QTn2MAXLumi0JX25mKcEYOydMjS0C/Gk7L8PaCyQAxG1zkpRVhIBVcO7EopWAvJmi8yNoGdWWMTpArwbgI0CFxlPSFyy05CTYLiEXz7brRk5H690bnL4tY3ncRjKTpzIGYabNaE62w13zcvOE7pfBzpE9t58sIh9g8Su6ebmjXtaBT
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01e3b737-5c8e-4ce1-b8e6-08d804815059
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2020 10:07:52.0213 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D5FLIXEHSmIa6pBI18E2pP6gOKP2uzbEPB9jenzpoHuZzz4ew4nb2waHYNCqmnn8YifmJiBJt1OuMaWOMWbFBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_030804_391790_C8AFABA0 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [49.207.61.131 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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

The patchset is based up Linux-5.7-rc7 and can be found at riscv_intc_v6
branch of: https://github.com/avpatel/linux.git

This series is tested on:
 1. QEMU RV64 virt machine using Linux RISC-V S-mode
 2. QEMU RV32 virt machine using Linux RISC-V S-mode
 3. QEMU RV64 virt machine using Linux RISC-V M-mode (i.e. NoMMU)

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
 drivers/clocksource/timer-riscv.c  |  41 ++++++++-
 drivers/irqchip/Kconfig            |  13 +++
 drivers/irqchip/Makefile           |   1 +
 drivers/irqchip/irq-riscv-intc.c   | 140 +++++++++++++++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c  |  44 ++++-----
 include/linux/cpuhotplug.h         |   1 +
 15 files changed, 253 insertions(+), 64 deletions(-)
 create mode 100644 drivers/irqchip/irq-riscv-intc.c

-- 
2.25.1


