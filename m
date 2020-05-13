Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A291D169A
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 15:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=60vPmv8RA5MlmBbtLlKW4Y/a5Zxl3G7WVKbBwMntZTk=; b=CfzISOZYY0Y/o2JnjivjCtAOQ
	U7ji4MO6wMCOPD2rf3OPUQ8G976wFtCcC2rChB3F+MHeErun3Gu3zjlhoDhuA6j9UAnTr/SPlTG7x
	NV8LMFbteCHul52A2r242lBwAc8CbvEVSEfckMyHzggpdAQUwXQeyphk4Yx6HKRlMT8FJJWUdqdXK
	Ab54LTvJ0CxwM3TcwgbI2vAqxvp/92qJMCvwjr34FODZPTwp7rQpD9ooddP+jnjkw7CoXCx0PTqZz
	8O7kicru+iCcnH203qhroDGR18xbhEligOqxxk9d98jtpmpe5AGV9NgCJg80ixTjCvZ1nWa9zS14l
	fEEot/77g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrtA-0003Cz-7G; Wed, 13 May 2020 13:57:36 +0000
Received: from mail-co1nam11on2055.outbound.protection.outlook.com
 ([40.107.220.55] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrt4-000371-UW
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 13:57:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ciTt8VmYRwdVT/khl6JI/clKWRez2Edqupdp7cXL57fR1TW4xEEvEySn/MwbI/Ni9tqUWRjwXSVpidXqVMGlLJEGvyQc/hYlB6TmPe9n2C839c2qrIhz2C3YnN5eop521EmapUhkuCwjzqnqaMKIoCC4ms3C8hustuem42D6dGjaDe/ubEnTmjln3GoUPKc/HsuEmcJCMOBjXIqqxphsXW+7AzFzoEFz+8TvKrsbyfHR9MnRyIMam8R1oQn9pnB8lG1zlVQjFhKkBl8V2EN4ZdV0hW9nMg52cOgaS/PGoZTjd92Vr9ZF7dIU6nxp3demOiRlTZg0aEE6oQohk2tELA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60vPmv8RA5MlmBbtLlKW4Y/a5Zxl3G7WVKbBwMntZTk=;
 b=IOHz7ty52YQpZnPd8ap6yCr70TAlf3wuSMySTxnvyUBuLHLrK6E9BKD051RnH/kdM1FJxM69On+vRkvAte3U2xNV3Ahb920RptuInyOAyeK1sPXAelBIQXIKp/cqFfpqjfEnUW7IJuORmBdVPoqJMA2b3PG8okky4rcR7GWTLgqdY1sBU3cNNVXDehnFseZIjjyfh9U2g0bEynN2PE4rWzPG7abr2SWZsHzZ7txRk8SlWpl/ZcUmeV7xbAsKjMTIZmnKVOJxWIujVIbtRgSRNvAZdLq2ggzFZUonPsbXgpJI2C7A0FUoZnNBAVGW7QXJ5SlmuyGFHE1HyLjb69r0uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60vPmv8RA5MlmBbtLlKW4Y/a5Zxl3G7WVKbBwMntZTk=;
 b=rPQubjxMATSoI5mhfqIP375B8xcjjWalTMPaySPYMAy3gI4VqJhuQZNscr6VKQwScNFWFrr1Uj8OCDczHEb6LqTs/SQUMTqUTgFKk1TyxrFi7XeJPh98nEvJ0WziTwcCiKrM6w63+TLTmzFwtUhdZSLIB240UVbOzBYmSWloupA=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=sifive.com; 
Received: from BYAPR13MB2614.namprd13.prod.outlook.com (2603:10b6:a03:b4::12)
 by BYAPR13MB2792.namprd13.prod.outlook.com (2603:10b6:a03:b0::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.13; Wed, 13 May
 2020 13:57:28 +0000
Received: from BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6]) by BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6%7]) with mapi id 15.20.3000.013; Wed, 13 May 2020
 13:57:27 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: [PATCH v1 3/3] riscv: defconfig: enable gpio support for HiFive
 Unleashed
