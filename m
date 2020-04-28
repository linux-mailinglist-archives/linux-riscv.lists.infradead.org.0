Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30891BBC3A
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Apr 2020 13:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OYTuzDsYVXlx1KZz3pNkMeyEk60Msi5G8+1GvtTBjLU=; b=Iuo1nfMscfnojrZ83NQPet0d2
	n4DDaBQDjridivMtGxX6ofWJxy/GAH0taGBl2vM00C2a4Nu9anjXktBetVv+a0Nwg3nODOxGytNLV
	LAiFmxm+iE+Yk+M2SRKZzMfXcsa+eUIgXKsCnCwqC7hia7bRsd2yraWBa09DLvCDE4eiJsq2BnLL7
	dm/TmNxH5X5e/PrHEwE5ENT7S81bLVS+AdR+VLPamTVXrMTUy1cDeQihDE7GR2uKXJBfbRvPej0m8
	VhsorbZYbR4odLeksyjBZAXrw5ANHg028lblK9RFPwLVgNNX7nAtdAorvUW45p4CcszerHhJJgthE
	0ZGzFt3Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOEn-0003QL-I0; Tue, 28 Apr 2020 11:17:17 +0000
Received: from mail-eopbgr750070.outbound.protection.outlook.com
 ([40.107.75.70] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOEc-00035K-Sn
 for linux-riscv@lists.infradead.org; Tue, 28 Apr 2020 11:17:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NqCh57bgCWpcmSpZnhIiLefaUSOfSDtkn1K1sWklUO+25Vxmko4aV9NsAqMHkSLpihkJpORHhjq/a8+1thfO8S5V0QsFqA1XWJ11L4n4gnbu6k1A1a+AePbXcpRzs9CDCrJ4dAELauNq52pAr/hmWpFXs1rpuLYwxJzAhGDJZn3PyjR9SJ5H2/hLa/Uo3LbO8F+OekCV4IvGja6oD7d1LGyHSHDfuu0gbKcgmUpvoBd5W4LU5f78wjQ+fP4dYOXixUz4U/HNaDrrx/NIJa3LoFALq6GxqNxUnfdxVskqNPEO9Z3JCLtvJ35rFoC1Wt/AHQH//1Hcwz56YnUqEdAjTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OYTuzDsYVXlx1KZz3pNkMeyEk60Msi5G8+1GvtTBjLU=;
 b=DmHnjjKVU/DDxrvvjm/rJE3MX8vwPvY1UUSapvQ1Exp8uwwBAztuu2P/2InH8kcif8h8jIDYR/NZBWBXdH7mTM0m999rDsu6XZzW7zpgiASwImoBI/EWeU+1qHp8T65qZ0M+JdJmF15KJmm5tee6/wDdX+plBiicqr+3TnzfsSY4Hsg3PfXYuVtEYzAdgWwhZxME4pD+G97MzKqiSF4OekmY8+RTbbY2qBLVblSHZCzY4WclSRAANDxA+IRwLme7YY4D4BdJdCnScB4ROsepRmRUafpPDnJmjUXm08ualuzPaaIu3dVHeGPtn24EC1zxwZUtzrOK1B7zUzEVKjZH2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OYTuzDsYVXlx1KZz3pNkMeyEk60Msi5G8+1GvtTBjLU=;
 b=cJR4Eiyhb3OYGqdG/mLs5Mgnk929ywsbgDq8Sgy45f80lBX7UCJrd9n7nXTnwEoiPM5zKminOd5xJxKS3XB2+7Qt0rdGBsrHbHZMb8DLQHV7RztdY2ms0+y3OOonyA6k2wpS81gtIzHlTEPRvwH7Rh/7G6mYTMGCCBEUcMBHhxg=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=sifive.com; 
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2737.namprd13.prod.outlook.com (2603:10b6:408:88::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.12; Tue, 28 Apr
 2020 11:17:05 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2958.014; Tue, 28 Apr 2020
 11:17:05 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 robh+dt@kernel.org
Subject: [RFC PATCH 2/4] dts: phy: add GPIO number and active state used for
 phy reset
Date: Tue, 28 Apr 2020 04:16:46 -0700
Message-Id: <1588072608-7747-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588072608-7747-1-git-send-email-sagar.kadam@sifive.com>
References: <1588072608-7747-1-git-send-email-sagar.kadam@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR13CA0032.namprd13.prod.outlook.com
 (2603:10b6:a03:180::45) To BN8PR13MB2611.namprd13.prod.outlook.com
 (2603:10b6:408:81::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BY5PR13CA0032.namprd13.prod.outlook.com (2603:10b6:a03:180::45) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2958.9 via Frontend
 Transport; Tue, 28 Apr 2020 11:17:04 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d93d9dbf-1775-48e4-1a3e-08d7eb65ae6c
X-MS-TrafficTypeDiagnostic: BN8PR13MB2737:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB273712848168D1B68A34E4EC99AC0@BN8PR13MB2737.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-Forefront-PRVS: 0387D64A71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(376002)(39850400004)(366004)(136003)(186003)(2616005)(52116002)(16526019)(7696005)(2906002)(86362001)(36756003)(26005)(107886003)(4326008)(5660300002)(66946007)(81156014)(4744005)(956004)(66476007)(6666004)(66556008)(478600001)(316002)(8676002)(6486002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zOfLtTb+be4cla2C1rg38W22iJXx6d7gzTx7O8Eh5HgZaPdBFHIFRtC2WMExzOyipWibHRzNF7tW/8DEMzssEzbAMciiLSKGnn1xGJZYusfmGcKbs41QMqVkZXh2A02yuQxvI6CfOYQfSWs6C4WtqtHuxVds2qhG1vPvTqSRNtkfacheSPcp+8mDU9fJquuI8/19fDVF2K1zYKBF2JjwEN2xn6mpR2AVm0N+JdnyWtkelLXHq+JJSqWzK0r+1AfOOwhxSIwbgvn+i/iAvscRjySkpBf11uBzKUHuPhec3xlLNf0aPZAFI6+fn3HseaIhNMuOCkE6k9mrb40uEHCMJOV6YGIgRYWD6a3FJJ0Ku4um8Kk6H/F2XMIR6pP/1f8gnAHJ+hYAmcb0SbWyrxE4u6c3ta7XaLUpmjjCoh+Q8X4NFxsgFng4LGYdmj98vmcE
X-MS-Exchange-AntiSpam-MessageData: u/g+DJTOebmOhFmek37fjUlKWFn7EVBReffp4//HKLSSokx5bA53uxLR+oL0L8Pnn2J6lJXNj1YExGijGhMJalFEE817sY5NskFA+E9cflCEOEvV+N5ejijRliLbxnjyE5/oPxpPpQkk5MPVAXYBmFc4AeIWWlV/qlBhWvP4uZ5e4VBuuc8RN6W5/2R3dLCBQ4nV3I219gLOJUXl8mYcOOgNPdzDPCGhwY1hxhJMAFsJPz1kG99Pd5hGFmlxEMeIVtHy/T5/FHJ7Jaj2zKLW/vVjTMokB5DAomqeTMBuE+tFHUIAyC32e9/9HcgLkWiczfRiiphLYVkxfvLNnIMuuEQ2+EU05ygOUq/1S5HMknbqeiGWMVUYYG4F387YjuzyvEW7JaKBxxKfM5xpxGsHXLY7SmjAj1+At5tltZTGt015lDv2VYq9DrldS+iSLTm6upBSBZ9QomnvmxLnofvU9aWNVYCtO8Fel0fvj3HLwh3EDhui7wpp47qHslonOyFomTZU56kU3oUJc85EEFU6lM3mGWxHZpeKsEt08VO7wvrf5ReSy6jKrEbJrGFKTT1sDWvJV5ZzD1sFHIuIRaFPUD6DYlVjfSQYm7ZNJrxC6Gu3Y/tFUvpGh/3zb2rDKf0Rhx9l/+2vWyvB9jOWJaSE+jNxRBPpYjL2GaSbgQzu0rAbklVvIn26T1YpQkk000aC6NbYdp720QeBw1Ouf1NB5Kt0Fp+6fdMglFR+dz0WM+SFslh4aE3gmDHXqV26Q/h9swyPhs8N4/7IOUHd5fFPuZfhwAqe/trT4kqP/i+2eEo=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d93d9dbf-1775-48e4-1a3e-08d7eb65ae6c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 11:17:04.9407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N7ohC9WWmrQxjwrg/d0H2BYt3zBBNudFxbOjvxvwOu+jYvhAqYsxf6/IJJKjyQ5l6ROVJ9JjfkDpv+nH3nXSQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2737
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_041706_959612_96562EA1 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.70 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: atish.patra@wdc.com, devicetree@vger.kernel.org, palmer@dabbelt.com,
 Sagar Shrikant Kadam <sagar.kadam@sifive.com>, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The GEMGXL_RST line on HiFive Unleashed is pulled low and is
using GPIO number 12. Add these reset-gpio details to dt-node
using which the linux phylib can reset the phy.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 60846e8..24d75a1 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -90,6 +90,7 @@
 	phy0: ethernet-phy@0 {
 		compatible = "ethernet-phy-id0007.0771";
 		reg = <0>;
+		reset-gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
 	};
 };
 
-- 
2.7.4


