Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472FE1D5F2F
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 08:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3zDq4pm1Kfp/0D2otmgpDpUFFMlyg2d7YgW/otXNFJA=; b=RwhNsQcMWkuNXzlQYXOVlnUGa
	vmteufYHTAwN7dGEVjOHYdZe+YSteyuVFiRyRD43KwWqTWaq+P28WwNYQ9vpJhZZFijt6UnSbtCM5
	27qmm7E+faR8eIIf4uDx1hosuVGZI6WD3KP5d9b6OlRnmHVSBWHUQ3eQPlfOBpUyC0Ov1PLho4jVt
	QHwAVipqxuRicL9vVnHP5RE72srbwKlM4KgYJgfqNMm+/LiZ484qaPIqp6p1gi4U2yamtlVVcQ7Nd
	ldL2sf999tr1cN2fYulF4XxvNbUmk0IMXVA/9q5FgX/H/9yMt7o7uwh0GGJ9sg9ssyzmVak6n8eB7
	0rTkBryJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZqUG-0007RA-LO; Sat, 16 May 2020 06:39:56 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZqUB-0007Go-2B
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 06:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589611191; x=1621147191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lr659sGg0I3T2UOvlMwEHGGC4GnZiKZunL12HrYu6TY=;
 b=e7HYIMrvSTI2FVW5n6OjJ0y7UoO/zYRILMn0DZzrHnFKdAadCXX9xvLi
 ahUqO3fdR544Fcp9poXgvahK08dfqygJo9OYVXBVcwZPqUkfGNd7UTj2A
 kD/evn+W9DojTDCtAOtHM8S3ihvT25LDitBKhoo5vjHF9bHocL15tJvsF
 G1tqZ+7jUYKC+KYQcf6JsUZV8Lr6T09K1ROFDbIID9EnfN0+xOhD/ZWT+
 /yJNOqNir62so5viakBiAnBFiB0U5suStuwm1dJ9Sn2ijMPClzhXTicUA
 NARLbUbPLwCbboMLrxaWSAE2RhxAzjLR/WXmSzicgCV6vZc/g5iHckmX1 A==;
IronPort-SDR: d5CDI8KnVNBm0R4QGS6LorIrsJ1M4pjmwGSTFP+o/G9s8MqZ4ljMQ+hR11YAJCMwDaZ24FUuNF
 HhwLuAyr/cOdBMMprv7rO84vJlcfK5jFHmiuQt0HlASZNgj8YzltsyJZO3TSRQ1U+flBiOVKPl
 0B7R7B94RpAQyxpfBqqBonTOqkY/9z10a4JxEmHbtrX0d+MtCpzttOVLXMlxSrVfmpyG8golGJ
 cXoqR6vtuqsLUE7qlNFZrHcThAQAa5sm71pok3i5NrDMXEHrqA4GZe+3/O6tGZbQbYT22Zh8S6
 2Io=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="246808240"
Received: from mail-sn1nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.52])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2020 14:39:50 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C6b2JZwdqScujGKMppiIccU6n3O7G2tRwVe5mtjqn9GRpni458z0hOvq3At3ap/eVocoC10jJvfEPitz2hXf3Bj+V+GPYjLOd5kVgVOjQJrXqyw8CwBPJk2PMqbn0vVz9lgr4cN7CNOX1OFGfHv5y3zkk9SMAW2shDdFcb+TZI4yHUYfo+e5ScgAzGOCOGfT+U7bxy8qji4lCFLNf1/3i1lV4rnGMgVNVhVdulsBfqrf4SIbnOhYvZP5VPaEATO0koM9VJkgv4xEaxmDyOvOsNXdoHSHe5EdcraB/+Kk95QI8WzZxk5IwWg6SNipTNBr6Vkl4Y7TzSF/zmRRR/Yk1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3zDq4pm1Kfp/0D2otmgpDpUFFMlyg2d7YgW/otXNFJA=;
 b=A7+PMNjTS4DLvytoguhbtXgmVCjJ0Co/3Rkl0AO3eHwmMSyoye5+iisAEg6jJNXcUuaO+rnxzFiqk1kG03bPhiGNHmyc/t7h5Z9pVQvS8be2QuofAm3nUGhiWWXhROBgNkNsMLc3hDUG+oB2LStRZclC2ZZnMzhNAEr5SNuHr41hr52k44vL5W42AhSbDQeSGFkDeZjvdO996GqUGTiXIHwrAv1Ps9/S8thmIKWOzaenfpd+zjUnJVV7im65KZYOaZ0mhSXcRzS0zaNqvZGydgBXMltB702XUOLcZttQR9m8dl4nBdGV/8VvX0v8zDnxP2Hf8gseLFGsE8rOfUD2nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3zDq4pm1Kfp/0D2otmgpDpUFFMlyg2d7YgW/otXNFJA=;
 b=UPjimT7K6dTJCg2Tny+5ljV4N6ftUOTCW5jJdtR7YkD0d6MXetkRGqZk/0xFQVjnc/VzEOiUF/TqkXXRDwZwyAmX0ob4SzUT8dpa059DRjwYFoc/KDUKdSs3KlfNBfLAup9Dz3PQr2WY3haZm2j2b77MJ4FTg4sFu25FUGw/21Q=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4539.namprd04.prod.outlook.com (2603:10b6:5:2c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Sat, 16 May
 2020 06:39:49 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2979.033; Sat, 16 May 2020
 06:39:49 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH 4/4] irqchip/sifive-plic: Set default irq affinity in
 plic_irqdomain_map()
