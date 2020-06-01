Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053B81EA0BB
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YlnEz0/qfGdSSIBe4X+trDq3j196LxWuDxb5JfIl4Wk=; b=szN/dah5fIoLO6u1ielU5fP2J
	mL93o187KeXLL1NcD5fav1eM26Lk2yqGezpHTeNtbEeYEKf2uZAUHXJp30hcTOMvW0R8sZQFhC6vc
	QPWCytMz0l5iNQWHH5wJeUo7eNXGZ1Sr4VMQmKTIeLzifC0p2pN0N9Ubc/Az0a9+4V8p/kxD/gNX+
	EIltkyM7aB+detSU0ZJAirhJTABvHFYVLz/04ewuQ979e0nUcxWvLpC0McAUw2hKQqLBpCZ0k48pj
	gIoPWiou7/RSBgwhTiAgYi2AJExxgCYxh6huq7KKJTDmUiosJcoP6Kq6ZWE+sLnkOPLO7u4TnCIqs
	vWcZIqv+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgYj-00007P-JN; Mon, 01 Jun 2020 09:16:41 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgYd-0008Pq-Mc
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591002996; x=1622538996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=rwodEWhO07nN9+WYg7XaEo9/JfXjRNV+hU6q5mSAkec=;
 b=NWWTXPxxVowM5WSHeoK6K7Sl2VkcKvRuXDKhjCJxxQddUd5K6+ao1nXn
 piXc6MK8xJFNvuV0AmexFOIQ86oG8pyn+kn0uNJvICmqKIn1RtDd87STS
 oQM2ykY7GY2bxk1vUJiXNznCqwMy86+qY1zLzf5NyVuGw7zhreGSX7PXB
 KkEh7hWn0duzTExMe3V9nN9PH9jYMFvm/Zhgm8ksztffGLRFelGrOEA3w
 YZludLRHJXguXy+ffCYBM14fixzibn/I0wgVS6gySyDB5mnuj9UL88qFb
 33MbsEarYLHetQvKRXUVhIvmLiH4yW9RWI2R/AuLcLIHVofmJ7WpibAXr w==;
IronPort-SDR: 81/HHQet/c1POuQh0iNWMGpjOdLAfdxqqjbueF3+PPqdwg3viNj5Plz0mbmzCd6OEXkpNom3Yg
 Q6KADR+Xp8BcYaQV4wQo1tYZBn3OMHPej9tRMI2x42JzghVX/6crBA/ilr2JUXAccLqMeD3Mb1
 uH3E/3LCCWLbgxI4vIYM/8DNaYFz596UhprvEeMV7OviFUzy9yDIAD8YpeFsf/vG2dh32FJOYf
 ZExLv8VY8AgTkznVI5O783fK7HyFWoAYw4ZzgKr1XuSIPhLM6kcarcEryHBK80PpO1rXjzF3dR
 1NY=
X-IronPort-AV: E=Sophos;i="5.73,460,1583164800"; d="scan'208";a="139258663"
Received: from mail-sn1nam04lp2053.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.53])
 by ob1.hgst.iphmx.com with ESMTP; 01 Jun 2020 17:16:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ggQ+NvjRrT//jAYSH7HUSpluIuztJCjNKkycGsxMdOMcvT1k2uSADmNnGO3fFIjU7AJQjl9dM5ghoi7cH/C4RcM+DShgL3tephKL8Nonn2r38iar+c02ILruacyjBeqSjNB8rt3qxui1bo4/3cXfvLUBRqukPkmaRpr0GEIihdv28/H3KdPvOilsrqPz20gefn/D2FQtjvXO7WXo6sKkXNfIkxnriMAWM/QFeu3348fQCh6OQNpGczF1eAkM0RJA59ZAxNAA26+SoIvopaPPrh71mMnrAGouSCXhmJ7QxB+c48tLfPPn1CQBTfPbFgoGubZ0UJ4Sa/Tq3oFyAi1Yeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlnEz0/qfGdSSIBe4X+trDq3j196LxWuDxb5JfIl4Wk=;
 b=aydGh1Qr4cdAvX7iDDBLpYyWTES5+joe/KjVA6q1We5cqx7B5LyhmRhUqOsc9RAggqoO769PN3UGKId0OISwfME9h7b0lm3ZXMlerwtCRJSfbAlLSrPQeSt81KgTP8cW2sgz1bRFGuu40dXOsClG/EfwWRkxZn8j3V3SpS0ziqzvZWz7uT7q0qqeE0S6F/epz78NY1QjqbC/1ETJwMSggVNRVkqAFph3PjELBOOzeKMqxo8nnPIGZCVota28tIxHpeIvjY7pRM2IPDzxfGr+Pd3mXX+7/LdZlNMmvTi7WDlP7Zsi8OWxRqkk+FQVqKSlZpGfyc+a9Ne9pF40+SseDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlnEz0/qfGdSSIBe4X+trDq3j196LxWuDxb5JfIl4Wk=;
 b=FrgSpl8SB7QXPS3t2YHdwgCQposil/nh6KyIbV+99IxCPPRxjj7UhvWmfvxnAhlk9QnQi4cykCAHSmamhEgXc9K90qSqdG5SOvvv6LIYK1pj5pbfvCV63+rdRb2CtX1kejHZYFTy5YKOpLxIbcEJYwhobiFHf5kpSe+IhEWOSq8=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6955.namprd04.prod.outlook.com (2603:10b6:5:240::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 09:16:34 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 09:16:34 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v7 6/6] RISC-V: Force select RISCV_INTC for CONFIG_RISCV
