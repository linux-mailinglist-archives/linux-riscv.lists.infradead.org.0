Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AC01BBC39
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Apr 2020 13:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=auhdIpVykeScLQHtqjvP+FzHVlmWZFx4SFd13kL/vhY=; b=fmMTTloFokMcatGuYEKPKbiiY
	DqEjBX1rz3Lh0HJ9qRooeZksCRBlXaokDW/DUVT5ThuE2QxR1acdEmjg62WA0lfXJbbwnO5pTXMFA
	UCW+tkZ4ZOBYv/XmJpglw8I9PdXvfArTdn01AR7Vs3eLEuom4t7vF5Lzy+YErLszOvGM+wRzJCj3E
	BCzx/xg/FYCfSOTFj1wgIv+y/UN6fJ9PzK2W9P2gKT/DfP9pMEeJuxZDT4OBbsZRv3tTQXxMtIkcU
	qJsc4L0+FoyeBZwj03wckVniSEpXL7c1nqbwD106SHFNFFyo+YwWNLNLaOAurqg6JXN/zHADsJU7I
	jO3te9DbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOEk-0003FV-4n; Tue, 28 Apr 2020 11:17:14 +0000
Received: from mail-eopbgr750070.outbound.protection.outlook.com
 ([40.107.75.70] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOEb-00035K-9n
 for linux-riscv@lists.infradead.org; Tue, 28 Apr 2020 11:17:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mXhg+F+mpTeJomIczh/pkP4EnUDLycN9QKQG2YsTgTs5JB6HnU0v36rysyfNYoBVk6aXY94RwaNi8GoPiwKK5JdKL7X/yBCF4dS48IVZ9WpYuaa+dtu787VLjsS0a68y1bPTRXAjD7gpKxSVy7iCGp8i98pgSoRktBUoxDnwkAarTryZlH3uSgTlydMonCr5tLHag3+xB030I3DATOIgd47SYBfqYXudNawmc7ekjbnYiCexnoQuISAgbygiXm5vVuFyO4K2UC4AAXJ9Nv7w4kdQY60t2Cp6F//Hh1m67woBt7r0EugCzULFyUox8EWGSYo0GBAyd9okdp5fSKeXyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auhdIpVykeScLQHtqjvP+FzHVlmWZFx4SFd13kL/vhY=;
 b=bCQ/oO+R+GV+NTKXIYk4JgNXhNP+B9QAIRC2X4PZs5BAXhT+8KN0gKnQxw4p5P8nKwhGWrjq+rhiCDFfRu9RUQXCQDcEjI1kiivOnO+5W61WRfNPJZ9acBG7jlIP8xQLCxIywvh8AdWUxXBFc/CWesWYcjH08iK9bb6Gjp3xt9+uqkYLoiuBSkL9zUtfimX/f7hdwOJ2cWXKbktlupXGji5F9kxYen123DRvW78MbUFiRezPzYzZkp+wsmWZrcWJGQz6rQ7YMX8W7D8FcX/p5sRUg7s8+h3r2yI6U43zXEXp5LNyR0Sg6JT/BgENJzjuO0Iz3CQ9NEHaQPE9x9xWig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auhdIpVykeScLQHtqjvP+FzHVlmWZFx4SFd13kL/vhY=;
 b=c9D/B0JkTpXD1hALdVyz8Iv7Mn+tlubBN8QSS+NvFQ4HOrCJhAiDzgIe6/gNncEepdzZODxxS3sL1i1Di3KtvfJbwXNSFjPihmeq9hxtnW95tSkoMNES1vqzBStvtxHpq0ZbZ87G/BDax6D72SWQl+fZJddg5hfHW+/992Ry/+w=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=sifive.com; 
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2737.namprd13.prod.outlook.com (2603:10b6:408:88::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.12; Tue, 28 Apr
 2020 11:17:02 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2958.014; Tue, 28 Apr 2020
 11:17:02 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 robh+dt@kernel.org
Subject: [RFC PATCH 1/4] dts: phy: fix missing mdio device and probe failure
 of vsc8541-01 device
Date: Tue, 28 Apr 2020 04:16:45 -0700
Message-Id: <1588072608-7747-2-git-send-email-sagar.kadam@sifive.com>
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
 Transport; Tue, 28 Apr 2020 11:17:01 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eb252641-fbbc-4fb9-6fe9-08d7eb65acfa
X-MS-TrafficTypeDiagnostic: BN8PR13MB2737:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB2737048600F9D0C836C1956299AC0@BN8PR13MB2737.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0387D64A71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(376002)(39850400004)(366004)(136003)(186003)(2616005)(52116002)(16526019)(7696005)(2906002)(86362001)(36756003)(26005)(107886003)(4326008)(5660300002)(66946007)(81156014)(956004)(66476007)(6666004)(66556008)(478600001)(966005)(316002)(8676002)(6486002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: //D/XayTLSDemUzBOJLxVPIWgoJ6BZ/Xyn+sGOHuyD9B/QMePm9S214HXy44RzSf0VvL4k1PNo6VKPm0hLnWHGaOKYDHn4zupXeQHqXSEaBb9jXAVYmDSSxyLXybH8jUM56hdGMPwp+rMcjDpa2eyhgBjq4VwY+KmgMNVRw5ERpwJIIC/JfDDUW2zsjNbgi9MdV79M0OmOmKklnADO/da84TbQjd9kELARqoEGA0PUw15BcYNBZvEjttP9s0PcKNPAvbIZ2AamcyrfN/FfvqycY/nV1S2ggZQOPnu47ThfH0xcwenWVVkoK0ir8PwSU0KSYzVBgYkAOD9RuUX0Pr2tfqjPjcmjhYSjY6dfl3iO0KTiMATrpxL6R07gb6xAldH+tV5kI66sR3HEq25FZBMWzOz/7rN+VMXQJ9XMo6mrp3Hixk1AdPJRCRcP1SCmw1f5y0ZtFRkg9N7Ij/uxd0b0/WgxeYVap7OvXgLVgNUOBLpUtRHdTM3vRZoI4h7pSrkGUqDDOjzm1Vgmc+InHRvA==
X-MS-Exchange-AntiSpam-MessageData: FoqMXRzdDTPwVNUIdVG2sjEZH+uI1iTYPp8xSPzgfw6jnE0QCnKptDssXqRrrq7pcpTeWiC3/ffVLOBrp38whKd69rNDM/b+i34APuN49Jzo+4HEeji1a4ociF/WUKFoOOVWSAqvoXihlbQVshBocJ4i6vMGlLA+15yuvNzf6DXPQgsLcyvejJAv8hdj6YZPS1VYaKQVlkfvElO2zdlF0fGed/P4L7EPYlqWkeLSGodBfs0YBmxRYmNiiBNNA/unzmHQg6PRxhX1vfuu1olpVbKkjH5KJ0Omuq0445CG9Pl8LvdInYO4AFqM79Nb3Pa46LaDgFALl30KRyY3MAkuRGXFfGy9u7xOzkApqCTNEY4gm7pOeQHxr0XOu8ntAHGppF2WW3N23Ym7svVtvnWUH49BC2ZSyy+ZgKBSeCWvK3MoNHZngJ2L5ti1fevD1kE7z0X0jhtOCShxm1EAettz7lxD55NG3xyZF2ilhjy+cACp+jRyQHgg6aZRwV7IG3QqMOViR1e4o9GQyi/5h8X2/YKXaam/lKuQFk4aNUXG8eiNsSU/3RSKUWsOMxcEm+Rr1V1LHVvNrFKNqydX+CQjFVWdF2Qf2EAa/mDHbd+oHw9Kh82RHdb18aN4OACVueBq9AOqZeShTz3jsPGA/Tkb7Fc4RCjERmshcUshrjWqdqvO8pCFIVOgnmi5oJQjW8aiHj7ucomRqk/wiLIS0NNIvd1M5TqW+ZwN0sjteO9Z+6VPpKxemnnKmPmST+FxiNW16Gj7sGM+g3oHVqPr0DCmqNjgP1qQfh7r4JnfkK8e2dQ=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb252641-fbbc-4fb9-6fe9-08d7eb65acfa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 11:17:02.4021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0wZCANYvqIljp+uIDpCpvvUu0FTwOIw6CGRzFVcm5iYqY/+BNniMor03Bu71zPIMKD7hCvi5mf8b3OSht5YJpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2737
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_041705_339854_EE106D65 
X-CRM114-Status: GOOD (  10.92  )
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

HiFive unleashed A00 board has VSC8541-01 ethernet phy, this device is
identified as a Revision B device as described in device identification
registers. In order to use this phy in the unmanaged mode, it requires
a specific reset sequence of logical 0-1-0-1 transition on the NRESET pin
as documented here [1].

Currently, the bootloader (fsbl) takes care of the phy reset. If due to
some reason the phy device hasn't received the reset by the prior stages
before the linux macb driver comes into the picture, the MACB mii bus gets
probed but the mdio scan fails and is not even able to read the phy ID
registers. It gives an error message:

"libphy: MACB_mii_bus: probed
mdio_bus 10090000.ethernet-ffffffff: MDIO device at address 0 is missing."

Thus adding the device OUI (Organizationally Unique Identifier) to the phy
device node helps to probe the phy device.

[1]: VSC8541-01 datasheet:
https://www.mouser.com/ds/2/523/Microsemi_VSC8541-01_Datasheet_10496_V40-1148034.pdf

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 4a2729f..60846e8 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -88,6 +88,7 @@
 	phy-mode = "gmii";
 	phy-handle = <&phy0>;
 	phy0: ethernet-phy@0 {
+		compatible = "ethernet-phy-id0007.0771";
 		reg = <0>;
 	};
 };
-- 
2.7.4


