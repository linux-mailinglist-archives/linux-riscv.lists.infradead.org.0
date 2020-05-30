Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054A01E9076
	for <lists+linux-riscv@lfdr.de>; Sat, 30 May 2020 12:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YlnEz0/qfGdSSIBe4X+trDq3j196LxWuDxb5JfIl4Wk=; b=SgKSORx1QlLaugIl+b3uEjCk8
	9TABvzoFRK+adayJNU1krQanzeYPcAQ3/VVsErNYpGEmlRDF7FHBJpOQMFgZkuCRg6OQTHycsh8zi
	NhbWGU/TANS7pHYHosCUVddP4IvGAuzfqTIubAyOZP/f0afMnddhgADAZH+q+ar9JU62HE1plzNAu
	+s8zJcbg3cxy8ggiIbKjd7LXYCJQBA82YNda67dwlOMI2eJ9VrrO+11NJLmRTOjAeKXcwoXPMIlh5
	9rueMXi8d2DIqddUuMzdwPwaqZHZsWPhed3zMDITjNdhRvM4kqorqK/10p6qxcSrA5I4GW2QB8axc
	wLBoC3KHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeyPv-0001t2-4i; Sat, 30 May 2020 10:08:39 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyPj-0001i2-HR
 for linux-riscv@lists.infradead.org; Sat, 30 May 2020 10:08:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590833307; x=1622369307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=rwodEWhO07nN9+WYg7XaEo9/JfXjRNV+hU6q5mSAkec=;
 b=D73TghHfWc/aeNIN3XZj66GnwsM6F/0XHc620ATJWFkt1Ia8RTQHL8eX
 FJ5ljiHMVNqoWl9QiQdTnjvcEEcLEIpdY9IwjzCj0kYHuQlBC76OSss4j
 Wcid4qzBLiYDXVZLeAi8J7kKadcYm9o3XOfWaI0XQVnD9JVRW4gM4GS6d
 zW3g47WULY4gpgCtLQEYDW/00WDZ4nmQMmr7rfcqOlJVGt/iKIYx9C4We
 aCwMxFCqwW8QnYTNRzD2jx2jYxaKIcz/864uaoi1HmUgvQOBSym7a890R
 0BDZQToPhxCyj+dq/Ay6USyHVUxCRHenRvZ9lIEdDkYhMo3hgWFe0zryE A==;
IronPort-SDR: VKnG2j27wUPQ2vTC/cSiGHg76uW2V5ifb8H8Ty7q98wBxHvJ+5xp/ERjun0r00ZFTiR6G0Xd9o
 vUNx0IrG7vds/Myva+bc3MsazaGPwv8fzgLDf1SMMh/T+ODNsX1q5WHftuM3fNPXvVIT+GnTeE
 zfVTsR35TYLT4lkNPaFFbvsOP0tgYsl8z1Y5ADzpgayYDfQDZ6T4ouiFkaMwVcgoLJixzLOuzY
 gp6IbIf+m90WA0+1fNyrqrqWu7I/FNAdOhHdQUsRlTzi3Dc5LpVdyc/Y+06KyzbAywbPF8soYC
 S78=
X-IronPort-AV: E=Sophos;i="5.73,451,1583164800"; d="scan'208";a="138846380"
Received: from mail-bn7nam10lp2101.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.101])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2020 18:08:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ht64lMgaoshqyYpCjSmUmp9UQIUUznprrIpqpuaIbO/qT0Nxa9NWAiJzsOCbXNcCR7LOumKSX8GrBaD5kd4qxJhapnCBZfTeGIrmW2sLi48e4QmrGZhaUIOxjDJsWC5IU1eJVOV6kOZxnql0rEydPwpFEekpsKzTSqAwqqpdvv8pxeUPUGiG32sw4uw9Bdf4KqM/TZeEwBLggaSnCmIbsgwb8oSSep4OyAJ8iV/kecTG6M1/2NiSuBGsk1B1lK596T0ouByU0KwxyFo20DSzCLzamZQnBdeWSmGKmmQHuVmhdlnXM2nTw5+xXpw50BUvRUF0HY+83ibru0rT+GySuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlnEz0/qfGdSSIBe4X+trDq3j196LxWuDxb5JfIl4Wk=;
 b=AQ7hI+P/5zkWWHyz2IuzT4C+cJOoKCq3iKC10hvnCWTFsMQmVb0giOxnjXv8IfYJGREsKS+6dQbT7/ayRTQCyKKxP90rJ02b8NlAVjV2Gc141TyghELM2DJO6xFi28kwJB2czJYVBINKe1KboIldlLsbLrtkVntrYyslBaoC0XF9FLDGaLtFAokVd9iz/YSITbmm8wDt6fMdPpIWNnYbLxPf7t4G6E+nrTC+SGW3dPre0UTJiOgeA2C61lrBZc+LAEM8zGg3B1vcYyuuowgmByXW9CgSpt5mmQc6AmjQpCsFuSUG2vaF5qRbLdzB5JE+p7jsandXm06+CahF7vRs4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlnEz0/qfGdSSIBe4X+trDq3j196LxWuDxb5JfIl4Wk=;
 b=HAwd0GnkKjE4rkGkB7y4rBrGSO4nPoMJSuUa7GGbk9W10YwHZ5K9ICZirmXSg9uSsrzyKTs89YE6o4PY6dA+E2dubLZFDphTkTG9pdk6kaMFBFsmvCS+HRn7DDMonzoTASQKZEvrDLzAv1jmCgYMD7LFeAG3FCZ88FixfTCU2uk=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4314.namprd04.prod.outlook.com (2603:10b6:5:98::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Sat, 30 May
 2020 10:08:19 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Sat, 30 May 2020
 10:08:19 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v6 6/6] RISC-V: Force select RISCV_INTC for CONFIG_RISCV
