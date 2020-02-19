Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0D4164B9D
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 18:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o32R9hzFlSpIKvpid0x9ceRe3mLKKUNFCfp5cWioWpU=; b=K2I
	ZPAvbwh95aJ53jZfeWUSZtjDk2yRg3vn6vsTVNULeadjDyb3T+hLNpDinn+RPhpWpQKQpm7PxYl+y
	srInDXPfbXeJ+ONdkW71XxDPHtb/FwHWfaI5JttMe19Krnlnd3zZDkkAqnKABMt7np4HrP3I4vSS+
	kU05OhRRcrnfdMA/0HfhZldhsSpIcwPxS14QZNnsun66qYYBfzkl6cah5oSiD7L1+GA3ytCkW+cRK
	oHTTrcE33LvW68AQGANfGRA7qO9y4tcvgX7AElCNmOrM7KXFjfWBjH3BBpe1XxXiLcsG2o7SgzuMt
	SDgJBSf6SuxHY8OzVV9oMpzu4jRA3iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4SxC-0004PV-HE; Wed, 19 Feb 2020 17:16:06 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Sx8-0004OB-Rt
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 17:16:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582132579; x=1613668579;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=tt/7juscS+xtv+tm3Mz95HDOYNXDDlvDKqFLI2IJuhs=;
 b=VQUrO5EM9lAb1920w/AK1jAT/d3O+ozPp6jCLln/TeKgrdW2so5Und/u
 5D0R7K4e7PVYmm2B8LKeiBd7ntvxiIaHdJGT9hqlTMJqc1W4+wAaMeQQK
 bqznNUEuki6gX++Z/ACkJg4HOI+U7weKjUlqNIgPm6wS2xSVrQCxdbjsd
 AsRWwUmwlP5uPm91q2fXw2ocFABgHEuXbRkrNA/e/Q7V08c8a9D/w02ud
 iXnjksrkHNYuwlUNxHnw2oWTR6y9JiudW4zfqEoaCG9mY4xGToJNzEMdg
 J2xssdiWsxfRVE580BSneW2G5vVBfVLmx0fJrgGWSMT0nFVuHshOGMhgD w==;
IronPort-SDR: oLSgWc6L5UOCqn5S1Fyf3Xd3mOk2Zsi+HT/l3GTO49FejblmGZCnfkji5iFoBses84d+gDmJnU
 oWXSzQgmZfQrslUr7jgq/ExwoaMqMzw1DEd5G2eFYlKRGO0S8ZZA28c4aSukM4Yi1TWUeTCxUo
 PfDsk4MHDmZQzfMaQ1KCuVJ0mXUfdoRdva7WKbnpUOUtf2BSItJqV8S5SeaVEP7Rs9y3vzu7RK
 2J9ko/z9VEBwVAGMr/C4bS2CMiHCwvHrKP94oxPmgNkxF+fXxNSKO10zET17ZwzqHsbN8R39V7
 wzM=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.70,461,1574092800"; d="scan'208";a="232073585"
Received: from mail-cys01nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.56])
 by ob1.hgst.iphmx.com with ESMTP; 20 Feb 2020 01:16:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L3dYpeKHTUGJRMEtvf4IGbNjnXHCBq5P+IW5vmgahc19OqBdgeVPEWS8+oqvQicOWjM7bZsKPeKyXa20uMwR3OsfGc4pPzJ93Xx1sSv/UCRjLk8u0f+QQB8AHbHBRT67IZuO/S2ebGdh4PdaS+jI2+G6FgLVPrh+xNYCrt5sizYc63DXUta2IExAmov53DW9x1UENDFegj7ik1PkRVDWOUldU0voHd57pbZUkSXAX256GFaQmChoX3RKZL3xgfQqA/ECsj71nGsyLpTqEEX8OyytL16GWnPNvoG6o27QVtJQ3yed5QYVQfvQ+3mcdWB1htetiMKEGR0y7aTomkjbgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o32R9hzFlSpIKvpid0x9ceRe3mLKKUNFCfp5cWioWpU=;
 b=RiOWBkaEqXciB/EUio+EEW6IbjevGmC0OePq90NIQkG2jmJ/uP1aKH0I26EBO4U8zyAYwpLAmuvACOZH9SEF+wF/DB3h6ZRUXoxP3VyKEclxO7i63D/Yq89xTbVupEGqMHXgRTJoqEHnTjUzT2/hWgsGfbLDyGlOqMTI9CJopqvHpuInifLZ/wRm49VAQ+dSKVCcJ+dEHKgZ0nEhfg+0N7gEUMFHnmWl74QFdV1uAiUfXDz5OI4W9RJvCkcGtNFOKAhgpA2ixA+8dqhsiKjP0UG2KbywWhxzCg4LO+s6aOMxgyrugC733ntveTKMu2NwpXJEw3dRf054uQffPV4OPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o32R9hzFlSpIKvpid0x9ceRe3mLKKUNFCfp5cWioWpU=;
 b=gmhqWjLtBc4yo3dH56qUgacgwvEFs/Wc4SZ5ZvSJSto4rzf7u54TOqLddqG3NBYYYCBlLiXyXxG1DNunSt/4aieqafLUIZVaGN+4ptJzTiuoaJcIsDDZh/7P9Q1N1u+/rVi8w26y6KYenjQR7i3B55r2gpZiBq0yceFLP5JmlTw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6688.namprd04.prod.outlook.com (10.186.147.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 17:15:50 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2729.033; Wed, 19 Feb 2020
 17:15:50 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v3 0/4] New RISC-V Local Interrupt Controller Driver
