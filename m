Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2FF1E906E
	for <lists+linux-riscv@lfdr.de>; Sat, 30 May 2020 12:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nA5tYfhSbPBVGtiPY+QOhMkAN0w2Rz//SnplTpbzNy8=; b=BmLYumuxwzPZesOISzmzr3c7y
	UAJcTDJvWUfFo+QS+GRf+3aeAYtMLgnkLgZ4zPsRlf7Acr+e1Yo3JrsXDHQTVXVrp8wBxjG0Xpiql
	wxw3WPZPxQmSeG5MDJY4r9Z2jnsPwT3fwSnGf7Av4s3BUP5rpmalpiBkrLZwCTO+uLazYBUVWubWn
	6B+lBi2eVTNcNGAzV1qJse230Dc/Pru8EfQqsmD+nXv4p9oBMcj/bkIF6ZUdtYg/Ipv8t3TV0fKwl
	+ZHyzE1hQG3ndDsguLNSZH9PbG3B8+sBlpkG2ulpDwePjDV3ttkhCRzaJltEG70XT/7ykbbhPK+pp
	DTeMhw9FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeyPj-0001iY-JZ; Sat, 30 May 2020 10:08:27 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyPf-0001hT-V1
 for linux-riscv@lists.infradead.org; Sat, 30 May 2020 10:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590833303; x=1622369303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=SuGZr4GxtABjysO9g3tQV3Q6+ZZhHD1SDX0BveqqkFY=;
 b=c0NdTGDOuw/V+l2kXe9nNBNYt9P/i7Y+kGvzzqk2ZhIWVquiOQY+JIWF
 h2VWlIB6wiA90ObE8KWp0bjRyM4ir+ftCh98O3suXMVxzLp+SXf7JSl5e
 UbgQBADsflqPIDQy2wy5rL9c8hecIkZDE+sAnxWRk67Lcj4oNuHFW6MRe
 apZLxnoht9EVsxfFmlW5jTSR6wv++QJUVSnpfJSFLnANmE/XAM/25cg6q
 h3YVJBtT0wMFmh53eyC8Vo70XhmDpE1x3MIv/rPf15H9oc26Gb+MJ1aJ7
 GNpg+oQTM73/RpjjM4BdlA//Dy5LgMkNxVjtDtT7Qr2qPP7eTwNHW3H2R A==;
IronPort-SDR: MUTM3hjMH2dcCmEXGePSgWsrt3HK4HblpSH7y/VT8vmJ5ZqyWLm1OwqniCTvEuvrxt3LGsYa3m
 Up21mhWFzy0CNMP42E/vRCwk05F3ehjVrWDWq4gnL1nJgxRhr6PkLkRgPhLXYbwBHz0pN6TJIb
 SnVj+cP3nk1WUKBAPFpbT9ectMJuqxNowh2oI3rHqvUe7HRC6yPBeUWbyZX6UqCFXpEdsmJ1S7
 osRBApsiXQ3XZGjac9LVt4GnAru0jiTmN9TCB7xm6VYFuyipzu8iooOVnauKkqXjk7Zyo4sLXu
 1VI=
