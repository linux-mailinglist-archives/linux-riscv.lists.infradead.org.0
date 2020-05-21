Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679931DCE64
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+qUZESzc8reHR6IMWEZEygGJnIDg2AVuUWY03NpW/EM=; b=pV4jsHA7aJdg22Ci9t+FegJ5RY
	exQD7bKcy4A7agsYDdhV4si0xk3XXPbFgRLM6GPMmOtqOkkwUyauv6G4+rVgNlX4617S8DZMpSsBi
	IOguUZMwGhpuGHhZmovr3aGqX6/tPWUD83SBjikL3FVuCbXS5tQPcWMWoDNIGTQlO3rAjgu/N6KGU
	m7DOXHlm6oHskreFBTgqMYd2L+vVWlng1sOGVkMsXdBU4DqwfJLgF3zgPuLk9xZDjGkraZdo7JqBe
	BJZSeJ8rB4OmWzCI/fZx8akk1j5FFlpZWNc/4BOBQ3uVk2sKv3hI4eAZrdJSh5GGBlb79r2ZbgU9G
	uKYFpMUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblWe-0005k3-7h; Thu, 21 May 2020 13:46:20 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblWa-0005jS-N2
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068777; x=1621604777;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=n56Ua0gVn4byYIHurAUklEE7cP4RIhB1UyeY0jy3nfg=;
 b=OnAqocsSReq6I/H2Xk/Fa7ognaJJBMjIS6eQhNuhAdQQQW0leY9VLpia
 5E4VRbkjs6MuPcCwASMM9QKlbGPKjZ31IDKERPoo8nV5UgjmhKCmfANEK
 K+m605mvaWNLfMxgja95l8P/AXqwDXiz9zgSWS6p0rhRrcdXFWq46txCt
 l5FoswAFAoVRPoEpIE+KnjAAXyvcnGcj8bTLgeUDnrYQRWHiui5gZTXrW
 kRCUFBIu+ASYIHMYJR6/u9emc+z7NAxRxjBuUDehAalaPHVlUaP7HKdv5
 +oem6Y0wWkW7srbTd+ApWgj16tqpqvUSdH3+6mLB8Spklbrsqz//ilzQs g==;
IronPort-SDR: TfFD6fqapxvDrWiAU+EEPHeMPLdJcoZX+Wz3/oGn3+huVUz2avDg5vNaNP5GyKNm5lYN8goemz
 xXq1ZPf45t2eJQTkT7Iz1k0okmzFlaVC3nV468uL8g6ZHJnw8XrgiSu24CUQg4vgnUVSNHWi/U
 WOkljO1ggqs6bNNZT9S4u3ZaIMGM9c5MW+1vlj1yofZ8JlR6zT/VXzmPzAP2NoKvgw3RGWUeeb
 3CJtiuvRZW+DzeXJfgpYkuAtJMNMCv4sybVhKNCv6glyAw05R3CXh3UPN+tf+/pW2HlnXZOdCW
 HyQ=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="138544969"