Date: Wed, 19 Feb 2020 22:45:16 +0530
Message-Id: <20200219171520.20590-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: MA1PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::15) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
Received: from wdc.com (106.51.29.34) by
 MA1PR01CA0121.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Wed, 19 Feb 2020 17:15:42 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.29.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d8a06cf3-bd75-4662-d6e2-08d7b55f5e1f
X-MS-TrafficTypeDiagnostic: MN2PR04MB6688:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB6688673EB7400A2FFD3FC1EF8D100@MN2PR04MB6688.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(966005)(4326008)(7416002)(1076003)(55016002)(5660300002)(86362001)(2906002)(66946007)(8676002)(66476007)(478600001)(36756003)(66556008)(81156014)(44832011)(2616005)(956004)(316002)(8886007)(55236004)(110136005)(16526019)(52116002)(81166006)(26005)(54906003)(8936002)(7696005)(186003)(6666004)(1006002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6688;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XjFAbNnkv/7n+SOEwM/xkbS89pl7PaC08n/cxoTF5UnVBsXMf070EMJDx9NgcYIlRkNenKdArnm/onXMceWuY2rOykfRivI7xcHYC+MYAoQFWupkGsJRFAEQXi58ddZ0Tr+Igc0uzwXvQRC0OHkPUfLKk58DfadfYZq9lCpTQaAfTUulUtfCjkzgzzU8ysWYmSKe64aWwTpZUP59iuNvYd/YZMSUS8eMTtPJkrQcTujywwd1OQxF6EbAI+JSids91xzzcctH8J9LBKRO15wrPpx7PlSeiR56ywtTplqiCRxnT/dqzN45oyHy96ciUBDa0hBzHGMdzoEfPoos9ejjibEMrqSCddg+sQjT/EFUL84c6TsiXlB5vCxuc3KiihwPg6NJh4H/Q7IR8YN2AHFAzF1NfmmTOBTeapg1u500b1L9geHYATkYXuCn/HQYAovI9+8/5AXpbJZ2qLXjyfOsbtYd8HpPHm9jngNSrGJKzrFBkrjC/mXmJeCtSgMPPO0+LA3dF+NyYst60R1kRpZ8IZJyfY+zGwxoZ0HQuSo2btuaRtlM9KsCFJUZ+Kntb6glmoBulX+fIPbWNRfYjXeC+g==
X-MS-Exchange-AntiSpam-MessageData: OGYpRlBh5LKOWhvBiYLEsBSoQ3ocNxjzi3yVtd5cnoazOSgKdXksEVDlcMHZLVXuon96F6CXTcCJFngg8Hj8aWq63bTll+4ldHElQccz1yTqLyN3gwnsRptW3x3KlW3UCUvm+/gwwmME3ACaH/Hhlg==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8a06cf3-bd75-4662-d6e2-08d7b55f5e1f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 17:15:50.3369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +RwcVYCX/S+irpJuyoCM6njNA7CLto00oxtNifvo6Jg/8/WAHC31exvNAYXAjj3tY0CEj/ZzHE+no0TTAlW9TA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_091602_992622_41B6441B 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patchset provides a new RISC-V Local Interrupt Controller Driver
for managing per-CPU local interrupts. The overall approach is inspired
from the way per-CPU local interrupts are handled by Linux ARM64 and
ARM GICv3 driver.

Few advantages of having this new driver are as follows:
1. It registers all local interrupts as per-CPU interrupts
2. We can develop drivers for devices with per-CPU local interrupts
without changing arch code or this driver
3. It allows local interrupt controller DT node under each CPU DT node
as well as single system-wide DT node for local interrupt controller.

With this patchset, output of "cat /proc/interrupts" looks as follows:
           CPU0       CPU1       CPU2       CPU3       
  2:        379          0          0          0  SiFive PLIC  10  ttyS0
  3:        591          0          0          0  SiFive PLIC   8  virtio0
  5:       5079      10821       8435      12984  RISC-V INTC   5  riscv-timer
IPI0:      2045       2537        891        870  Rescheduling interrupts
IPI1:         9        269         91        168  Function call interrupts
IPI2:         0          0          0          0  CPU stop interrupts

The patchset is based up Linux-5.6-rc2 and can be found at riscv_intc_v3
branch of: https://github.com/avpatel/linux.git

Changes since v2:
 - Dropped PATCH2 since it was merged long-time back
 - Rebased series from Linux-4.19-rc2 to Linux-5.6-rc2

Changes since v1:
 - Removed changes related to puggable IPI triggering
 - Separate patch for self-contained IPI handling routine
 - Removed patch for GENERIC_IRQ kconfig options
 - Added patch to remove do_IRQ() function
 - Rebased upon Atish's SMP patches

Anup Patel (4):
  RISC-V: self-contained IPI handling routine
  irqchip: RISC-V Per-HART Local Interrupt Controller Driver
  clocksource: timer-riscv: Make timer interrupt as a per-CPU interrupt
  RISC-V: Remove do_IRQ() function

 arch/riscv/Kconfig                |   1 +
 arch/riscv/include/asm/irq.h      |   5 --
 arch/riscv/include/asm/smp.h      |   3 +
 arch/riscv/kernel/entry.S         |   4 +-
 arch/riscv/kernel/irq.c           |  33 +-------
 arch/riscv/kernel/smp.c           |  11 ++-
 arch/riscv/kernel/traps.c         |   2 -
 drivers/clocksource/timer-riscv.c |  79 ++++++++++++------
 drivers/irqchip/Kconfig           |  13 +++
 drivers/irqchip/Makefile          |   1 +
 drivers/irqchip/irq-riscv-intc.c  | 131 ++++++++++++++++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c |  39 ++++++++-
 include/linux/cpuhotplug.h        |   2 +
 13 files changed, 252 insertions(+), 72 deletions(-)
 create mode 100644 drivers/irqchip/irq-riscv-intc.c

-- 
2.17.1


