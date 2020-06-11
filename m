Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5821F6182
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 08:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nA5tYfhSbPBVGtiPY+QOhMkAN0w2Rz//SnplTpbzNy8=; b=o8bO+Szy31mTPQOUJXSTMTnGH
	Aa8EgpmWC0GI5iFwdZbbXkQ8iLzqGWOi22jQ9OsXnvDMUYph/OpvKImMrCLMsrBcsZbSKhwhV+iNj
	RChCUy1DmNRusB8xMc9tLW/rlwn8RBQsCVe1FsRaNEuSoao9OmQySpeWTIRsEF/b18oxYs1Zi+dY2
	vWOcKf9v1DN0gv6ctu9ezcNuaP2doZphaBVIU336pfEfbds/n1j/gwJCHQQ5r2g+HA45aLxtEYTF/
	Q9krHE2d/QHn9OWAr2jT06Suj/V/Pnf4D1nbw6cr26QtXolooS8ySHeiKhCg2/FaM91pbg0Pw6KHM
	xakEQFtzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjGU4-0003ZF-Bo; Thu, 11 Jun 2020 06:14:40 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjGTz-0003Vq-RU
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 06:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591856076; x=1623392076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=SuGZr4GxtABjysO9g3tQV3Q6+ZZhHD1SDX0BveqqkFY=;
 b=RRt+kqMTydz23YuxwGLP4HlJibhKLbp4huClmaX6Ty9LhIXGuxnxRwzL
 i7e8WJCq+wavOIIvWZh+zqPOMefQjtglar3l4xaWtNVrIQWhjagu6ZgvO
 swKh70TQPEbjnUMHcCh6fnxKXaNAhKq6Qt282WvEAaso0/GYGk2HkTf8s
 y1QMcS00jve0/tC6C05xjWJfqJrKG0KqN6pQBzVlQVqUmfhCpVdXxrH/f
 ZeksTxcwIDa55TXeCSq9NvmtyJjwDW4hvpsg2lsOudPYFNHXxUrv2yeV1
 ZSUttOH4NI6loie+i+nAy5CXOLSvjZxiv8fJZES7PQpYvbj8bJNKd6Z9S A==;
IronPort-SDR: PyS54Nrkp5giQoJ9AQX8llsomDhcBtRFFwa/XrgwXnf0witaRIDNEDg7peS1F0twE/n7IBrr/G
 YJzX2B5oJnGf2dR3FzeT5+rTBLChgRDc2of03ky3eV1rJaVyCvDsZFIdq4d/8P6nH7Bb9ZBk9g
 Tg4wKN9I3c9F1TOE4mlLKA2Kahz6SrKCWg2Prz5kY46O4KxsJm86r+Hj/0A60Dq+3WzleXS/rU
 8Wjx+ujorNhIg7ecMide4JsFozez+1bpa/0kd7Rkezah2iQLcvSrGLLyTTCaWUlovBGf24blPH
 sHg=
X-IronPort-AV: E=Sophos;i="5.73,498,1583164800"; d="scan'208";a="141117314"
Received: from mail-mw2nam10lp2100.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.100])
 by ob1.hgst.iphmx.com with ESMTP; 11 Jun 2020 14:14:34 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZuyoHrSczlbEzClbukVQYgZeD2tADmtGXkmHYQsKaX1BrAQZK1haC1dWAwB7RJrKN1+utn9lEMmryIbMOjg3OEEzhzCfJ6RxKTnCodvNafCmH5TozUauXuzAdnkRQAH8sCEGhFvPorWUJvgMSiaeQruBkBb/Cg1YGWVLhPMTH/zIeqbv3zfIWK8vLtFLOxu4ARuS61FZJk6NJQi2GZfonZ8ZIHk9MddsFGOKCaBvEIQqjrQ6sAbMgzXZ1hB1Ge9WexlZRiLrg1eLgIZRnTs5XlHFu1wPNAS3NtZ11lGFgRQGn1NLc9WgRa8IZ4ho6SmuT/C9TrCaY79yRMlgWkOTBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nA5tYfhSbPBVGtiPY+QOhMkAN0w2Rz//SnplTpbzNy8=;
 b=kli4L5egV4RXFb1DytB5kfQumjRgbwpmb3SexPl95Mxo4M7iVBajgioEnX1JjejTCjWNtacJrzlOkhQ3TGJXt4yVCNkp87ecrHY0tkgfcwILRdwAEB9KlulV+aN+fyl6SuYmJNSeEUCln+5EQ1e3leVu6z9qGweQ1cZy2+NFTYvoQpOUtGm8hb0I0h6nB2qyvWYOcKGZK2BQUNSngae5etaB1GH4S8Vs3cpwpQpbxhadfDgOW0KEPDJ/+AO95WWomyoccmXmGgNILVD+lDpnk11Wm5Qzn4fv/sCupWyxtt/NIPuWXba5venncaXOR1c2eIVr+2f1o2fNVjWh3evLbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nA5tYfhSbPBVGtiPY+QOhMkAN0w2Rz//SnplTpbzNy8=;
 b=ivCSAYG+um1mVsOBJVGkxgiHraoGFFUUkH1BNSuAfXuRgcuftJ7QGT9rR5GPFI5UXCM4GlyY6RbvW0sLMc2zAbDYCLvV+9D008gqkFehk7/648XWJBmPFxduZO+kfWv9c2SwvxKgHmE+H6QjAmqtVQQVP4z8ydq86XTi9ZnCkoc=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6332.namprd04.prod.outlook.com (2603:10b6:5:1e7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Thu, 11 Jun
 2020 06:14:33 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 06:14:33 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v8 2/6] RISC-V: Rename and move plic_find_hart_id() to arch
 directory