Received: from mail-bn3nam04lp2058.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.58])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:46:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y80ztxqXvo7wsKkfM4RbGDR1ef89f/29TlqKDFqow6I3p7zVrueooGWsOPaBt8bcOdHkIqURizPv8IGUi2hCzyCf8KXsQZhYco11RGmYglMVOhB29+ZXAvBfs9wEDbRBcLoMFhmWz4wQuXYiBf3dqPJzO3s+aAuWcTKe49JKHWUEWpv/XcMTyfN+lNyH91PsqxN+G13+rTFj6FV2FcyLohy0hiwm+eaqHzk1bZe/Jl95tgsmsCCB/BRaBAbSlTIqQoMMicOJcVK6kGvZvVFgK5P8b+jfQ21NasQWcIvTwlrkfkF91S15zoSihmTBkDlQsCMju0sC8zp6k05LOflEaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+qUZESzc8reHR6IMWEZEygGJnIDg2AVuUWY03NpW/EM=;
 b=JjndAGKAoo2XNK2ixBskXmaLpItSmMcl8rnTw8fVLA/PxMW7I9wzrtN2a/uL34BZVOroAJW+2X15uYMjJY7hv/hzxt9uMqpk2DK7qgjqHpSAE7KAoUoADnUN90dAfa4iSVn0Gxgil+/IJCVKZZSnvO7/C1CFujOnpNOyj2UrM1voTo+5+0Y9kF+10BUs/4Ej81nsIO+gJMH/bDqhU+JvBFyPUjFOZZdp2gekmbr8ZqX5/mYKlrd1GxG5iBtZLKcI6BNhZK830q7tDRiUJSvpxGveFt2WBH00KHlyIgstcS9mJ5VZIi7MC4+hjlpHOYgGtdZ58zaI3kg9eSwrU7AFvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+qUZESzc8reHR6IMWEZEygGJnIDg2AVuUWY03NpW/EM=;
 b=vDM0xBgQr2PiAyG0LqZOzcxUzLS0Glwy60p8Jdk7G2GRqK9a4Qod0Rv8bEb7sh9SW4ntlylp2U58TUbC/nP4MPnTxPTdpMKJPW2N0KWPcIx8uP1+6h+/pA/ZasMpflFaWZE3K7q+Iqzx8GhA4E4Ujut8RHAQNG7klzouB0wzrt8=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4985.namprd04.prod.outlook.com (2603:10b6:5:fe::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Thu, 21 May
 2020 13:46:13 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:46:13 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 0/5] Dedicated CLINT timer driver
Date: Thu, 21 May 2020 19:15:39 +0530
Message-Id: <20200521134544.816918-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::15) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.30.72) by
 MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:49::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Thu, 21 May 2020 13:46:07 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3f8122ff-1c81-4087-6eff-08d7fd8d536f
