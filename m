Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DA21E96BE
	for <lists+linux-riscv@lfdr.de>; Sun, 31 May 2020 11:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PEMg69/5WSncYflSjGrST5ND6rYas8qlSG8UlNpZV/k=; b=AjslQ9qNl7lpnA/h1EFV6Eu8Y7
	Cie8l569L7C1hKSQgrHX9zlmRkg/1MN6xiMyVz1DJ/aGNjhMJpEY+OVsjuv6CSoWBuWMoO3hRohpR
	InprQsU4fjb8d2yqkABPjPdsxe1LF+dg7+HjnpI8iyo8IksoXkKcjTd1MqpnoWbLBKrz2f3xwBG8S
	0SrsFc/1PvHyJA1pxVp5HiTi+whJm7dSUNoCGM0bMDAQxff+5dEOumGaTmNZp4AXy9AKWxTZM7sDX
	kPAw6fsGQzQhSCnR6B3TJK+/Ot2OJ20R6ObnCoD/omWG/X9jBCUHBUdxuDneK84mmHiWxQwct2Hu2
	84hpR8rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfKjg-0002gu-Ag; Sun, 31 May 2020 09:58:32 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfKjc-0002gN-48
 for linux-riscv@lists.infradead.org; Sun, 31 May 2020 09:58:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590919126; x=1622455126;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=9ZRHZ7BGhfrZev3zXonrkDkWvIHoYckrGg0Hb0QBTNg=;
 b=gikjCZEKur4ZznGp3YdG9FnDkxAy4cDXLibmMi8H7tXL+4SKCPMWEYqJ
 Iq4fPzI7KWsNo4lebB1/xepugXIvzrkfv1Vnb8eSnoyns95VWcKalvo+d
 uA1wTZBrtHH0LwfSEdpObPEBzeg8etdavMktdSN8XlIy5Hak7BNVs1oDM
 GYNragEJfMA59nK9IV0nx4CkGYqkY3X4ZCfLaDGC30GHbokIBzgrqrkRR
 ubaUu9F3VSz2s8Acve/cKVLA8YOdDKfPPuXpMo2DW0moO4SKf8fv+c0BR
 zj85zM6gGuZo3NIIQ5mplE4yHzFhWvbT7mi60SVUT6tLvHkEjbaMYwWyD g==;
IronPort-SDR: pkohFmPOH8jGFaBnuRtQYOJAwT1yZYdHKnAaaf0cEcFLYjQjzgyAZyskDow1GTfsrbzzLQj4lk
 xd5kGfJwmn29OjCQ7C+Oz911tdBEZTDrf+BfsfWpe2dj5zjqa2HZIAae2dKNpUxxzvYEtzv1/I
 qSX2+qizv5uE3lwCQ1E4O/R2sssHmNSrnteMw4nfFNGt8bOL2m5ohE8KJl3l50kxxWJUgNpEfC
 hFMlu75k6ReSITlPplPq/1/Abyqmv6b3FVBR1TsTrFsf0lg5etTRcPVdDP9eG0j63duHfkU7N6
 67k=
X-IronPort-AV: E=Sophos;i="5.73,456,1583164800"; d="scan'208";a="241727571"
Received: from mail-sn1nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.59])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2020 17:58:41 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F3F7gK5zQDmwQdo2aKXQEs/xuEUVpjGS30BICW8ZAXxXWUsCxa3AxTo5zwOEF1qG01/GbO5K5JiyPqAAy6lKdULUV+6PjRSJis77xM9HUw9IgTG66QDvTMRf6drvEZfqzVsr3lYazpDxpbsrh2qxlMialbQQ5xNWgDn8GFuucd83dg3p0iUShrSNSidgYk81E8gEhx5u2VmzJAJtFQfWcaLAJjUbaImzj7eHakDmpxgBCo2Q7quDcqQdh4xoq8i6uAKodYoVTmC/LJuEzslWD1l7m4RTJCa8jjB4z+5Bio/RabARgdPcfNVQV224gklwlj9UmyhTDNM8oQ9fqJI+fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PEMg69/5WSncYflSjGrST5ND6rYas8qlSG8UlNpZV/k=;
 b=n87jKvumsrKoCr6jnbbLWmN4aSuE+s2pta0URp+1Tp7lvD3Z5eQXqjkTaMZercd7RcLLuhjZPltQ+ZC4fKzATrbjTymwNDk6GA2XMan/vGc7e4NMmM8bhQalf5W7dr2fFkYjP1wZNaE0U6C0IAsc4hNiiFa81c1vW28A+phLSBr3S92Oxazl2BNKEgwo5KqZVNnaooHfHQt5pjeyC6GRLbyAhjZiF1i1OhxOaHvXpmrhepB7GSBwxCP4QYvm0cwPx6hqfjXhe3hRfz5Tycy60L2F3yPeLe+NPXNtp7vZ6eKtYBT+pfPN8dTRaY0w+X8Nv7hLDK7yAWg7pF8XQQV81w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PEMg69/5WSncYflSjGrST5ND6rYas8qlSG8UlNpZV/k=;
 b=Id35o4NpneuBVhJY438DTU2u4FzR3uKX+V223pTqk/5p4KonIHkgNw6OOSJpA6AHr4TUGG65ClcOh6QzFfArEz/hB1R/LnEM2kOpsTF0NDh452H5lXK03g4i4uYu6kvaHmCf+q5RYUlR8G/jW69EmrTQprI+wTvUsd2r0oPKy/M=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6428.namprd04.prod.outlook.com (2603:10b6:5:1e1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sun, 31 May
 2020 09:58:22 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Sun, 31 May 2020
 09:58:22 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] RISC-V: Don't mark init section as non-executable