Date: Mon,  1 Jun 2020 14:45:43 +0530
Message-Id: <20200601091543.943678-7-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200601091543.943678-1-anup.patel@wdc.com>
References: <20200601091543.943678-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:21::26) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.23.166) by
 MA1PR0101CA0016.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:21::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Mon, 1 Jun 2020 09:16:29 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.23.166]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ab77ed26-49d6-4e1c-3131-08d8060c7a63
X-MS-TrafficTypeDiagnostic: DM6PR04MB6955:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB6955202286CE284CDB41524E8D8A0@DM6PR04MB6955.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eUQJ+syZX8y2ppbDm7wBc1+nYLVj3FJb7Fgq0w4eZnYie4OdQ1TN9Vq0YwILGKVUN/IDsew+zLea6MVejQiF12P0V75G4jjJm5TzjpzwvASDMurE3a8KHPqiOejo5jocprN1iuMxqKKMkj9FBuH+ssGdCA+/hfqy515WjR0jT/XgsfKHawikkBB08ISOIJ5NBe6USmulvlVQ5NX+KHRAciZ/w0qSNFtx9LxqRITk+ivphYtOpZNAyJjmMXFFob+/CnL498V9U4BT9fTSdBge/0UyAI5HKLk3+E8vKvod9uENgNJ8bajFt8TLbFzl5U9g
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(4744005)(2906002)(8676002)(5660300002)(956004)(2616005)(44832011)(7416002)(1076003)(55236004)(16526019)(55016002)(86362001)(186003)(66476007)(66556008)(66946007)(8936002)(26005)(6666004)(7696005)(4326008)(110136005)(1006002)(316002)(8886007)(478600001)(36756003)(52116002)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: rHtpfbmgG4xPLpeB1K90zby1flta0bVua//NqcOZvLIvhS1vnpasGvxxafQFFqsLRvSY6dwd0w7HMbu35lUjV+DxaidYNqiWDd7K1XH9snhj85AZnYsJWrk+0Hc3Faoi+LRe2TpwxDur86kAGumwbzuQDA5j8XYWiEdMweDvDjb5RsdH5bFRmhlXAFGRV3WGJGn0nL8JErfsn3GFHXDrYymFvaPXznKU9gSQ2mlJg5LwNfl6TeSMF2CmOHfLbQqXHryDDrkWge2kDc36aqufJ1Oa0l9+F+H2dd7QGm4H6Vps62k8BIeVOc/xAgASTQdEdigYHe4omgCeqNZai8mKjH3656YIs4zyyBQazGa+UzzuxyJgaF+IMqInK9sgaJfENDs06sLnmyuPm8cUEP0lRTHl3QVNRgcua56WxY9mY5QNOE7KZbMqwswotUf1cVaIU2wzIileNqu/KJLxssUsQvKdZYVLzBIYVLR9KpDXE7w=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab77ed26-49d6-4e1c-3131-08d8060c7a63
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 09:16:33.9957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4V4rtjLNj75EeIWP8v2g6dS+NXZunLuM4fSx9gsf1qdUvWsGv9+6jYoPc4cQXuFls9StS6jk8giERFl1pzYdsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021635_773362_FDC825F4 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
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