X-IronPort-AV: E=Sophos;i="5.73,451,1583164800"; d="scan'208";a="138846365"
Received: from mail-bn7nam10lp2104.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.104])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2020 18:08:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lRAkrAZGPoW1WG9V7at1ZYNlonKikR9lWtcH63KPzbJojnsYmVOBVXAcnHYWF5oWVyh+IVTLSvURvmiV3u73r1IrjmUpfhrRPElYgj/Y34+RGyBEMmMiFC5HX66+R9Cdzmo66JgyxZe+S+fK0YOLFkxbC8rnlu3/twWImU5EKOUpuGfkDt2Z8eG0oEZ0tZO55/iV+mu9VJ6oqn1iumB0hgLCR6R6qtRUrj3E7qz5GZnBtisOFCZLup9BI2NxZmjjU5DeO0msZV0+NaJjhfgPWPX+1P2HHEhy01Q6/KhGagCn1cpJsu/r6MPK3VJ4rvNJ/p+ZkPq+w2oibZzhDiAnyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nA5tYfhSbPBVGtiPY+QOhMkAN0w2Rz//SnplTpbzNy8=;
 b=OYg/pv5Fz6k6GRxvUjLNBlyWNtbCVkpEw3kC9JlFO5acx/bq0V2Xxi0CJ/t0JaUVXcBazWHRt0YSTDTNoZJEJg2UNwqn5IHAadNTYXABh7zPloXGe3vGdur/1s1eflHb2LS6WD7UNbGRjMIk55lkpsRWnX1WEUaf5s30e892HlMV6WMjfAnIzyCsCZcJrrcucjUmUwYh+EB2KDm4mvOYAWPNTATrgRHlJdCCxA/VNulto+JJDwV/q309upf6ZA47R/d2F7F5C5T3DS+BMuE1KWmI6APp3YB/xz48Ccbrqs3IF4Md+/JIbfGHN3sY6gfrNTkN6Uo6pu0Q2us0iRUzyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nA5tYfhSbPBVGtiPY+QOhMkAN0w2Rz//SnplTpbzNy8=;
 b=hQv9bLp8X3VDvZ908e8cepEHy7uxBdHTayH7whFuo+TY4EYuPey7m44qBFz2ZgrOr1DNdeSYgc2ku1sxN7ubXUWJlaRkYyOaMuYXkd67loksGLFs8bBt5T4DEUpEpgUaFMce1x7zJogvHrCy2VXVnOBzOYE6KFcRmMyGHi8M3ac=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4314.namprd04.prod.outlook.com (2603:10b6:5:98::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Sat, 30 May
 2020 10:08:01 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Sat, 30 May 2020
 10:08:01 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v6 2/6] RISC-V: Rename and move plic_find_hart_id() to arch
 directory
Date: Sat, 30 May 2020 15:37:21 +0530
Message-Id: <20200530100725.265481-3-anup.patel@wdc.com>
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
 Transport; Sat, 30 May 2020 10:07:57 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.61.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 129c80e4-1a17-4ad3-3fcc-08d8048155c3