Date: Thu, 11 Jun 2020 11:43:46 +0530
Message-Id: <20200611061350.434293-3-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200611061350.434293-1-anup.patel@wdc.com>
References: <20200611061350.434293-1-anup.patel@wdc.com>
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
 15.20.3088.18 via Frontend Transport; Thu, 11 Jun 2020 06:14:28 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [122.182.246.89]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8a64177e-a435-4d69-9581-08d80dceb576
X-MS-TrafficTypeDiagnostic: DM6PR04MB6332:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB6332413297CB0DF9735572078D800@DM6PR04MB6332.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KgKNly+BXorHn811Ch5qA04HbVKGY/jTLI2tcUCyH/EpuGWGeJtDIY9EK4kAVZ1A4WsyALV408IhP8mcKMd41vJEbmxclyh//rdPBEDSqSJYHx7CrNj9X9U7FkFbqCfyPEsBDqfi9vBhLTRaj/OCEVUgMVS4GYEP5tnzIl7mZEOQFfjwExxsYvOduoddUXGJFUIltPC3B7GDz3w0WXuYj/0yiDol2JKTimZej2tjObZAGeJ5XQ8rKYaqWYfc2ipVIaaZ1PlKTU6uLTDh/zLhvRa27CkDS9+3yY4fIl21Kzpv/kkHOVVVuPStq67v3W5S
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(36756003)(16526019)(4326008)(186003)(44832011)(2616005)(55016002)(8936002)(1076003)(5660300002)(956004)(7696005)(110136005)(7416002)(83380400001)(478600001)(52116002)(8886007)(86362001)(316002)(6666004)(54906003)(66556008)(2906002)(8676002)(26005)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ZxIsVC7/OIux1Kne/ksajxudF7zGWFcbYDJtUReG3wlzUCOpTgnx42q4y+Xf5QX65vrfwl5BAAyzYIUIgi4aBvlFG8dhNkLwIq3P4f1R0HyVtvuyRPyaTBWKgLivoeV6eiQe9NFmrVcsVgg6jNrH4hGg3l0/yxMVSgUXd9btByoKlR5b3hL44v4N5iVKyrCIZmtWpLtlC0RrHSUdGrfUjVaPwYmVIRLQMqJFQsWj14Utl3wavCA7r9njrY3avyfAnS6fmstTe8bYDHQ/fTzCygayfykdsvLy+s1B4dCwDS04kPBRYgWN/gFcVw8p0oI4BapCQAdEfXCh3PBE7BUXZQCYfj/57yi3yp501DUMQ+PLqLlhLWinWNNKRxLp3P4mNM7wc+hAFGWBRG0Tzm+BZ1UzcFJpD/FopfqIlvaMFMipxRGpc9x5UuQdai7YTYpVy4Kkpc00GniM+d5dT4dpEywZUQouFFEMaEm8E0+DX0NUxv2r9tqvUzkpT51+Xfjy
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a64177e-a435-4d69-9581-08d80dceb576
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 06:14:33.5234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PCfFMrT7Fcr1FWIJ9TVDx/Eof6TEaPhLdfnLJCk9E3hk4B3sTE769vUaAWM83E4hF4MK3z8mquylVILSs6l1Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_231435_967138_9AF06AB9 
X-CRM114-Status: GOOD (  15.52  )
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


