Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F76F1C7A46
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 21:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=By598tiTObU47oWqIpuS0+TaJMGd5Q6ZgUujj3PAMSE=; b=KjYhoxy15A6m6tivBWac0ytyX
	XJlppNbBj1Y/Nwupn09drsfvRcZAGrhce73kQ7Q1n3sZ0f4bAZr85knOERBy7/Ky0/4bFxKkB1Hs2
	t/lV0W3rm5j4qg12hiEJwOEFclPGNt5R5pkLLkbwjnaIZRZBIDM+C2y97YRBeXFkfLDQj6AdjOe4v
	AXQvfSxWqZPRTYn2HGlQdRNOh4HPAkTWy51ofPjne1osmK4/r24NAlSuTaoXceqbNI46JzPM09/A3
	cWQh1nfQUcNuWqoBPKOovWruCHFO80DHHEzHuGP+4+RSi7OFH5i4Ks6oDigr6xPT6BReWOyOpmdX6
	6N5jRjN2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPhI-0005Dt-6K; Wed, 06 May 2020 19:27:12 +0000
Received: from mail-co1nam11on2069.outbound.protection.outlook.com
 ([40.107.220.69] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPhE-0005B3-PS
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 19:27:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VEHbun4jTqjP0DVw1zOlC2S4mTa/0mY2JTbqHIH082H65dCqZ4F0Pjo8Sh0mAAb1ESmVSquVn6J17u/48Yh6H+7A3q6DT5vuIAISND4Dwi0RRlr5SerMXfbkopn8OgirwgEN7+wphBHMBHdCi+d4iAwYIRpF4CLpbzdo8eEMLmx3GwtICkADu0YB8/hwLpbCcR0FRwxL/4FsQiUrqvKmSwSt7OGxIH5NQIH/fhxMYvtHAQ7GqYCbV2QQ0Kok1AQw21gnTSGh8UkCuTP1Ypw3xa3WZaPSmgPZ9ZkAXUN1eBeHM2iea0IU6UtT3LNQvdtwUF0fWrYJ3q+PvvlRIf5sNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=By598tiTObU47oWqIpuS0+TaJMGd5Q6ZgUujj3PAMSE=;
 b=jbim4WQhGDdamQb5d/9mExvxAA43vDiduYMIYFJl5IszM6lnOKPfCjxD2A2cYw7bteqJMAGpy8TUog1k9y4kZgBRAWi0gdszgZGCmwBlLbv97WT/tJA4L/wJdmB7I3KpuckAmxlTuCTzldq+K/LzCNiEQkwBRWx5IGDIGpj4n3SV407/Ye63vufA2zl4TMb0RVuJrnKcJhPycwxsu4BOFxe8npI1iB/J95MKEA7f+g/HQm0suca4kFalafxg27kq70y+CLuwBjksWn6yZYCqTJvYqWIA0ZPBVnNyLajIPcqU2sEU/xRSDAbs8Vg0gq0KbpR50EawsGLwOYlwftYeLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=By598tiTObU47oWqIpuS0+TaJMGd5Q6ZgUujj3PAMSE=;
 b=TMDheRDMLNim7SK0r0kn7Qf3WoLdYaUdty/gb6QAWNZR0htCygo0UdkLdVyoLig61G6IHRnJy8GZUoCcxJvAu/cjEnTAmxagEFTPrSjzRu0aCJEBrP4rBBaPwW6BQmbSPP9WhegLB7p5iZAUMxg7oJEnmL3Zv2xEbVHDGfNtuqY=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=sifive.com;
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.22; Wed, 6 May
 2020 19:27:05 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2979.028; Wed, 6 May 2020
 19:27:04 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: gregkh@linuxfoundation.org,
	palmer@dabbelt.com
Subject: [PATCH] tty: serial: add missing spin_lock_init for SiFive UART
Date: Wed,  6 May 2020 12:26:52 -0700
Message-Id: <1588793212-5586-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588793212-5586-1-git-send-email-sagar.kadam@sifive.com>
References: <1588793212-5586-1-git-send-email-sagar.kadam@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::26) To BN8PR13MB2611.namprd13.prod.outlook.com
 (2603:10b6:408:81::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BY5PR03CA0016.namprd03.prod.outlook.com (2603:10b6:a03:1e0::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.27 via Frontend
 Transport; Wed, 6 May 2020 19:27:04 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4a1b4f85-f5dc-4842-5c93-08d7f1f37577
X-MS-TrafficTypeDiagnostic: BN8PR13MB2611:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB2611209E990EF4FB0C217F3699A40@BN8PR13MB2611.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YXt18LNykilGomvBmprNGDMudZ9soqZ6WTaPfX2bWzt7Dw+tStgy6zTDykOSxBo9hTMh8ay0/xhmdq/hyZ0lwWXbCYz8xm9RAC+TDNp40wqDEMejEPXlT8LMm6kzLlMAgFVU9T+zxhfBBJu/dOpm1EdxdpGhu41g6aPXUizSh83HF5G7o9CUfGpU1t0NzBBU7WXWETDkK/e3EbwPNdhlzbef/JLp6mppWA+eRlFUfxElZUq/tzVTNxpfUJ556NbiLpF1OfNIEUIVlHcbQmu9pmMD4OgO6NUl7lIFrcd+XA9r3E6IKeSWdT5cHAlVLBPmSqu5nZA5Tb0r7eW+UTPRDbyJSwbc/cF/wWKbmrqgtOawdcUzm/jDTGLv+pBk3SRvN/N4hqxZvHORiVkZeGX31T1SHXH6xkNvCprAJ+Nq4shvsDQfmU5XM35ikfsQk4UJIienwj5q9OvBde2IQ3/c5xsiJ2JHGAALy7bUuimcrZjU7YFq2rA0BwE5ZVp1M6zD7dXilSYjYq0HhXtw186D9KR8Z7R07htFuFEbdOypaNv3M3KHBcBwc/XLRKCincIRRmZTjft3m66YjpGmbcWfJzUKCrqu4j37U1wfAU0ynWs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(136003)(366004)(39840400004)(376002)(346002)(396003)(33430700001)(5660300002)(956004)(8676002)(2616005)(316002)(33440700001)(86362001)(107886003)(478600001)(966005)(8936002)(66556008)(16526019)(26005)(2906002)(6486002)(66476007)(186003)(6666004)(66946007)(7696005)(36756003)(52116002)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: CAjJ7ukwbtkULbBiluyUXiSjenGYJi8JmIkfTEgh/myNprHVRqIgmFn50a1ANMmYfk+NEHbp23jJBWbOYBxEUu7Y0v/ML4z/VRXSbbRbj29vbgMrLQXVtkOZVkHPrsVazDdSllfvsaYU9OwpWOUsSsS/lz/q3OTngNHkTfUO+jX1OpPxGiK//5H9iDWmoCdIOYxhwGSUZ3C3utQHv+SD+CIfx7D8cKuZ265TmowC/8GY8pUOmetzKJEM3xo7WYOKdUSfvLFyyrtzCGs7YhNotSVbmhFh3qElt9ZLx5BQUPmiz45WLfPfQpskTTaaYGrv/0UptjyBNGVGgdewb3Fou/Bcc92SDGVwpapYrgcWdntLS0KDiFQeWtoPwGr2V0yeCYdVJfpViXqOck3WKrB1WWFUZ4TdylH36dIx7OIi8U9CoNe6cQ3jtCJ7hv2MPggCE+2b0RqlBDLvA38DL9OxkQkJJoDKfmtjxwcrcQMSFHupcLAm9gRenylNCl/2uFTuPHagkg6TzVuVAi0U4H+Zc5Cped9yFN9/ekMB3RTCJLx3bRMZFTamwFYXdUQKCrHv8YrzsVKRooJKRatG4ro4cU30OuoimFWjv7TCemwhu9Pde+zAmFWPQ2BxGqw6159YW6NhCfOat7UK27KwTN2QeaLNlJL0N5VO6iLIKP5PP3ZxXXR+kxi8JXx/gSJ6D3FhrpN+ozzkZLYS5Onb9wT7q/Wy9MR41KKMXrLbFxE3KATdYgD4IGl0lDLZ4Qa9Qvviks7BSuy/fzt5uAA+qZRekV5QFp5E6kBqHr8p6XGrHgY=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a1b4f85-f5dc-4842-5c93-08d7f1f37577
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 19:27:04.8837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hdA8LtDboGvSDDAHsk5oIPrVEdbXzkpm5tOG2ZozF7Kp9ppbOKlExxnQBt0kzud1eBgpkusseQ0feDt10VZzmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2611
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_122708_822145_2925B753 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.69 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Atish.Patra@wdc.com, linux-riscv@lists.infradead.org, Anup.Patel@wdc.com,
 Sagar Shrikant Kadam <sagar.kadam@sifive.com>, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Uninitialised spin lock on sifive serial port (ssp) raised
a race condition and resulted in spin lock bad magic as
reported and discussed here [1]
Initialising the spin lock resolves the issue.

The fix is tested on HiFive Unleashed A00 board with Linux 5.7-rc4
and OpenSBI v0.7

[1] http://lists.infradead.org/pipermail/linux-riscv/2020-May/009713.html

Fixes: 45c054d0815b ("tty: serial: add driver for the SiFive UART")
Reported-by: Atish Patra <Atish.Patra@wdc.com>
Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/tty/serial/sifive.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
index 13eadcb..b061bdb 100644
--- a/drivers/tty/serial/sifive.c
+++ b/drivers/tty/serial/sifive.c
@@ -989,6 +989,7 @@ static int sifive_serial_probe(struct platform_device *pdev)
 	ssp->clk = clk;
 	ssp->clk_notifier.notifier_call = sifive_serial_clk_notifier;
 
+	spin_lock_init(&ssp->port.lock);
 	r = clk_notifier_register(ssp->clk, &ssp->clk_notifier);
 	if (r) {
 		dev_err(&pdev->dev, "could not register clock notifier: %d\n",
-- 
2.7.4