X-MS-TrafficTypeDiagnostic: DM6PR04MB4985:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4985F4BA5D66899A2EE055538DB70@DM6PR04MB4985.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AMmJtdKiL3hLbXcGjlgoI0qC2KVRnuFgZcs2xMhi0S1Sp400TvfxmIWjURo1sZKuJgBz6I80cOoWNFYqLZrNml/LoPHVlzFrQC2StdhPHSbaw9Ia+kBR1xLqc8J+yUZqr7km4GJ3r3O8dnUsoFlIXrZ5Y+qiTILepnzgCtol624jpAyslhvBkQjgjZnwnmE4gQTUy30koT4kCdLKaL9sxJ2VwER4+bwzkL49DrmNINPXJTJ5n+SBBt5Mn7VGI5z79UMx2Af3ItgQr7TID7W/75IW6HqBI/vQwC1OzPm3jLuuCbm02AaHh9gKgwKXwryV9GAV31VrNtpOQIqH+dZvcWm1mI7l0DZG5SwFbb8TAvcegrtoTgKVHVCTQpv95B26CpzXTPkmQPfH7jx/ASOrJQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(396003)(39860400002)(376002)(346002)(26005)(55016002)(1076003)(1006002)(7416002)(6666004)(7696005)(2906002)(86362001)(55236004)(8886007)(52116002)(4326008)(16526019)(186003)(8936002)(66556008)(66476007)(66946007)(2616005)(956004)(44832011)(36756003)(110136005)(54906003)(478600001)(5660300002)(316002)(8676002)(966005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: Guqs74YlNcWbPq73jwGOHasNoW5hkKWqooqvmWJDbEflb5HKPLE9aNYDKvfwhC9G38+7hi8kQjyxSEmO6fnpEEDlCQDzbSNnoFYrWz2rEPYexbok33r6l0QDAD9vTdS/uYf0HFvXif/tO72jXCvb7BpW40ltTAJy7BnvokI1qMYxgACUENbdH1ckobrVvdm6HhG0yDFXyugnreLjTTRp3HwZSerpusV7IouGdo14uwbbby/7DXWmNxRS3D4TJ+5G8JFctkHAaEknYvIsFd5hDc/kEhBsdwp2LootxoNtkhqeNBwNtO7WKuiBftrj0YNyvqczquVPaKPdAm4GNvSqBDjCfPBSD/XgBfxlDO5Wq34BvZYNL0XZZGB//hQcOzXM1w9PKevJBYjr3Symb2+9QMq/Jpk30ODFed1WZHY7zKNS+hdLcdqLi8q0V0TSVI5Hg0UZp9uGre5VMd9TC2HfgMDa/PoMeLQzNPDq9tMs9PE=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f8122ff-1c81-4087-6eff-08d7fd8d536f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:46:13.4438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HPASQxIdN0Gn1BPTYIKQxiIZieVUs0PjD0nqXbV8MawaHxjjtEXpZuxzrvR+uz13c+99qY7Vc8/7fBHZA8bdYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4985
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_064616_761311_95073CE5 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.30.72 listed in dnsbl.sorbs.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The current RISC-V timer driver is convoluted and implements two
distinct timers:
 1. S-mode timer: This is for Linux RISC-V S-mode with MMU. The
    clocksource is implemented using TIME CSR and clockevent device
    is implemented using SBI Timer calls.
 2. M-mode timer: This is for Linux RISC-V M-mode without MMU. The
    clocksource is implemented using CLINT MMIO time register and
    clockevent device is implemented using CLINT MMIO timecmp registers.

This patchset removes clint related code from RISC-V timer driver and
arch/riscv directory. Instead, the series adds a dedicated MMIO based
CLINT driver under drivers/clocksource directory which can be used by
Linux RISC-V M-mode (i.e NoMMU Linux RISC-V).

The patchset is based up Linux-5.7-rc6 and can be found at riscv_clint_v1
branch of: https://github.com/avpatel/linux.git

These patches require "New RISC-V Local Interrupt Controller Driver"
which can be found at at riscv_intc_v5 branch of:
https://github.com/avpatel/linux.git

This series is tested on:
 1. QEMU RV64 virt machine using Linux RISC-V S-mode
 2. QEMU RV32 virt machine using Linux RISC-V S-mode
 3. QEMU RV64 virt machine using Linux RISC-V M-mode (i.e. NoMMU)

Anup Patel (5):
  RISC-V: Add mechanism to provide custom IPI operations
  RISC-V: Remove CLINT related code
  clocksource/drivers/timer-riscv: Remove MMIO related stuff
  clocksource/drivers: Add CLINT timer driver
  dt-bindings: timer: Add CLINT bindings

 .../bindings/timer/sifive,clint.txt           |  33 +++
 arch/riscv/Kconfig                            |   2 +-
 arch/riscv/include/asm/clint.h                |  39 ---
 arch/riscv/include/asm/smp.h                  |  11 +
 arch/riscv/include/asm/timex.h                |  28 +--
 arch/riscv/kernel/Makefile                    |   2 +-
 arch/riscv/kernel/clint.c                     |  44 ----
 arch/riscv/kernel/setup.c                     |   2 -
 arch/riscv/kernel/smp.c                       |  53 ++--
 arch/riscv/kernel/smpboot.c                   |   4 +-
 drivers/clocksource/Kconfig                   |  12 +-
 drivers/clocksource/Makefile                  |   1 +
 drivers/clocksource/timer-clint.c             | 226 ++++++++++++++++++
 drivers/clocksource/timer-riscv.c             |  17 +-
 include/linux/cpuhotplug.h                    |   1 +
 15 files changed, 330 insertions(+), 145 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/timer/sifive,clint.txt
 delete mode 100644 arch/riscv/include/asm/clint.h
 delete mode 100644 arch/riscv/kernel/clint.c
 create mode 100644 drivers/clocksource/timer-clint.c

-- 
2.25.1