X-MS-TrafficTypeDiagnostic: DM6PR04MB4314:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4314F51B6E03351E2EBEB6558D8C0@DM6PR04MB4314.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 041963B986
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OVHdMmV083ylnRB0NQG9rGPKVdIgJG0NFyR34Hv48o6C7VZBqqSzNk6ARW5QrUsYaIZK3YbCCCAIKYCUqTWsWtvc1S40+YTJBJpTWpjmt1v5k9B3bvtRqa5499jhMt+tIPl32DX5WCZ4AmOyOd/VFsMbezwkKaXHVHVY/Sa8TMODoBzqGSNWRRIYKwPYUoZOYoAiBMlw++eCwA2o96UcSwOK8xvVQD8RBErqWOy7XLD973enDP+XXNPEkIV8zx5SZvqr4kP/mlKB0Z6gV6iAuB6ztJk86xms4MRboCBsYBzNCVP1SDSP1h9E99Yru+jz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(26005)(1006002)(186003)(1076003)(6666004)(55236004)(4326008)(956004)(8886007)(16526019)(5660300002)(2616005)(8676002)(8936002)(478600001)(36756003)(44832011)(2906002)(55016002)(7696005)(52116002)(7416002)(54906003)(110136005)(66476007)(66556008)(66946007)(86362001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 2tVAvkMFr1XLvTJYNqVAsLLJPBqhsqTLq4NieKLgI4MkC3EMkFlxzoNnZr4OdBYEYqqV7YjGmHDSg95Hpyb5JmbKqOj9ht6Pw3haqEBFSLURVSy0W123piOsUxgVHiNr8Pxj756YH8dZdLdAIbEvNvXqPZNDIkNbWNlbtYYFuPAX5ywd2ZH8VzmdkVD/4C6kutSsjpWZxBalvJfUJXTKJcRfvokv9ovoYQl3XROueOK/SyaaRZXiztkxPJGbQXzdLkPtr5Oh2irLvPeGyEr+vQ/jPmjWOKdBlX0grc7Mu1PVkpGFMLz0muRjewWOZUPXS3DJ35ZPJ/tAZsDFrJFEBnETfKndDfH8tRwIGqH69+LJ6mUqiytv1Qo5S48seewd+YS2XHgGOK3Xq9tZzZDWisOuecNPolfYYGugFm/Dgm0WNMPre/zaZUTDm3KxGNxV5pwirgo3237K7bxtPDASI+nxh9JLmp6Ruo/aM3ubBGcRTFvENVY+tlOQOmeUa7yi
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 129c80e4-1a17-4ad3-3fcc-08d8048155c3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2020 10:08:01.0955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: adwlD5Uym8X3mRjOErIA9/xYJkrgQV0EqDhCbkIrpWZ6ds5ycra/MCzLLLfC93qW4BdqTxlJ6AgncpAUEozg1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_030824_068455_56DE8F15 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [49.207.61.131 listed in zen.spamhaus.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Anup Patel <anup@brainfault.org>,
 Anup Patel <anup.patel@wdc.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The plic_find_hart_id() can be useful to other interrupt controller
drivers (such as RISC-V local interrupt driver) so we rename this
function to riscv_of_parent_hartid() and place it in arch directory
along with riscv_of_processor_hartid().

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/include/asm/processor.h |  1 +
 arch/riscv/kernel/cpu.c            | 16 ++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c  | 16 +---------------
 3 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 3ddb798264f1..b1efd840003c 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -75,6 +75,7 @@ static inline void wait_for_interrupt(void)
 
 struct device_node;
 int riscv_of_processor_hartid(struct device_node *node);
+int riscv_of_parent_hartid(struct device_node *node);
 
 extern void riscv_fill_hwcap(void);
 
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 40a3c442ac5f..6d59e6906fdd 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -44,6 +44,22 @@ int riscv_of_processor_hartid(struct device_node *node)
 	return hart;
 }
 
+/*
+ * Find hart ID of the CPU DT node under which given DT node falls.
+ *
+ * To achieve this, we walk up the DT tree until we find an active
+ * RISC-V core (HART) node and extract the cpuid from it.
+ */
+int riscv_of_parent_hartid(struct device_node *node)
+{
+	for (; node; node = node->parent) {
+		if (of_device_is_compatible(node, "riscv"))
+			return riscv_of_processor_hartid(node);
+	}
+
+	return -1;
+}
+
 #ifdef CONFIG_PROC_FS
 
 static void print_isa(struct seq_file *f, const char *isa)
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index d9c53f85a68e..16d31d114c30 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -240,20 +240,6 @@ static void plic_handle_irq(struct pt_regs *regs)
 	csr_set(CSR_IE, IE_EIE);
 }
 
-/*
- * Walk up the DT tree until we find an active RISC-V core (HART) node and
- * extract the cpuid from it.
- */
-static int plic_find_hart_id(struct device_node *node)
-{
-	for (; node; node = node->parent) {
-		if (of_device_is_compatible(node, "riscv"))
-			return riscv_of_processor_hartid(node);
-	}
-
-	return -1;
-}
-
 static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
 {
 	/* priority must be > threshold to trigger an interrupt */
@@ -330,7 +316,7 @@ static int __init plic_init(struct device_node *node,
 		if (parent.args[0] != RV_IRQ_EXT)
 			continue;
 
-		hartid = plic_find_hart_id(parent.np);
+		hartid = riscv_of_parent_hartid(parent.np);
 		if (hartid < 0) {
 			pr_warn("failed to parse hart ID for context %d.\n", i);
 			continue;
-- 
2.25.1


