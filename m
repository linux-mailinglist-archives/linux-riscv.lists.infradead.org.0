Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1E21F618C
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 08:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YlnEz0/qfGdSSIBe4X+trDq3j196LxWuDxb5JfIl4Wk=; b=GRAWnOv8JdE5c+PGVPjJZwgIt
	C7qRgQrqX6jhrHK4hSPgP2vh4sWuVE9r+OSd+TKsJJvG4F6x2FNA05P5QI2MDUJwC3ylw9ecV7Z5M
	baBWKWJ1Cpcnvk6SmptPNgf3nU03keK8D89yHQh9z/TO3rcgE76R4SAprN8LAOreoao63d6setdgJ
	9/LcdVIsAMgH9laYO8/QSMuF4228jiiuSIdhhLX6fpGIAqvf090lKi/rYACVgS+WRgO75ikZMguDQ
	4O27lR2awjZdH5sO5KlMgNxLmAX6KpzYmUPQc20W8JfPcoj5gpafjccWAreYWhe1nN4BBXT2lP1MC
	oN/duB3qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjGUQ-0003vg-UQ; Thu, 11 Jun 2020 06:15:02 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjGUK-0003sQ-RX
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 06:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591856096; x=1623392096;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=rwodEWhO07nN9+WYg7XaEo9/JfXjRNV+hU6q5mSAkec=;
 b=IIZtdf/e7VygK0tJ6JQknTswbuwMMCz/72JiELVF+MAhNDXxJ5+88MLn
 rpVutjR5YJHT1JoOdMN9RTXILQ0OWwpQ7hKF0jBZniMfrDPz+nxVqXRuE
 mUF7b8ZkMRGnBnLGGAYCkovha8bs1cTanOMVwrIOWR7tPX3DLvQQZXZWc
 3EcJextPCBRpHHUgb8WwVISy/AnBHQaeOLNOpF0R+5heomMEzbOleNoeH
 10Ah8FyedWae9hvPxoNK3QzRYwA+sQFbGKY8I28SHrb67HDYva36ZVkF2
 +TME8xyLPhOxWw5CKJeUvVX3JRK9y60KX6AvqJX4UC79/Ipe0mVW7CQx0 g==;
IronPort-SDR: Dbuhjf6zZcHi8xdOEtXFk6kVFNCVP2Almkb+e7Odm3fQ0IUFiFQh3x/Uv4MkCP4bG4bJCre1i+
 +vtW06kO3ST4KNKP0V0fyF6iEJJw5XnQTBdWKHGF+kZakWYS+sdqvLu0aKLirP5Gu+XsZyMwaC
 Jq/DITEuoeo0DJUrAHZ8/ZqrPIb4oV5eS2NkNEc/yS1caWeiNRIaB2arTtktvVAfwz6MdhVppJ
 7Od7Uk9zEAFtL6STPYZrcC67VhmlPfTQp28h69fUUe7JeHpwRrrlhRS5oWV5D6BoREuPw7zJ3k
 WFY=
X-IronPort-AV: E=Sophos;i="5.73,498,1583164800"; d="scan'208";a="248852988"
Received: from mail-mw2nam10lp2106.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.106])
 by ob1.hgst.iphmx.com with ESMTP; 11 Jun 2020 14:14:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9pN10Bo72y7bufDO1OTDqpAsVzGtLlev2nXhZsyMYK4PjiKD7dywtLsG+uDln0QY5GPvOndvVO323iIec3Nr/qShN1QzEsQeSWIZBS5//fF3QnJKt7FX6Ubfw/z3L6eSkY+Y71O2BibTDlf1jFyHzktcw0ZVn72kU52XOub+FUXXP7NJtwOE3PyR9NTfG09fys+z+nMr7B7xROt9tvt/d/kyseUkKwjNjy+NrCTqJJCvZ1Sr3lCEtJ+hmCsDDJ7bnej9i4f93cmv4PW0/4VerjoMI2n7Xy+Jnt+ZF9wltoEuwQLmKQ0r/5iZkDXHva4jdKBDNxtEiYNNDqaXHOvNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlnEz0/qfGdSSIBe4X+trDq3j196LxWuDxb5JfIl4Wk=;
 b=j31drOGJGdYiKwID3qdXYZhcTgSpOAt8TcdwKxrzolxCJgNHVHKPDeOAvob+N+xzFVyAW4Zg2f6FMHSGSBpSurerL5GOe5Fo51MZdQVQF3SwSy8s0DO86fPOV0dnObkomu5cHLOGQUH8wSVNi+PNZFjO13LraU4IyxsBb9LuGGrl3gy6s5IFrffx1py9Shymwyf9LgFQW+Zl4AypKqRRK4rQN9X7mqNxU23VeEj/fNgSEVTtAMG+X78axLvBWexNjrrVPctcpo5YLgPreEvzRHqQ9gW/zL5Ptv9co2q31NTUIn7UUDGM/VILe4o388T+7y/qkS/8B1knjwqbM2kIug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlnEz0/qfGdSSIBe4X+trDq3j196LxWuDxb5JfIl4Wk=;
 b=UQcom7QzN6d6zGxRXRICL4Qu/nfwjfq1UzUiB89NbAlJtfbwVYtdhvfhSYzP6jNM2bGecAMJu9urNgZsFltz4M1hffDm3U0u8PGOO7FKuXKaGnpsthh9flWk7nzxZYYOKPnmtaa6evnqe0ZRRihEnyYS097SZX0ELfNQy4jdtoo=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6332.namprd04.prod.outlook.com (2603:10b6:5:1e7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Thu, 11 Jun
 2020 06:14:55 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 06:14:55 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v8 6/6] RISC-V: Force select RISCV_INTC for CONFIG_RISCV
