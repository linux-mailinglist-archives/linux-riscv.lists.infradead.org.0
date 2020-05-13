Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E0D1D1697
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 15:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=auhdIpVykeScLQHtqjvP+FzHVlmWZFx4SFd13kL/vhY=; b=eGoYoljjoNtwKhOY5CCUF6EB+
	fdnJ/iWDWlKvMFDVVay4fhLKEtfNTvYkobj1FXRV5NrlOoCrolsxf8rh/NBoM+qIieqPXB/apAJyo
	ACGJWVjDCUR7sjUvo95OG2oxPiuIGPltUX+yAAHv2QODvap3KzP+itKMXVPwGEYnue/eun2O83CSl
	04b4kV2V5MDy9cEeAKqw3AQ+dzdl+MAwczDugPBfpwKEmMnGCiyNr9/0tf3a9/C1ep62RynjjJxrj
	A+YJK9OkqqjNjE419tdlnSA4J2xN3RMNxBUb+0U9tiPYXh9Pa3/oYl+gAqy9lhBVrIBjiw+1pDeRJ
	xaq0McIlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrt8-0003Ao-5p; Wed, 13 May 2020 13:57:34 +0000
Received: from mail-bn8nam12on2058.outbound.protection.outlook.com
 ([40.107.237.58] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrt3-00035g-NE
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 13:57:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S358/DB/ZOUBusqauJ3U0wjWj1sIRrWYlpTahrs4aU975R4O1ksdf09JkWIhhrHuy0Nq6HmNkzxxXRBzPwWl8Tk9WbtcaqmU6TcFv8p9R8G4A1QzcibfE6B1WGqqbLOUJithkXXI8svfBF2ZiXMhArYbSxQTrRJEHWZVetZtcsJrRynS2FedYVl8PXsMQFmr+Z5V2B6xkdTDNIdyt5laywCca1ljJXrxVhjJqF+1uyV6s48Ho+UwEBuF6SNCm6GgCBEfBmMVKFUv8nO6NRDSV3WVzym3f025ODiXEQgpuXjLMNmUTIPCxdyp8QseVzhwa+N8ZFDuLEjytu2lDj9dhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auhdIpVykeScLQHtqjvP+FzHVlmWZFx4SFd13kL/vhY=;
 b=anNNytamQ60Uyourwmz2tYoLFhxxiHnANFC5G/0mJsTyupat8hkWPwkOvgaATzA7dKmmndiHcgvwOhLrlCqTpdyAmm5QG0Z9njjpOa/g1F+LXuoMGbxldh+SvuzDJm4LyTPs8JIdJCbKWhN4eNj09xGcAY28y2d8ENU5dRzcDxMbhFXasQpeoClHf16xsVzAxXZuvYJlcso7g8vb3LB418wl/eBhVguCxn9VHvC0P9mNKjVyJzJv9dhqaMACugOUfRvG8QcuGLxKBqWSlVSlyhEGp4xTTmYCJMO+U0QEMql3jyvNCtb+o0thIEfd9WavelCAeBLf5b9no0kM0Ny+5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auhdIpVykeScLQHtqjvP+FzHVlmWZFx4SFd13kL/vhY=;
 b=Rberk0n07JJ7Tls0rOrU6bo2IBo/6ruBbEp9aLS7gG+CFAYzDykMzIxiwxjBHBAxkuawucpWXTvEA3g/Q0DLVu8133Ngq//04pRzUwBg5/Zy6mQ/gi7JIVK5ep/vpxvP6YQfRif8J7ySt38GyRhDQGWZQzAXPNVwR/aSU4Qi5dk=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=sifive.com; 
Received: from BYAPR13MB2614.namprd13.prod.outlook.com (2603:10b6:a03:b4::12)
 by BYAPR13MB2279.namprd13.prod.outlook.com (2603:10b6:a02:bd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.6; Wed, 13 May
 2020 13:57:24 +0000
Received: from BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6]) by BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6%7]) with mapi id 15.20.3000.013; Wed, 13 May 2020
 13:57:24 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: [PATCH v1 1/3] dts: phy: fix missing mdio device and probe failure of
 vsc8541-01 device
