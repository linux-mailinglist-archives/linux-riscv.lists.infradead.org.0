Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310B81BBC3C
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Apr 2020 13:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=60vPmv8RA5MlmBbtLlKW4Y/a5Zxl3G7WVKbBwMntZTk=; b=PUhjLynnLMZDF9HAtkLTZ7Y1O
	HwFFYHNIyonqGZSoGQKxJTMc0GvPmv3+oxNCNDmKnUM7vJxFKi8fILP1l5u2p12md6WRX7i4KxUyw
	Fzkm+J81xo5htVKqaMD+q8NEufYlIfQ93c/vspkE6fkZmvzEcQe9k1lb3CqG66zZWBZ0fJItQsw76
	qZ3l8g6Hvm790aQqaY6dxi2xkF4PVkbFG468HckZIwQdvag8a472XG2KQrJj8p599jGafj+KZ6TDH
	8wGQkzVcuGDUZCfjU91/vDogR2Mr9rdC568a1xeiAnR9Pe+I9zOY2NvzTdhvUCE3xVeMYs0Ualaqd
	orLWVVGWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOEp-0003WN-It; Tue, 28 Apr 2020 11:17:19 +0000
Received: from mail-eopbgr750079.outbound.protection.outlook.com
 ([40.107.75.79] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOEf-0003AH-IK
 for linux-riscv@lists.infradead.org; Tue, 28 Apr 2020 11:17:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VBQ7M5tPyWE++YtbAqXO+HJ5a6QJPt/YkWtr+McWSAphYMQFRflmt+Fx1ArhfT7Xl9WBRoyxWNlLuRglx45z25rKKAkdxyR3nO9HHUERVmW80DYjuncOMFCJETF3eGItNhOqXAYhQyFPkSd5GoCChqFPwq7ndzp+EWFuCr9GnK0U8gZ/rfymtFZTLJBrmqCe3p+c80L71RPyeDCmrbmfvcHoZG3I1oFG+9WRbZhekZD+vcKxyJl7Tdrj5geGRGetH0ptK8SfwHnMD7oIigui/aygIuGVaQAo2Fra7XC9YfHX1M/hDCguuu6InAGMPybZ6gFIrlRDFiWzko2BhIOelQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60vPmv8RA5MlmBbtLlKW4Y/a5Zxl3G7WVKbBwMntZTk=;
 b=JzYT0hqggBFFGQYhSQ+4IV4o9A7t6eqXra8nlS6Gr41dGeG/AVzpRezBxHES9UpnMnMZOp/un/VDrHqUOkNQh8G//Ej/hxcM5wUdIayWgajREPpXn0dc6/ctdTYDtjM+AauDOQq8M3tMte8uno9T0EB6qlfKy/HZOVsJE0A7s4lkhBAUOmrS8tNRcKk0oECBrTz7n5t1pwnNNHeUduSZ23GBSUzci8K3rFBLw60SBc7wWSDKydKoBULkxE88ZJyN8Fm0dqltIWb0QVNE3ift6QcCgQBEqsXzHxri0UZ2tnY9ZXTPeJ5GI5V/9sRAfJn8mmua60bafPWeh8QWfSUdew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60vPmv8RA5MlmBbtLlKW4Y/a5Zxl3G7WVKbBwMntZTk=;
 b=kLEuytKSdGno1Mu1rdFG1gkapo2VOMrOwQkUvgDfKRJCP2c6O2nvVPl0x8XWP1OArB4vROR+D9xaF990C70PvLVsF6Gqk3hlHgROU9Axp9u7EDlGB9hpu1K3X9cVBt69nrDaw4tna0tCtEvaPfzv+rlyuCvjCRxt2Kn35hT7JIw=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=sifive.com; 
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2737.namprd13.prod.outlook.com (2603:10b6:408:88::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.12; Tue, 28 Apr
 2020 11:17:08 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2958.014; Tue, 28 Apr 2020
 11:17:08 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 robh+dt@kernel.org
Subject: [RFC PATCH 3/4] riscv: defconfig: enable gpio support for HiFive
 Unleashed
Date: Tue, 28 Apr 2020 04:16:47 -0700
Message-Id: <1588072608-7747-4-git-send-email-sagar.kadam@sifive.com>
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
 Transport; Tue, 28 Apr 2020 11:17:07 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e348bec6-dc70-4c61-c2eb-08d7eb65b035
X-MS-TrafficTypeDiagnostic: BN8PR13MB2737:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB2737143D43454EB81327841899AC0@BN8PR13MB2737.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1332;
X-Forefront-PRVS: 0387D64A71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(346002)(396003)(376002)(39850400004)(366004)(136003)(186003)(2616005)(52116002)(16526019)(7696005)(2906002)(86362001)(36756003)(26005)(107886003)(4326008)(5660300002)(66946007)(81156014)(4744005)(956004)(66476007)(6666004)(66556008)(478600001)(316002)(8676002)(6486002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GRCibPEIIakCrrcDNP40xD+jJRFWkMkVVjVsA3qsIHiaaZE681xXfodMowcWt9vtZBeuwuebJXAwPl8SO/ZZk4n1iYDDr99pQsYUh3KfDt6wYQqTP5cyM4PJJoIUw8bPGcGkfB84pZCevuc8tDPXLND9mh4BNcZC5oarz9dJhMI4+eEncq1aePO8+EMw9gDzXZ6WILtpgN0i6foWI3EyywkQSC5bRhxp8YA1KNXRSpZQx78XsK0kAhBnccMrkKdVxzsMwitUaIntX+JY75vSpfpDLBiwAlNG6wgBckNnkwVDOnHo0c/fmS1QK0KJaFHW5KLibnExWKAwUUDZWgPJZH1Z0n8B6BbX1quzDan44AhHY7fEl+c1aY/6pNM2Geq9cxE9Griug6O/TL2TAqntliyqwTey5mEF/yXIAc+iI935T6vD6pM+Etp+Pju7VOFX
X-MS-Exchange-AntiSpam-MessageData: nbZjbuhYKtamFFIvkSrhnQY6vHGXmpRYxLe0iALvDs3/Z7Fyt87nBqRs2sI8tLLejsssi1ML+HpTbCjyAyVd7F95szjbVsWG5GqhrJmiZZIgFt/awXIWu6PvAB0zyYo7pv9AoKWfpP70m+xWU6V76oYvEccQvSaGfdwQk1j9WXeqZ3zLk8yLpfOcJruCuaVy7mru4YtyhZWUGSnpe6x8AthAYLJqRcqd9gM0+55cCsizzkX8SslRvinHFi/D3MlCFpeUSoVmjOt134O1sgUfP4nIjKCX0XVwxN3B9ajYkQvj4lHs5ZbncqyQEUK6FL27V11AGu+cEImX0sgoILY4/bPPxyuJxElqZEpwQyw6x+Z0LAjmWucM5/NWLUzoUysaDXzPyBxCS+4d4THPjzdUkqG2izNanx1zS9lC6iF78eKKEcNbQytg1d0UwtpG4whwWd/WjeDCVw95WqW/o7cujSoJ+CD4QKvue0Jg0M0TEx4bI1gOP9hFkFKVwb3sidFLJmSHGSYa8JuGixXgSjQXkYGJSTFtCzwTvtGkxoZPPIPyKbQJfITIaEC9CafaRvTejixjNkBcfVkeeVjDWQ4B3J8YiZXVPPHYoNad6Gri15d6r6eUc2zH4iyxtdThWh8Xfb9PbY1DikTVq8oGpUA4ODccrz9WrxWhveDoIUIgJ/Z9I5iIiB2JicNd7Ra104433JtufxC0LrnBuf/GyZLsPXYKTRmBnnR8Ttf8tIK8HqrrzkbNBDl/7kbbiD3PR5zqvMgXxM8LcmqiZx/OzVvf+i2Xob9dMh7/k6P8e1A5VVY=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e348bec6-dc70-4c61-c2eb-08d7eb65b035
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 11:17:07.9070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hBPQEqof97dUPG0LrkThnQao6gHxKTosPo8o7XOkSvzteDQ9sgISqRzjDoxtc8/pxAb5GGntwqFqOV8T6T7aBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2737
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_041709_608329_427DA3B3 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.79 listed in wl.mailspike.net]
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

Ethernet phy VSC8541-01 on HiFive Unleashed has its reset line
connected to a gpio, so enable GPIO driver's required to reset
the phy.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 arch/riscv/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 4da4886..20c38b59 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -63,6 +63,8 @@ CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_SPI=y
 CONFIG_SPI_SIFIVE=y
+CONFIG_GPIOLIB=y
+CONFIG_GPIO_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_POWER_RESET=y
 CONFIG_DRM=y
-- 
2.7.4