Date: Thu, 11 Jun 2020 11:43:50 +0530
Message-Id: <20200611061350.434293-7-anup.patel@wdc.com>
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
 15.20.3088.18 via Frontend Transport; Thu, 11 Jun 2020 06:14:49 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [122.182.246.89]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b372be74-5826-4594-892b-08d80dcec239
X-MS-TrafficTypeDiagnostic: DM6PR04MB6332:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB633282B499F6BA9837226BC58D800@DM6PR04MB6332.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WMGBt3+bfwM0cA+RBXcSA9h6x1BxGoL/T7pORuUHcR6qRKzVezTSZkrQ2ZqpDj70E3Jty6zdBjEfeMXLvLbbP6Q6B8q6k/tzpm9z/iOMEcTn4Mz2mq+t7zViBSK6CjD/jYN+5b72kXVx80jGR6CCScyx6DT9hR7uIKVDlepIGfjoUgJbg6oMotHCMHhKGMn0W54zXVRv4Dmoo2RVJvR4l7Fmu0vPC80LkAhGSn2ky3uCdqOmu+kQxbxFLxvd+WpF6YcsqlMVDxmzgGHYVPXvSWFTZ2zuEXI1HjcIr9i1VvVRdKHjdpqFbn368za36yYk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(36756003)(16526019)(4326008)(186003)(4744005)(44832011)(2616005)(55016002)(8936002)(1076003)(5660300002)(956004)(7696005)(110136005)(7416002)(478600001)(52116002)(8886007)(86362001)(316002)(6666004)(54906003)(66556008)(2906002)(8676002)(26005)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: FKmCKymsTUbS8gAeiCq0S+o9s5d7h+xgNZvX+GnR8GdvHRxV+nwlaywNs7V1nQFDB+T71PmIZlFQFxpy7/gmSCGX69vOV2TkS7fH+5zEWcdPL6kZT1CfpWh+VLaOhZdh5Hr5LShrcKfmC4C89IiMMDrXM9H+i1t4h+yoXa8qdKvA006GDpj1Veh/sWsy08K9FwXqXjgMzAsDyjO3OvpzjvCBReIEpWqKS+x25imT85ST+TkiP2uK1NRLUE4bFFhrdKMHgP5+ilpobUOgvIpZnngegoD/FFEC4ENhAXjZzrrFRjuXniN07oGioVzUQTgSB4JUGhmA6CIJxocMdkhJ7c6QgnbfRme7LgnOX/zW0JwGh8XGqKo8qaznPJj5jjHj9xSkZDSWH3FebIQmNJW2zXvT9rbs+xAX9K1ohvMPucQLSxSUnjYAP9x/xR0neYOf8ActS5pg4oun+38Ak2rc4Vfj1DtP6XI36qEEnp61hPE=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b372be74-5826-4594-892b-08d80dcec239
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 06:14:55.0496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NIVgotcHe9wPhEvfIdbotLjImmoDZhhTdgKi1ooo3tF2KPysXZFqck2JZH7pMXqer60KMaGFEk19f0TUy1/Kvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_231456_912965_CE90DE50 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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


