Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D54331841CA
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 08:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PA1UOWuzfjLenXwC+59ong8v1PWsWD8rFkbbhp15w3k=; b=Y7fcvKFKicJtyZXEKE1AiVXid
	K4fHHu1ZGZM+O2AVAiYSD9riNljskFUXJVF5I5dn5e2ROmPEWzZRDrqKdlFcwNPbH8odxNSJ50xFI
	b5/rrol+OWct4ncEhisRC6tDTy3hdo1Sx1ewVZebqYPy4nPbzCFoAT/yBT9Nf/kivckxz9+SSPfdU
	0lIJDdz4oKssd7n+5Fn+mDR4fK5mDGeXB/tA2G1BON2N1JmLbdjSUzUxsHBO0bYcmwf6VBH3MlPEE
	8uq9uotAAei9Pf8jGwPya27udez08PYOOcfQJ2xc0S6QsdtvTNEZNlnV3XfN5ctzCXFs9izbJa3cG
	v01PY+Ykw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCf8z-0000Ho-Mi; Fri, 13 Mar 2020 07:54:09 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCf8w-0000HA-8P; Fri, 13 Mar 2020 07:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584086046; x=1615622046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=VFBfR6wZK6/1Knu7u14dxb1J4sXhHSDDm2X0gyo9rcU=;
 b=fxwdOuE9zeR8LZfdSfpKLPf+EsNBAxJFsE7ovFrAxJ/kKRuCA2VMDzfZ
 u15Yl/hJDx6z2IopAbA5Ou8YXmVyUTx/uaS/02OlZhfj42ydhgVDzYGBA
 YvlA9E+g1OuUs/VVOIVYQydnV+YnW/dX+FaRQo95+rP8KiH4l+IAM7G45
 M6jnzKeSjNo/7kjzKignZX+9EItxijK32dvt3nHieNEtcMeubjMwGGX+R
 0yfuO9BVoDF81FIFCDfbg2J2x41Nx7aO89RdRk3hshti9GcGvKrnO1PUE
 7w9kwv5ROTL1ue0hELYD3QvawBOEJQgyvopASqwcjsvcC0SqntMcgl1p6 g==;
IronPort-SDR: U+NLv6gbB6NL8P6FKCitzycZojYtxcxY+n+I62wiMcmHPRutveoP/JLpHDhM+4DvQlebFSl7TL
 ZVztSu1v3Nw/8l66O5av9BT7suxXYlF3m10ppUBVupHyEZd/Gi5lDcJeITai/jW93+R1UTXtWq
 ixB52KVmfxqtqh1K78+EFaqwXj7Lr+HPwECwx9+6UdrEzFF+xAUNfF64MYesvxxYoULZ8jslP3
 oOszTz/g92bHWdphLm3x3OPLlKEdf2q9uZ9bTncjVFct8fHGkk4Vdl2noU7yr1dcEH4kxMXaxc
 nXE=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="132827596"
