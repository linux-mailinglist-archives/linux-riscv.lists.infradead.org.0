Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373721841C2
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 08:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o2MO+pNVTGhfQHncGwC2iRlM8Z70M503X3V3OHDCjZ8=; b=bBJ+5FibAOOmrLeoBEyOCnj9P
	Uz8fz5hsxWgMpCMbL3NNGidWLlF2cyS6dTRwb3nHBADhpa95f0Q43hakp59Rq5elAeb1qZsVv6tPo
	zikDsHO/nFtA+wfryslaCRbDkfty5wPiwuJoDjztejtDCZ4rGW4XFDnPYiyC25tn/Hku8lgZrjG/I
	jvM5YpEj+qUY5JlrJnCIIDl8ZKwIZv6+VRpoqPP5s1D379jStKpGELyPQvgRxXtqVCyzluxwv/gko
	ogSSRoMEnCT4kh7g00qK97HZ4ZD/VDydAPXeluvenyhvgC+eVx/ZJ/rP0vS9AwUVV+QGbxcBfktuz
	H43PCW2xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCf8U-00006z-TC; Fri, 13 Mar 2020 07:53:38 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCf8R-000063-1B; Fri, 13 Mar 2020 07:53:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584086015; x=1615622015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=VzbtfCv0+v3UpQ1c6VZC9sCK2uORkqaX0W2/L7bKdDM=;
 b=j1WjpUwMwaF5/6HY++GPKeoqDxVKaS/ziq2EZ13PK7TIPm+/bIhiYhPT
 J1Rxg4EMl92k5I7ZUvr6UNQUOcwMV1GS5BvUJqLOOUFcop1mYbsJmtlxr
 hycTqVsajjQOcVeBKecgQeSCdUpmkN71CGR8YkjyACvCTAqhum9kuhiKp
 rHGJBTF7sacxkMA/ekcG3qIS0nDTUhyNOzmuEzreQBOT1hZwWyA7oc4GK
 gvsR+Kd/o0bQ8ljSbmjre2Gv6/HU6D4wvgQqApwcc4mPEnrbkk1t34I6W
 rdvViOWsH2AiBghwPp9ZgCfl9V8FPf+7Rm2e31CVyK0379LtaE3y5abI7 A==;
IronPort-SDR: doPZgvi6EXQKQ8kQz/Lm43Y9pYqWcnHtkC2wcOoGL2yMYUVlD+Zsqn6C1yzmvOm0s+1XVZ+Rh9
 oNrDqIUtKcN1AxjhVVlTp6WCaFfkX48MHi5BiWkQZdXXvYWcp62rs+nxHBHIEtgRRGzz61A2Qf
 qJvR9ZSFbL17lOWc9UM6odcGHP5tlRH5iiR9ksRBKRqkC5PaC2W+tc9dAaL5A60mIKdNtYvOF+
 se+L5S/Xs2JGM6F/x2kD9fPDGQ3+eT5ilj+MU3pyzcyEe3Q/olOEzDXJRUhM1ZA8AFJ3WTxxUp
 ZSM=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="132827555"
Received: from mail-bn8nam11lp2171.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.171])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 15:53:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YycXnYiRIMecX34zj3GBYu1qW3+hzEPBCU4D8y+LQM78hfUHn2ZniOPVfYYIT85XzX2i3zSbDP9DVIeWKrc+xw0Gta+gGKa4rgHxTPdPnm2HaQueRjtMGdX4hPyoe8kCDl7UGdCVnysA0fEXF2PHCmv0FH88JI5ZhMFwGGaLsS/wPDFVrcvniowJ9r808vlIqHLjwmNMfR3lB2EuyUWWIuBOp9FiGHdOFDJ9+FCmtgAYRJIqAdjs7ZZNTXKjAs99orRwaQk1ANJPGeW5Wqel3a111+SJbWuHPKS5nHVH795kujbfjg5nRepRgvx9LakX2j/x+EUWjPgf4c1CaiIkWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o2MO+pNVTGhfQHncGwC2iRlM8Z70M503X3V3OHDCjZ8=;
 b=DjPJSYWk7gLurfkSAhUbHkjUUWcfk421YszSvzHuOyTSHxha8D1EvC+HonRXWPDnqOGDVg4UljO6HTH1zioRRCBpuk1Gfb3SPeDOEz/y7FK/dDcdmdFR5MFalOkxIkPCIbD6jfFoslITnphFWm+MQxbfavjwQRT7LXLjrqwIO/jqn+OzRAgT+ZxMQeN7Edh5/FU747JjheRguOF3F5fxs/7sx54MBOEB+mrEVBTgPQkdPBYYuvlo7zYPKe/ct7HjoFowPaaQ+EIApFjwLzVbKTalg/07ZTBSyIYp0E5uOzbtr8gWNP0W25SMTz9u0cFNhXLwhgYHHlQ5AzbuAsS9FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o2MO+pNVTGhfQHncGwC2iRlM8Z70M503X3V3OHDCjZ8=;
 b=m+/EIU+8/jri64ySiHRG+OowE4QFBvqC4CE1jPa8wXKC4/vMIWtUPkDA8hEP0Ta/rkXfB//ESdJj4w8NnRQHozdr9zLAOFHKfO7MNEMmN/Qk8KJnwKBDkxXNQe4Dgi//B9t2ebqFkYIExFfd1BAnWjr7d5rA6cmlS1Zozbeawig=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6637.namprd04.prod.outlook.com (2603:10b6:208:1ef::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Fri, 13 Mar
 2020 07:53:25 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2814.018; Fri, 13 Mar 2020
 07:53:25 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>,
 Radim K <rkrcmar@redhat.com>