Date: Sat, 30 May 2020 15:37:25 +0530
Message-Id: <20200530100725.265481-7-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200530100725.265481-1-anup.patel@wdc.com>
References: <20200530100725.265481-1-anup.patel@wdc.com>
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
 Transport; Sat, 30 May 2020 10:08:15 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.61.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 82c4d406-5203-49c8-41b8-08d80481608a
X-MS-TrafficTypeDiagnostic: DM6PR04MB4314:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4314E7CDBE9E1282C4F232C28D8C0@DM6PR04MB4314.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 041963B986
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P/vrcB/BB3cKMJKwLx/4E0jMPbmpuNFzAVt6Zp/7FSwFtgGvnMQdHpDEbsaEba6VlhT7x0JcQUYPASI0FBUz9oosJiPrNmgcruFMlJypl5zvJsY8oQf034vlnavuNRV3ufL9dqRyCNgFp0wnpNAlJDpJUY9lsYgg2wnqjIRtu23/VM9LNJFdCzBBzW75JKPrQEBsjoGJy6SSjvNnQcdq/4A+UozoO21UkwGZ6EpYbNOlIHtIt1PSm52smKKUq6JIDvZGQsh78m/7MuWAJY91snsOhFz4EXPoSlM58fX4k/oQGOCEHdXfGXJOYn/aZ3iT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(26005)(4744005)(1006002)(186003)(1076003)(6666004)(55236004)(4326008)(956004)(8886007)(16526019)(5660300002)(2616005)(8676002)(8936002)(478600001)(36756003)(44832011)(2906002)(55016002)(7696005)(52116002)(7416002)(54906003)(110136005)(66476007)(66556008)(66946007)(86362001)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: o8pIbFXNiGeMNDOpD+ZHqESb6xDiT/eiedh56pVYmN+1cnvYTi1xWDz3SVr1b7ofnUxPI8O2xc1hjgm3YelgFx4dZ3fBBPv/mL+l1+WAF33k2uLMCVxOBmdZT9nNy3aKimWBrkXX1YN9R42NRIZTj5hqOtzKM2B+yKUQ8EqP4d8Yk20xDg7EaiICGnv0FufD6gU3KoFbzu4yrntqbOovUb0eUvZyWNIfvEdjDvPWCtUCMWEBdzFO8EErZqtQNejS5E0cdgDKmzyx5vN/oS/Hk3X3944zc6p+hYZHYtErRk+0WSRX7pzHUFYNNm/M5gqFRyZVtrR45xHiwje2S6UpfN2R847NWbybD6ZDSvXv5lMz4cyqN5w4PI19PFOvRgh10QHCBdks4cNOj21CN778StOGcR+DauOCaoCNVvg1uQmoGzRgA5Xgczj7VuJUk/gG36BSHgjgnzC5LgOdR893Om9CBHAGWaJeXR3tiPOGnJk=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82c4d406-5203-49c8-41b8-08d80481608a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2020 10:08:19.5317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tgx7CYmQ+d4pN5un/86K0vBK8Tq2pYlJ6INzO7n+UI2HOEPb65wlLSiBjxZ40fBAqaFdClHuDkQFxi+qkUaveg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_030827_708157_2C6DD323 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

The RISC-V per-HART local interrupt controller driver is mandatory
for all RISC-V system (with/without MMU) hence we force select it
for CONFIG_RISCV (just like RISCV_TIMER).

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 822cb0e1a380..2cf0c83c1a47 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -51,6 +51,7 @@ config RISCV
 	select THREAD_INFO_IN_TASK
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
+	select RISCV_INTC
 	select RISCV_TIMER
 	select GENERIC_IRQ_MULTI_HANDLER
 	select GENERIC_ARCH_TOPOLOGY if SMP
-- 
2.25.1