Received: from mail-bn8nam11lp2175.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.175])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 15:54:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c19AoK8m85PTORRg6ELSZ5jbqkK/RZIzfA9S0jEHuLekuWod++/qWX0y6agosl8wmijUb0/B0TwrVGZ4jzF4H0NSMCJHHLk4GPREKZg0sVezU9wXt0f8taWWEDdHxxrHC3bhy3ChogSlEj1oMrnDBqAUw+p0pO+r3qJpDBErTOjomKOWne5xLqXJ58vc6mwL0LtXWrAqQimf1VsWo5b1miqA3W/UgFWau0JFMQPg3ySpUZiTP9/t4knd8lYjS209tn7EQJNp+7jddaUnZiYMsmgDp7lExWUaKtxkdVz7sSpLkMzRVyR25VRItn1YLVPpGhlxvIxdvo2qc11JMZ4GHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PA1UOWuzfjLenXwC+59ong8v1PWsWD8rFkbbhp15w3k=;
 b=bLN/4C2lpVK/cjK+kW6lh73K5dxfF8uxQixa4vkv4ZBtkRDecZGs5/XFX7mR3oyO2r+8KZYLqxi2mXoeE/oD2BWekHKlN/GRHL/xf6wGTj+21PyVrtCLMAvndSGI0wqC+NjEFyoARgzs9JKNpmUOazI0LvLxHcxqwl2gxy+ydcV6QZk9tILovmvDk/MEfOkix709M/0cBwguvNZocBlgjDrWW7o4idtfKtIuddrmXUORTCjvW/DpLhFrzlp79ERDCwiT4hArWGwpdSLMko+Mc6yEAhUVAcw7EOiCM2YpU8F6HTH4La6KcDXojXbNevtNQyqeowLFMl3JBCkkVdQOLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PA1UOWuzfjLenXwC+59ong8v1PWsWD8rFkbbhp15w3k=;
 b=bjzGO2+3oOWrHm0yBuhbePZpuNX2mX9Gwl7yaGvh3oEZCxVQ5CJY3VfO/sPa188kukdkNTahGzNOTFl1ejBykXUg0bpKMsqBTT4IT8x/3llpHzHSWMISIffPopWEkG8Hu8Acz3xitjuo0OLib61uRh6puknzq17Z20H/9uxtiBs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6637.namprd04.prod.outlook.com (2603:10b6:208:1ef::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Fri, 13 Mar
 2020 07:54:04 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2814.018; Fri, 13 Mar 2020
 07:54:04 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>,
 Radim K <rkrcmar@redhat.com>
Subject: [PATCH v11 03/20] RISC-V: Remove N-extension related defines
Date: Fri, 13 Mar 2020 13:21:14 +0530
Message-Id: <20200313075131.69837-4-anup.patel@wdc.com>
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
 Transport; Fri, 13 Mar 2020 07:53:54 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [1.39.129.91]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a5a23e3a-9e1a-479f-15ac-08d7c723b300
X-MS-TrafficTypeDiagnostic: MN2PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB6637A4245FE2DB37183ACA6F8DFA0@MN2PR04MB6637.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:331;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(366004)(199004)(6666004)(1006002)(4326008)(8886007)(8676002)(81156014)(478600001)(7696005)(5660300002)(8936002)(36756003)(81166006)(52116002)(1076003)(44832011)(66476007)(26005)(4744005)(316002)(66946007)(956004)(55016002)(186003)(2616005)(16526019)(54906003)(2906002)(7416002)(66556008)(86362001)(110136005)(36456003)(42976004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6637;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jcm6sSM6Y3oXtMIGwi9Cu41/EF01TF4q1shsNiwqcG93kdzlH+lzvyHbNQ8U2R2TKulNm/NXkwKqcRZNClIYCGnJPf4jiBoVLkKJe64MlkGABZLglNBBNoTl0mpMsE7V3ipMpdrxcoLaGHoT/3uKQvkvMBj9IAx9xV+UYofkl4+uj+OmR5OkgnnYMEpQVlx17GdkqYliG1dgSOVvnM8ci47Ra7GOM63kxQWoZaLVNha2/Hsnazu56Ml0qBOpv+8ZuaDTmboGSv303fA7pLSnf7ctOu4Bna9RT4aSxcZmOAFA8yYT523yF/GOt9b+b71K9BrdMF41GBJPLPc3rrzRgUBXmq2bna1L8hU6QS1hrR2azzQR/3ffkP2K5yDojPQ9CzFXlXJStbkBbGXmo8SzbqTsYq1U2Hz79psHFvrT2I/CQnCid+DWwIqi0JwJzsQVKBtXketfYS4GjhgnuNDuJI3PoMO15sc3c0vv/+ZyWOyZM/hXABGMGaLjF2aZDUZ7b1LkvwA5tkDoCZaZwKIsrQ==
X-MS-Exchange-AntiSpam-MessageData: B/jZTfEvuTcG/Of1b/jlmvdEgSfqBl28F+tDrq+a0jnpEnq6xd6Lmbk1+q0UqDsHFv7QLOS1WtKd6TeAsUZnPHlqph62pVYylYYHfx6EngkEltBU981kwrTvjJBmuBW1+g3p+fqq5WHmAnoVVTLNtw==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5a23e3a-9e1a-479f-15ac-08d7c723b300
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 07:54:04.1891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bya1LNE00Z2m7yCYYaQpYhbXE9dz/Du4rvXUiSAdCrkniru2rHP7/d4ctcNB7e6ycRsSwLfwO3/CZPjCLn72GA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_005406_351358_6125E53B 
X-CRM114-Status: UNSURE (   8.68  )
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

The RISC-V N-extension is still in draft state hence remove
N-extension related defines from asm/csr.h.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/csr.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 8e18d2c64399..cec462e198ce 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -51,13 +51,10 @@
 #define CAUSE_IRQ_FLAG		(_AC(1, UL) << (__riscv_xlen - 1))
 
 /* Interrupt causes (minus the high bit) */
-#define IRQ_U_SOFT		0
 #define IRQ_S_SOFT		1
 #define IRQ_M_SOFT		3
-#define IRQ_U_TIMER		4
 #define IRQ_S_TIMER		5
 #define IRQ_M_TIMER		7
-#define IRQ_U_EXT		8
 #define IRQ_S_EXT		9
 #define IRQ_M_EXT		11
 
-- 
2.17.1