Subject: [PATCH v11 01/20] RISC-V: Export riscv_cpuid_to_hartid_mask() API
Date: Fri, 13 Mar 2020 13:21:12 +0530
Message-Id: <20200313075131.69837-2-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313075131.69837-1-anup.patel@wdc.com>
References: <20200313075131.69837-1-anup.patel@wdc.com>
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:20::19) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (1.39.129.91) by
 MA1PR0101CA0057.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:20::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14 via Frontend
 Transport; Fri, 13 Mar 2020 07:52:55 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [1.39.129.91]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c95151df-1e13-4ab4-5867-08d7c7239ba8
X-MS-TrafficTypeDiagnostic: MN2PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB663794CA88D170E0CEC898928DFA0@MN2PR04MB6637.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(366004)(199004)(6666004)(1006002)(4326008)(8886007)(8676002)(81156014)(478600001)(7696005)(5660300002)(8936002)(36756003)(81166006)(52116002)(1076003)(44832011)(66476007)(26005)(4744005)(316002)(66946007)(956004)(55016002)(186003)(2616005)(16526019)(54906003)(2906002)(7416002)(66556008)(86362001)(110136005)(36456003)(42976004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6637;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ICP5Ol+j6pAsVUiM9XBkTg+DMe/GC1q6Agmqm+oG9M4CnOXQ6JxZ/TyK7UvQqV2Slp+eLVnZdAeAzjcYjZkjcAF9JtYwNLxiYcvWN318X6Gm/hznPeDIFe6fqQdRLIKApWlxx1w+/fZeOEsP8Vas5laQF5qVsz+In5jfaYfEvMmjzyFo1yI4Xo9jl10sYkGVmFKsksP5JWEKucRxXaal2PVMpVjO4OlyztLgbBL+mUwlSd26S5/7Nhis9f+FNnWgBeW74+Yr9ghk/9sqvuI3FiOByKkZxWp9uwTL7FF+todIigLcFVPsrEPWE+Y0JURvdI+tFAdiFm3QiuGvk4N0BpLuc1t4EOQn5LqiqRaOTPXr1rAN0g9IZNm5yHukeVwn7TImSJWlj+zYt0Ku4aVmcNo7Gz999bU5qALPumDoBZfRlk733lAcYrnHzaqHA7JRB8YOICD7UtHWlUHtSNOUbn9LEHwFYBohr8LHtFlzBa6RcPoTNsX1cy/xteKV+FKFfCTCpoUsEIsaI+hczkB1JQ==
X-MS-Exchange-AntiSpam-MessageData: hybDEmOmMVxEZi1bAp2P9aA//0zXYwkNMGlJo6ureCPbkT9XOzjO1mc598DSIGUFk5y6BjFfIYj8BJm2WSwRHt2eVs9mGu7McE3a4qePI+Dz/NRq9m4K/IOmKM2DjlCyp4Rx9h9ptpa7QMm1GtV6Iw==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c95151df-1e13-4ab4-5867-08d7c7239ba8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 07:53:24.9786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1+BnRAKISxzCyN8PHN/s/coQ+610BWKbH9EUOtseMCF2lu8zUUM8K1M6ctmuDY4dyYcqv76/V42r/iD7rciZQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_005335_088304_17A1C2FF 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, kvm@vger.kernel.org,
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, kvm-riscv@lists.infradead.org,
 Alexander Graf <graf@amazon.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The riscv_cpuid_to_hartid_mask() API should be exported to allow
building KVM RISC-V as loadable module.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/smp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index eb878abcaaf8..6fc7828d41e4 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -10,6 +10,7 @@
 
 #include <linux/cpu.h>
 #include <linux/interrupt.h>
+#include <linux/module.h>
 #include <linux/profile.h>
 #include <linux/smp.h>
 #include <linux/sched.h>
@@ -63,6 +64,7 @@ void riscv_cpuid_to_hartid_mask(const struct cpumask *in, struct cpumask *out)
 	for_each_cpu(cpu, in)
 		cpumask_set_cpu(cpuid_to_hartid_map(cpu), out);
 }
+EXPORT_SYMBOL_GPL(riscv_cpuid_to_hartid_mask);
 
 bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
 {
-- 
2.17.1