Date: Sat, 16 May 2020 12:09:01 +0530
Message-Id: <20200516063901.18365-5-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200516063901.18365-1-anup.patel@wdc.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR0101CA0002.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:c::12) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (49.207.60.36) by
 MAXPR0101CA0002.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20 via Frontend
 Transport; Sat, 16 May 2020 06:39:44 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.60.36]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3b3fcd2c-b358-473c-dd9c-08d7f963ee27
X-MS-TrafficTypeDiagnostic: DM6PR04MB4539:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB453998D5A723887B63B92C2E8DBA0@DM6PR04MB4539.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 040513D301
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yBx8MwVG6I9rNUufpaWBXiKahZ9UGZqVrXKI6CzSRTAEMOBT7cQz4vfB2Z6wFnH8ereDk2lNBjAH6HmQqJBRhRaFrNYLNsEyXNDzCvLeca6nAUNxYlCrSItzLXSj3SeX1EhrfONlmbtTVaYEhIsQjLuWxNQZc16JN9I22xT1OVvEs5lDNUit7RiThG11fTbQSSjkQBw6A1ZNwtCBKuRSEKvMkw1PkSd8W8IZQuQ5nii3pgeo9/ygRtBT9aQi/0a1a9dQu+SlRSn/PrvBOj90RlsGBdIZgTmyNG97caCZ5ac/VDEPGwl5/zdvInj3lW207yikRdERbsP8OjLMiYYGJus67c3mElxvxu1uG/6W1f2xA4MQKwUt4JFKFVLCDcvql57gQW/Po5mTF2daChCKwCBEAkATm9ShtAg1QDUDgo8dZ0uGs4uzinjCMYQBYGSr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(4744005)(6666004)(1006002)(2906002)(8676002)(36756003)(8936002)(44832011)(26005)(54906003)(86362001)(7696005)(52116002)(55236004)(110136005)(1076003)(16526019)(186003)(316002)(5660300002)(66946007)(8886007)(55016002)(66476007)(66556008)(478600001)(956004)(4326008)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 266naJ5vQvMVOQH/eG5M606rzOY9UxoUuiujUhXUxxqjOXKBg+sG/hRWHYYh42LLMFCFBthlGEcI5uA6Lu6rFGdW9keDBr6kSLYa0Mzvy8iYpjeK5aSpltAkXgysXGHmGUhHvOvZLqMuWw9uCAEIDH/7RR6AIY0VYyd21esUiunFzf6UvA1cr/X4p1UcEPeJEhK/PsmhaCkKaIHwfyBeWPig8Ufk+QMLx/W4uiw1kBNANMC1IlZGCws/sXaRfmQC7ZUCzP+ZNXsilXm8QZcHJTHmWrKgV8fRJWG0DHEbpNVDfPPB2DtKiPMiOVzRN14s4sDP3g/hqTqncfdr5hM9vug1+vJgN9CBYqjH5pI0FbM3NHn3mjYGb8xN3URDe0A/hbBZV8mbIaXK4O0hXoWAtuk5amcXUZ6HOFB0esPuDfjajKxnY/fMsAqlBwCmeuIL36g03PBeKYDsyEOLkwX8gOHJiaoKErJnW9fPGXeUQzM=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b3fcd2c-b358-473c-dd9c-08d7f963ee27
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2020 06:39:49.2690 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uyl8wlrPldQrdv3cukHbAAtjpLnZyrNAfLaa7+9aDzwTyos4OlOiw2fj7NykpzA3UQL3AkvKQZNFzGmOfQ6JFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4539
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_233951_129781_60F612A1 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

For multiple PLIC instances, each PLIC can only target a subset of
CPUs which is represented by "lmask" in the "struct plic_priv".

Currently, the default irq affinity for each PLIC interrupt is all
online CPUs which is illegal value for default irq affinity when we
have multiple PLIC instances. To fix this, we now set "lmask" as the
default irq affinity in for each interrupt in plic_irqdomain_map().

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 drivers/irqchip/irq-sifive-plic.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index e42fc082ad18..9af5e2fd2574 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -174,6 +174,7 @@ static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
 	irq_domain_set_info(d, irq, hwirq, &priv->chip, d->host_data,
 			    handle_fasteoi_irq, NULL, NULL);
 	irq_set_noprobe(irq);
+	irq_set_affinity(irq, &priv->lmask);
 	return 0;
 }
 
-- 
2.25.1


