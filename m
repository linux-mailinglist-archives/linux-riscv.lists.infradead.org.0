Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 620881E9CE5
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 07:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9yeiik9wznBnwrQGWfeMnJKhURgg9VyERNrsWmwla4U=; b=JGY60igSrz7F4P38/Zie7XF6iU
	9PWhrBykLoj/rJp5cGcwsQ48lWTFps/Hi2BLV4Xf/5isD7tmrHSBGda8UAPRuBzUb8pnk7wyoDDs2
	IWpvkaQBcu48RGgwW20iBDBamLPzwU1PQDAUqnC4tC7E2X2zTi//2hr3VeldN+O8k3l2sN1v/sp4E
	vhFF9NTDuYPLQ2zXOX7ahcRgSsOlCibzxSVQ93ThsuDODQu/PPZ21ZkwRH6ecqSLNrSi1yUi3V0tv
	ucEAjrv2gsCQ59MuVlUWCNbU5J4QM0k1oTUey2eBYPvm/zKw0myv/v+8ok5wc0TIQ1WAthI3S11cO
	iyMFfSJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfcfp-0008CN-NK; Mon, 01 Jun 2020 05:07:45 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfcfl-0008BP-Km
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 05:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590988078; x=1622524078;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=DOx/kNkUtq/Yyg3DUqXZf/IP+66WlXp00nNN3Gf0+L0=;
 b=FrqsYIHJTXqdgH8lAMmLAhtQuPJ7MCigI0nVRqH42tKnYpbxSoF2c7EL
 M7p8cOOQ8i58d1OWslOjOtrBbmASPptGgKgN5WwFxTYb73oNthQeydWU7
 fy699in6k6NzRwJRVnZGaDEuWVjR1X/VPwio9JEJrd1UvMtnCXJ5kU3dA
 8qGe4RYUW6XbeNGPq58Jy2a7znOweGgq1EW4rAGJl4YExkfRQ3xX0H+CD
 CIneOikYUYoAlFMp00sKNEm3u0ziwAb1wiVaNpqjLhYpdH6N1cjaKonyz
 c2cf44ecmxs3JCxZgvnb+QTXEBXOnQLu/xDpN4XXTa1HHR43LLuCr261I w==;
IronPort-SDR: h6KoSNwcvvZ6NuXDvhWvU1+sJpi3aKXdYHLzB8Bl5vnFe1GkHlDuFZoLyBU5Izwo75zDfNiuS2
 h41BrB5X0r2MerEofgXIr2jR3WUcE7z4YqQoJbNvbexhv0rFX38ZaTP2+hB27mfhNSkyynX/r3
 6qX3AbBtI4phPb1V0SO6IP4U1rh4a6IQPkZ3nGPctk5yPM0GLajBWrtjJIcSmCTuOJB+k4d2EE
 PjYqFDfbsaMZaQ1pp8HLsHBTlUkokDOZrz4L74SHt+TZZXORwFY19Ya3mmJ4JXaR1Jft19AWZx
 B7s=
X-IronPort-AV: E=Sophos;i="5.73,459,1583164800"; d="scan'208";a="241768926"
Received: from mail-dm6nam10lp2106.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.106])
 by ob1.hgst.iphmx.com with ESMTP; 01 Jun 2020 13:07:50 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S7pqERM+LgFQPoJ8QuK99whGppl4z2eUNMnhnkzCEhOckwukYb1xZn+2s03hifUF06ej+Qvb3mrMNSdecweesFnqKIzS1iPDNPXoMgH1vVwI+J8+uVmUmnebuKZpEH9cQW9kGKLJ/oTPgZf2LNKZ2KG9W8s0LOLP5LnQ163D9MJU1uQKHzO+j/gyFgQMgFZbm3zR45xu5o+uPYs426ZBuMyXKaVUSiTrpw/f1N710sdTUTyDbOiwEeofGtn1FBaRxs34r1N7tDw3V3zaC4RsYvlo1H7A/krl3EkA3dQQA56LdQu2XotmtBt8z2dmTAeWi5l1s7G7lUnnKE0PWjnsTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9yeiik9wznBnwrQGWfeMnJKhURgg9VyERNrsWmwla4U=;
 b=SWw2A9Mauf6R0WfVvJko/SswhEqXUG+z1+hy2OdfARAyxyKL/fc7diLU7GSC5gaZLzkvOvQqfyfJqsFXfne6HoNee2avhIGoot6CmbQSgNnQDTYLvjnPm1RsB95NCIWZX/AGoHj208RRQ9IGZEG0YYLEOI228vRxkqgIhWxzL63cSMtUFJkjW5DilpSHponHmR2jrTk0jvn4hYZDq8+5hGiVqB1Ki5fpRxoxf20MwWFDc4RvdTjOBNefTqc74idMm7DIfcNiCSHGaujz+f49qg1o7zGqE20Wwh6j23THiOEzFJA/KISLJjODYvrC89G5ggngsHQ4WDlzAdoOCQNAag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9yeiik9wznBnwrQGWfeMnJKhURgg9VyERNrsWmwla4U=;
 b=ykCclMQqoQmyxFlMmVqW5jZUvDQI07aB1Oj1FpltxpmRJX9HRPK57YAvoQYWyt7mNrAi1hDhCuZScdQZ4zsO8SCNYfBcLupbNZ6xOZhLFLwc/kjivDVZwAbXxkAu92MsbkpFH9FKV5+M9mNxDhKV/lZB3a3CbCqoYCIMuCed164=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4731.namprd04.prod.outlook.com (2603:10b6:5:24::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 05:07:34 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 05:07:34 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v2] RISC-V: Don't mark init section as non-executable