Date: Sun, 31 May 2020 15:27:48 +0530
Message-Id: <20200531095748.753388-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR01CA0165.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::35) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.23.166) by
 MA1PR01CA0165.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:71::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19 via Frontend Transport; Sun, 31 May 2020 09:58:19 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.23.166]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9ff3046d-b957-4e24-0645-08d80549273b
X-MS-TrafficTypeDiagnostic: DM6PR04MB6428:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB6428E31490D026936C2D96D68D8D0@DM6PR04MB6428.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-Forefront-PRVS: 0420213CCD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7qHAwdE3hfGGzB/8keXLCdMwR0805uvXzU4kicJe6WYBzYadwPf8lX3r8OuXtlYW/bCZelNE2xuSADMl+vru9bHmFFIBthghNww74CVF0XicocT2i6RJVquSkxNC5nfLXv8tF+YmWSdASqlvHeIspKPn9LgJmNT27GUBWecAH/mMBxdyndViv09ibLahoJpXeVh5Xk/JtV3Hlsck2V1s+ofDcqCUH2V1QeD3i+d1B+6UhYCJfojpaOrNcq2d0sge0rMKpVSjISBsTFqRXiOLvjTm8WLpjkHIc1tt7y9iIUEK5TSQjiIlAN57DBi/f05NeEnkxhOGJydjMski3Zw7qA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(54906003)(316002)(110136005)(66556008)(66946007)(66476007)(4326008)(478600001)(16526019)(186003)(55236004)(26005)(8676002)(55016002)(7696005)(8936002)(52116002)(1076003)(83380400001)(6666004)(2616005)(956004)(5660300002)(44832011)(86362001)(2906002)(36756003)(8886007)(1006002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: q/feNfY+y1coQjy3ZtgYACeJbd/G3fCaF7qH3u1S5hn++w6buJ0q6svTnYxXhaYchbGUtOu5+KhiMS0KdnKqAfyDXlvhp0tuUuUDNfZx2HUa0+iHXNH21jnJlEZ4ySZPLqyodS6I+WoJyoSmYQNqhf+wAr4Nk444ZECqO3n7sW7S89n1xfg+6CCc9Hg50o7uwkmDqTUjy29rk54/Y5JzCJUP+csVCcEb23y9kDM07VOhwmBYtR/b5Yu0U/oS+ZRk0Pgw6PTB4+x2J4vSb4yQ8AklNcsM9Qz1oPdF1p+60ij40tDfDwCOLj4zQNXwzWpMN6mNQYqSnL3pl5zT4wlvfAX1VQhCc5Z63KGJaupjwZwQPibjSmPRXWsYTOqZ0tyXTR7wR/l3/wVahlF4zCoZInauaOtNtoyJ3G3ShLjnuQGe7f+MKLkL6WoVQVKVDfSrdfm/5Sxg2yUaocikMBGscaSmAIABhafszf7BnCkDjug=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff3046d-b957-4e24-0645-08d80549273b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2020 09:58:22.6103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cvi0R49p4GwC6QTtzZM+PildpKgxdvNtdg4MErxcymnhUrfb70MCIiU8Zaxrb/BhkRq18OGnBmxp9JM7HbwJkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6428
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_025828_327841_CA8A2549 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The head text section (i.e. _start, secondary_start_sbi, etc) and the
init section fall under same page table level-1 mapping.

Currently, the runtime CPU hotplug is broken because we are marking
init section as non-executable which in-turn marks head text section
as non-executable.

Further investigating other architectures, it seems marking the init
section as non-executable is redundant because the init section pages
are anyway poisoned and freed.

To fix broken runtime CPU hotplug, we simply remove the code marking
the init section as non-executable.

Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
Cc: stable@vger.kernel.org
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/mm/init.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 736de6c8739f..e0f8ccab8a41 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -482,11 +482,6 @@ static void __init setup_vm_final(void)
 
 void free_initmem(void)
 {
-	unsigned long init_begin = (unsigned long)__init_begin;
-	unsigned long init_end = (unsigned long)__init_end;
-
-	/* Make the region as non-execuatble. */
-	set_memory_nx(init_begin, (init_end - init_begin) >> PAGE_SHIFT);
 	free_initmem_default(POISON_FREE_INITMEM);
 }
 
-- 
2.25.1