Date: Wed, 13 May 2020 06:56:59 -0700
Message-Id: <1589378222-15238-2-git-send-email-sagar.kadam@sifive.com>
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
 Transport; Wed, 13 May 2020 13:57:23 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 10621c8e-882c-4f36-66b3-08d7f745901c
X-MS-TrafficTypeDiagnostic: BYAPR13MB2279:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR13MB2279C8097328C2A96CC9194099BF0@BYAPR13MB2279.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0402872DA1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR13MB2614.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(136003)(396003)(39830400003)(33430700001)(2906002)(8676002)(956004)(6486002)(316002)(7696005)(8936002)(86362001)(36756003)(26005)(107886003)(66946007)(66476007)(2616005)(6666004)(52116002)(16526019)(66556008)(33440700001)(966005)(478600001)(5660300002)(186003)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5CqMnqRHBZPe8+361+eSBT9CeWpibrVLysY6oLA0mu1mWtO8p1ruwWwWTfoc1MfTE+5/2wQTGlQASSYtlQ7hyqfFG/UZmenj4/swlchca9zZ/52mUP+e17pe/8o4ljBKLNG7coP75TpPVpTos1Bpl3E0Gaw7UJtMDxINDs/FVZ5Zw0IVLP/U2BGiMbwqg2hZZ6mUfUvRJXlNR2QowpuKswLZWFdCvUs5zdLgNUGKvExYj54aSfkf69rQ1YccfK22jBZgNjBDH8vPVgyfTPW3C1q98xxuOhz/Zc2GO6LY6N2K0PTzVD8WTKW7XIpNYIAU2c2uPxhHa9sEdDb0UNU1SpLH0s4UwNaeOlQdN80ZAYdxe49qEWh9zRNt7QNMxvkemxzyrkghjlg+Eq+fYkPEaO0c9FCqlRcJ3CG2OjWzYv6wWuhkfSm+iA/PV7CP9C2B/LL5j4qBCrDa60sSAtTz+qvRb/aY/6nQEhf0avdXroDF4IjRuloPIUmQTZ5SiypP0GT1zSKoTiDQkUoyznYVD2D9Y9tn0U/v+muu40UCgOQxbrArOVz36kbPZy5Vwbfanydreho/KPK2cit4oAX66XntRRUTgjNsCzwOAXOid5A=
X-MS-Exchange-AntiSpam-MessageData: WiFppinhghC+0LVcPT9NZe0q+ktt+lYtvBOnYdlnMuGFRCjjWbgPiMm29LMv1J1gQPxev5o/gAu6AS4SJNKxtIMGfIKMd5ISXEkZ6E9JYbwmmT8beWVo47FPtqnC9JFHDHUF97DFBWr/dcApobwLVFIAnRantPlnTQ4yYKDYVD5Yu5lYJ+tSvwEh3rQIY2zZR29KupDyWUCuwUBUso5Xqushm6uosr9FmY+iGGonCHY0ApLwvmGlWvUtkyC77/QYVIAAbpgb0n65JPR5KF6/aywX+mVDGV3AwKMVHGUIr18g4T7StlcXRYSbuor8b4BIOQ3Ak4lFB8geyv2HHA8BllZGtsJIlUG9amYEH2JGAge2Ah7WlHu9SPPp5doAG6gGa3n5zBN3e8U9yx6QrXPw873+2aayo3BWD+I7VtSCR5s1poXX+cNqUmFn8/S1PpCTELJD/MAGZ+tgJTH42uQa1zZt+o7QIjBY4X0oq0e3GFo=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10621c8e-882c-4f36-66b3-08d7f745901c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2020 13:57:24.0608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mLh3CDPYDRQPnuJY3qTPoIPYTWU7Sk2vCDQDw/F9aC9v4xPXYCKRd3q6+xhDWfIUAzpCxgYV7doXwNpsWpaMRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_065729_799083_A698EFDA 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.58 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.58 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