Date: Wed, 13 May 2020 06:57:01 -0700
Message-Id: <1589378222-15238-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589378222-15238-1-git-send-email-sagar.kadam@sifive.com>
References: <1589378222-15238-1-git-send-email-sagar.kadam@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR16CA0005.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::18) To BYAPR13MB2614.namprd13.prod.outlook.com
 (2603:10b6:a03:b4::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BY5PR16CA0005.namprd16.prod.outlook.com (2603:10b6:a03:1a0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3000.20 via Frontend
 Transport; Wed, 13 May 2020 13:57:27 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f6e60311-45f2-4c2d-0508-08d7f7459254
X-MS-TrafficTypeDiagnostic: BYAPR13MB2792:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR13MB2792691A4C544F6AC01121FD99BF0@BYAPR13MB2792.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1332;
X-Forefront-PRVS: 0402872DA1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 54BjP+A1LjjzkJnvvSWghphgNC8Ad2Qq4SXF0E5jq/h+PabFglb7sD6QCpshteWMSOUJYOJmBHp5ao29QlXT0VbUugDqO/gQvs29319Ybipujw4HxQ5RB7fJiUg1ccgck6o6dVZjsv+hzi5jARIUHpXn+UXXLEesZnV1VTHkOcKCZ/etlXacveePUg43raWd3yQL45TsFmSwUBdiPZJ4Z9n/Y9qIw8mirjK0jH/tGPp/F1XWfu77bFBzSxV9Ftc1iU5jT26UsN3fazZ+XYAPPQLh19eIT7PduzkkVXv3hCO0N3Y1I56WZQXzh32smy61uhBCKha9mqagGKRQaf2eEmo0uDMQd5SfZ7O4I5B7gYOZDWtWGCU6BWua4guorZ8T33Antgg367rXY1sbYjZtJhXyvmo41oWO8zs5SnZ8x7Ec8/0wtIqtjrryd3gHc8HY6h67tH70GrTmheyDKJDFO0nKf1zgfrP8cV1u+tbdnCiLLQ7/s+7eOokEuzHuLcT+YZ27oHOUo8gGH2a1VUc1sw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR13MB2614.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(366004)(396003)(136003)(376002)(39830400003)(346002)(33430700001)(8936002)(8676002)(6486002)(66556008)(2616005)(4744005)(52116002)(956004)(66476007)(478600001)(7696005)(66946007)(2906002)(316002)(6666004)(36756003)(107886003)(186003)(86362001)(4326008)(5660300002)(26005)(16526019)(33440700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: ChUBH7j6jhdUBi31J72zbi0hGDFii6Av1ywTtY427RcQEMGpWptm4V5VWnUYNplKrrKRT8H0On+40kk5Vr7dtaidHfxoqCB4KanLg7yNz5nEckldWlq08aAaFIKPMKkPQUujeVYzPQ3E+W3LK1eLPjrfJMuaNPakfTbYmCaxFX7/moQjfVjYuTIIEiuGSmmq3YtcgN+tGnhCFXyr9ciC2ZaRBF9fm8tD++k3VAhp5uNlHyNRDZvbDIgJLWxqsaAg6Bs7JFddolE8tnLtWuYhpY/80G73aqwJ4ibzis8ka2Hg07MJoO8xN082j8zcCoB0iM0uzowmQCcAycmS3g2/VB4VHWXQhnMXTJKeBcEfjHEHCC5+0qBWcjLMH5/sRqw8zNgqUP7MufbjbiJ8RN4n986Ghw7t7DvSOPm+07akBmmRVW/A0mxC5FfwWwEsWj8bxB0eD+3pRTFuNnudbxFWbujyOei2Bl6Viko2ixtwK38=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6e60311-45f2-4c2d-0508-08d7f7459254
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2020 13:57:27.8207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DL7Lrf3V96M5+SZmPaAUAB1/HRXjS6ATF7DveZ5N2fPk2RQLl28DvYEytA9MTCMl9SiV5hbVxvOvnzJXkAJsQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2792
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_065730_991546_7C4F3F4D 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.55 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: atish.patra@wdc.com, palmer@dabbelt.com,
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


