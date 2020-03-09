Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6051F17DE1C
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 12:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A/hFe8VzQ+WAZFLAlQOc+1ctZ4qDLYi2vjRGrBJnth0=; b=Auc
	y0BKExOtVjug5XHHKcfcppfpa93WVmpDa58QgQCQfx8NFX2Chsi0iyZVx+RzF8kZM/InbITy8Waec
	rOquPHbQFFppj/2KZD94UtcT7WIMYrO1wNX7S/vTUzFvMSzcnfYpDyEWS42+RfiyI9Z4L9ahvPd33
	MWslUBpoEadgC8J1svAEVbFzw4UWtKemPsFHhpiW7YMKwpdOq/t/13908NIIQ6d/uCaS2jB2TPqtv
	QGFCUbRM+iPUsvSXQ832ewhiJUCgJ+eNLsLAbyuKa9A4NQtq1+/L19BaiN4hfc7WmJInng/+mRSdh
	6fiUBrmSXL9zWsB9sKnwn4Jhq1CeLkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGBR-0002MJ-ML; Mon, 09 Mar 2020 11:02:53 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGBN-0002Lg-9i
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 11:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583751769; x=1615287769;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=wCcLcuE+2nS2H/HLQ/3IzI8Yp3Nu8DKv6sZOIdeteGY=;
 b=UY4QIiFZiK/UauA1tz6lUX9xYFEWGF5JIo1cP+OR10De/oiuVO4DE8GJ
 aq4iX/677pu1+IfHJlQa1nIH5FkmYujYQi9BcTGz5v4M4v8EBFzo7ZHHi
 Rk+QrutktAxRXW/I8QO7qYcdE20Zh5F4zE1xtzJExYMhIeRhMpc0aRC8S
 JiAUDDJOCYLRSxwC4X5Kh/iJRr1/wC+GgZsnIw4gjA+MtbeNTk+UR3Ndx
 cgzJEcWGafzCsZpR7hGmryrb5BdV7OG6pYw6jkBn8PAQ36J7I49I1PNwx
 2cdKVbFSfTEZO2wpCVd6xF5i71FDB9H2aLMBwsbqFun9MTQD4Nzy0/UmH A==;
IronPort-SDR: M4BkTxj10tFmtgKFxchSF6ktnYgtKAoVHNCCIaTus3diu1On3qRcR0RDiwj9lqxvUNx7OX77k1
 Y5U7iqNxQ/NIvGz1s+eVQjP4CL1Le6C1rkOb/lWmRzLM4WL8gYXFlXyrzZLykzcGreRChzt6JE
 A4x/I3cOVjpP8YSgH9Xt1n92w+jQVv68dVoVo/LV6D4Ojbc50OhCxCtU0oWChW7jlN5xP3bvRO
 x+2zqV0wTAsimSihtPyoCsQ7AlfPf0rv1x3NumUf670GFICNlWqkoB6VolYs7mYDUJnx+e9Kuo
 YNY=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574092800"; d="scan'208";a="132431307"
Received: from mail-mw2nam12lp2043.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.43])
 by ob1.hgst.iphmx.com with ESMTP; 09 Mar 2020 19:02:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VE26+YdQH+JYkSB9LTJdrHJnf1AgojVHkfpff6Bam3AFwtGq+EnmeOM3vmRQ0WA+TkRW4Vm11m0BRUvDqRoYfiIhoRQmK5YZrKPI+S3Y/Ay7F+nN/yw5fckVVuAJe60fXVvwFOxbWV3CN6athfIowJjpM+FNfIuEC337fDBcTnFJivTvjBryGndP3rq7fqvMiOtsNpaZx9j0WVnGV5SgSM7FkhnOWMll3IBfxeGcJps0sHagv9ymkomnwuDUfi6aK055Yk1ByjiKy14QMNwN6tzS3BRdEMxd9ZDnFuMhXo4ucVp8F2fXq/pXPSYRmaIBGmrkiC18qnnUEY7FXlt9CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A/hFe8VzQ+WAZFLAlQOc+1ctZ4qDLYi2vjRGrBJnth0=;
 b=kIHqGUxZgA3yUzL8rqUUtSIDgBETE4D9oea7kE81KFZVY2wNSdJ4e6ZldmwzVo3xrY5DplFlnRHOO9fQWlXnLjn0U60KGkgRIgACAPkFYaQw4NV0YdZv/s8FHl1yzxZN151tyEjM0Vn3y9wjQzJ3oiAahegszqEuDTfK9YXCCEREis/IIfy/WeirqvkYUBg1WSfjHCGqAUlHiVFiD+qBQwmC8hE3CIflIx76cIZgNN1WzLUfA/aO3FlHJsPDW8iJDJOK1l+7sTzjzengAiSRXE0Y+lwSIo+8UejDxBCc9IocDNtB7SC2Zyn2XiA1Occ/Fuiaoq6vQBd5XhALzfn0Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A/hFe8VzQ+WAZFLAlQOc+1ctZ4qDLYi2vjRGrBJnth0=;
 b=UwD7ktSWICI9bxe82wbAtvdi6HJcDNaOAd7S7LcaWJQiehZi5qLBxgK9rNZdqUDFTaifcIlLIPM3YrSbBCMCOaQWvrHszBWYyJTASbBDP8czKKyqz6Vfj3FN49mh0oBSHoHIYUxQ0ylAZMxcsWd4T75hBA/OdJY+okgyeSnqPxY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB5517.namprd04.prod.outlook.com (2603:10b6:208:d6::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Mon, 9 Mar
 2020 11:02:42 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 11:02:42 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 0/5] New RISC-V Local Interrupt Controller Driver