Date: Mon,  1 Jun 2020 10:36:56 +0530
Message-Id: <20200601050656.826296-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0027.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::13) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.23.166) by
 MA1PR0101CA0027.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Mon, 1 Jun 2020 05:07:31 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.23.166]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 52553770-3069-41f8-3e7a-08d805e9b1ec
X-MS-TrafficTypeDiagnostic: DM6PR04MB4731:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB473188F78B4E3358C62644FD8D8A0@DM6PR04MB4731.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uGUwDZeQ9CHEUt4gUGTw2H5zXToys107JGXd0VTc4DqQO4n8LJJIRIFB5QCZUd+v+NtQ95M/m6B6U3bQE8bAHhVtiQztP++iE1MsKLCl5g+F4mIPbcYRrzx+8uWhKsqXRSWQEqUBVX43g3tA8RmmaSvL8O9edZKw2MJuGPjRsl9GgEwErbfo63PPoUmyZIXnV7xF9NtnUHJ16RO+VgK4BpMGIlTJxPV5fEjUkG5Q/D3QPRm+Tce6UzEs4a9TqHI1w0LnyRd94gjS9RIdQxKOe4bfEFra5RhYGb2lTr/487O2tK1eEF8fFHeoAnZfR2f/SXd5AjuWfYp9E7hE+m1/qA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(396003)(376002)(346002)(136003)(86362001)(44832011)(2906002)(36756003)(1006002)(2616005)(6666004)(5660300002)(83380400001)(956004)(8886007)(66476007)(4326008)(316002)(8676002)(110136005)(54906003)(52116002)(8936002)(55016002)(7696005)(1076003)(478600001)(55236004)(66556008)(66946007)(16526019)(186003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ZlaR9RJZBty0ggjI+bNU1wOuar5jh5hhLyvdVxJqEsHo4xT+J+VWcdAsYR60SQwprFUo3uSLgLuqUREc6ywoc4BUx4uKEwuloJM/Vjx4ePpprIAr9TKS1i7xWYoDdR16HVxjL87wI9Dtw3pURo85Fe9AOkb3Lyq2z0lCm1/IRQr2eUVxTP9oH9dXjlcxfLGT9Zp+ctNjUfozHB6UcuvS/L36zRtcsAHuaig/nPL/vXG3HBQsOGkM8yGeO3pkhDuIeURnxSrKhgHye/89PVAnDBiMZ2s0WN3Jqpswe3+nf2Y876QX7TuUY2TuTBiJRQ8s/VXK+Jfma4pe6QJthWjt/BlQzXuKlrTdxYoxDIEXdwCo1sM9hjCpu0fcHfe0OCKW6bmVv0dL4rAfD9ZMjQYvB+9AJqPp1EPwmre5bHItXkTFdd9d8slHCJSLO0y9qLpKC8/C/UFubK/trrNWgNpjYwTBokHUJJ+3qW6kXoQ7Ey8=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52553770-3069-41f8-3e7a-08d805e9b1ec
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 05:07:34.4752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3LaiuEcQF+SMnbZnZhTMtMR8kTckCWIzzeHsblzc1WxyKp9tmaYAQ24y2aZDYo64IUHavy2qTOUDAaNJSV6wwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4731
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_220741_801997_D733824A 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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
Changes since v1:
 - Updated free_initmem() is same as generic free_initmem() defined in
   init/main.c so we completely remove free_initmem() from arch/riscv
---
 arch/riscv/mm/init.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 736de6c8739f..fdc772f57edc 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -479,17 +479,6 @@ static void __init setup_vm_final(void)
 	csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
 	local_flush_tlb_all();
 }
-
-void free_initmem(void)
-{
-	unsigned long init_begin = (unsigned long)__init_begin;
-	unsigned long init_end = (unsigned long)__init_end;
-
-	/* Make the region as non-execuatble. */
-	set_memory_nx(init_begin, (init_end - init_begin) >> PAGE_SHIFT);
-	free_initmem_default(POISON_FREE_INITMEM);
-}
-
 #else
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 {
-- 
2.25.1