Date: Mon,  9 Mar 2020 16:32:06 +0530
Message-Id: <20200309110211.91130-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: MAXPR01CA0071.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::13) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.22.61) by
 MAXPR01CA0071.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:49::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.11 via Frontend Transport; Mon, 9 Mar 2020 11:02:36 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.22.61]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 139dcd0a-ac2f-4989-d3e7-08d7c419638e
X-MS-TrafficTypeDiagnostic: MN2PR04MB5517:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB55172C0D98FD53F071FC30748DFE0@MN2PR04MB5517.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0337AFFE9A
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(136003)(396003)(366004)(346002)(189003)(199004)(8886007)(86362001)(26005)(1076003)(55236004)(1006002)(6666004)(5660300002)(44832011)(4326008)(966005)(55016002)(478600001)(36756003)(54906003)(110136005)(81156014)(186003)(8676002)(81166006)(16526019)(7416002)(8936002)(7696005)(316002)(66556008)(956004)(66946007)(66476007)(2616005)(2906002)(52116002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5517;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +gkPnxeXMtvAI74km+LNuwm/WA5FN9uRYAoC9RXi5vttoqRL5WIAhr21dtu9Mi8Z+i8I6RN40TYhnwdEBT/1s1AYs6r/+8niNwvq+pO3OFpnw9yEAmi4P54CTTy3b0ukJqgDBdeiYj1L6cuf9zpIkp2IRUk86TxiStthXPxmT0pu2NTlzKGbWbLGzE+bdoLVUH36jqsXi+33tqzfXwso5r8bep+75WqzIdzeNt+H0S3RXBnqK4BNElVdreRpXfPeo+QfjapCpTtPv2FYFLhoZdjIQpYHNqm1oa+zc7fb3lw/tJDdrXfT6PpDnzRDtLq2TMLlBEgkywQLx7FEaBkU4RU3xSvOXY3A9SQHiKg6oPxFo/WR9zxbfBdcECuJNWZ5hr8L2NwUw++1K6SywMIF1XqaIjLF7BFyxGXSDckfLNzaL3EoEPSfGO6mYDdZ2uTXeJxsC0gT///catWzjNlQ2vW9QXwhF++4TaMfmZPcCXtfOfjYalUcSDllJ5aBvyPf5dHoqCRpagsnBOxjFOGmFuop++/rs3NpH6nbCPvKlAeG0G8q81oVXTmOOJJG7q1ifN3h7uhUXIsv2ItnHMdGQw==
X-MS-Exchange-AntiSpam-MessageData: uvTnbZiho9UFjB+Z5qkqfgHBX1cc98PhczvC3JDas54XBN09nKfU189UUGVKYhnEStdldxovtIcuOOxM1H4CizTjFAnyaRAkiwLOxIDrsgmU8a80mEHGPIeG1qNEn2ISQkGpT+GQUVuECVXhYUdFug==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 139dcd0a-ac2f-4989-d3e7-08d7c419638e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2020 11:02:42.1984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5x2GosQ3B/mYkWiBFomDCMUJmD8YgqsrSFHZMLamd9uoktaV8xv/tO6iPJbD+nNee3VgCaYq19VF95GUWgOeUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5517
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_040249_411236_F24DD55E 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.22.61 listed in dnsbl.sorbs.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
1. It registers all local interrupts as per-CPU interrupts
2. The KVM RISC-V can use this driver to implement interrupt
   handler for per-HART guest external interrupt defined by
   the RISC-V H-Extension
3. In future, we can develop drivers for devices with per-HART
   interrupts without changing arch code or this driver

With this patchset, output of "cat /proc/interrupts" looks as follows:
           CPU0       CPU1       CPU2       CPU3       
  2:        379          0          0          0  SiFive PLIC  10  ttyS0
  3:        591          0          0          0  SiFive PLIC   8  virtio0
  5:       5079      10821       8435      12984  RISC-V INTC   5  riscv-timer
IPI0:      2045       2537        891        870  Rescheduling interrupts
IPI1:         9        269         91        168  Function call interrupts
IPI2:         0          0          0          0  CPU stop interrupts

The patchset is based up Linux-5.6-rc5 and can be found at riscv_intc_v4
branch of: https://github.com/avpatel/linux.git

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

Anup Patel (5):
  RISC-V: self-contained IPI handling routine
  RISC-V: Rename and move plic_find_hart_id() to arch directory
  irqchip: RISC-V Per-HART Local Interrupt Controller Driver
  clocksource: timer-riscv: Make timer interrupt as a per-CPU interrupt
  RISC-V: Remove do_IRQ() function

 arch/riscv/Kconfig                 |   1 +
 arch/riscv/include/asm/irq.h       |   5 --
 arch/riscv/include/asm/processor.h |   1 +
 arch/riscv/include/asm/smp.h       |   3 +
 arch/riscv/kernel/cpu.c            |  16 ++++
 arch/riscv/kernel/entry.S          |   4 +-
 arch/riscv/kernel/irq.c            |  33 +------
 arch/riscv/kernel/smp.c            |  11 ++-
 arch/riscv/kernel/traps.c          |   2 -
 drivers/clocksource/timer-riscv.c  |  79 +++++++++++------
 drivers/irqchip/Kconfig            |  13 +++
 drivers/irqchip/Makefile           |   1 +
 drivers/irqchip/irq-riscv-intc.c   | 134 +++++++++++++++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c  |  40 ++++-----
 include/linux/cpuhotplug.h         |   1 +
 15 files changed, 256 insertions(+), 88 deletions(-)
 create mode 100644 drivers/irqchip/irq-riscv-intc.c

-- 
2.17.1


