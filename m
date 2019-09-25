Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1125BD762
	for <lists+linux-riscv@lfdr.de>; Wed, 25 Sep 2019 06:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCII0OySAHVckT5TVPsS+9k40kvWodCVRPP21Z8T0Pc=; b=pHqdXfotGOAaP5
	UHgYl4h4XEZW2kshGT9wVYtrN9qUTuH1uiulnYDmBZXdVd8i5S1jn726sQD8Bymis3seSSM6DrEmm
	8lmWNefj20aMN+zKYqal2EMoXmHnPMGPU1pMXAkzFJ0AFbM1mrwmNUgVMXG4DAQMccuLt9jRaAXBp
	Q7x10c1ZVdsh3Yewhmc2omGyFvmeXiOZGVqNmApCc0nQY4AGe+BdLaRaG1MfKpg2TvSH3O47QMdit
	wAH92Po8wC2rjnCMzLjA0xbYO7OFezXMTFe+OEAArMq91jBSQMWuOuAbtWtuSdexTErcFXboQkkOM
	hszy9bo2H7bOPohOqUIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCywa-0006ih-UX; Wed, 25 Sep 2019 04:30:24 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCywX-0006hv-5X
 for linux-riscv@lists.infradead.org; Wed, 25 Sep 2019 04:30:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569385909; x=1600921909;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yeqfhyNFdbMwC9gfCj65cyffTyGmmcoKSNDTmhB7C+4=;
 b=m20yFBu/VAKi8otQomV49lDothO/oupx3lBNkbGFr/8WRs5I38nb88od
 g9rJlEuHzo5PlEgTVbCVM7LZt5pLr4bKXz+xzgTM/qNF0hITA8/QMWjxC
 9dIWi+S28VzsW/5MtAiNj/xLos4I0wnqv929ERXZyr8MEc3lH31D4F2SV
 PozQrjj/Voa016jKeCbzcsgEUcfMRlrD0KC5kPinKDDHZ5YBL0A1kgLQ+
 Ss3PS+znSgXd8hbc/B1wufcOYzJRyEU8sGTk14jcFpYK9ih4yISlLOuvG
 zwfyq+T9sMnj43BGt8pxoxF3zhWbWEgTyxvNIsA2zO+HNPNvZsCfA9msb g==;
IronPort-SDR: 45Ij02JYFNQO90H18aeDroU8vQ6z3w/mfAZGWIpQOcXhEBK24DesIYITu8hSBA1oBB7AUh+E9S
 w22IXPUHaqTssWdf5SUrL3sLjml1h9xDA1znu3nUWlsotCRXkKAmNs8lf0R58o+6LUIAsQKqBd
 AtJbPJ7eolH9jVhLZgnJI+oWWCm4BxuyHwy+IibuvMnvVQGGfv94l9lQEu6qn4fMKiBYCiMcVE
 btxMl70EcH+hwgxh1GgorY/V/WwRjlvPxCmTW9At++HD8Vej4YW8Np1pOq0XNW++51O/eEpvb3
 +5w=
X-IronPort-AV: E=Sophos;i="5.64,546,1559491200"; d="scan'208";a="219874121"
Received: from mail-cys01nam02lp2059.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.59])
 by ob1.hgst.iphmx.com with ESMTP; 25 Sep 2019 12:31:45 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hXWwlY6lFXvocVnMjVg5/E+f1xG6U4UjHbzyDFS05E3kYHp2DXZm7dfieuw1UAyjRzZlcgIjODgOf5dTrR+23JA5o2ol3sHQ+FE43FTY7HC3lfnJWIIlRbJp2KLQDYiG2rRermcxEqsawhk3n3tVBo57+gq9n5xorgskuoDCeMPSBSOHhzPZ/kFen3+RMmlzLE9e1yq2fDGoR+ia80JoBLCA3pxxFYgCiuwzxgb7mk3bt9wPxA/6SoYnXO1cL2FO9ACzUpKcYrrWly8w9B146JPzwEotaI+Q83zugW3UJL4FVhazDlO66dqy2kzz/oCm5hE3HrHbt5JuXCL3FMwkTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7BIOflEycOB7rSOrwtmLZA3ec/ldK301LqFjt2pdvLE=;
 b=RGcDMBmrSvvZu1dQOKLdWMxcxJnFBnCC5gJw+x9xsUj/INn8uIrY4ZPzWRRwGvD86VZuFhV64LqroLvZfJOnEkDvL3VtxhnlP9Jffy1pGVk2s0JbdjeMVZ99PfvK/i3synwPJ98t16V3lNJZo7CAWLfTleYE249UjA/YFl+46AhVuV3HNTKWvvrb/QrygbvBwmYnpnSWCDyTdaIw+XnstzmvVsb7XZc51S7cNz7DJ6t1pzn6GP6U923lYdQ/n2UrdPRHggYSgy2JO/+NGrJM8mLCoqnl7AGWAujc39qdl3iQIzH3FBgglDA2wf5wXaUWSd7C/Wz1ZRu9cwnKNjINgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7BIOflEycOB7rSOrwtmLZA3ec/ldK301LqFjt2pdvLE=;
 b=Fu9fi+Fr4OvLtWJhZr+r/D42qg6tQHP8y2qHIuWeA+ih1cS1NOi7l8fHsygcVLG2466+tS37So+AY19mhyNMMU439DCjgeyHcy8g+ac90O4sGNyuCtiNZwBTN7BUxHkxuA6VP7KDyXUg21DaGsrZmYhUCFM6v65sE95dcFvOU+M=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5805.namprd04.prod.outlook.com (20.179.20.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Wed, 25 Sep 2019 04:30:17 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 04:30:17 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Roman Kiryanov <rkir@google.com>
Subject: [PATCH 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
Thread-Topic: [PATCH 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
Thread-Index: AQHVc1nuY6XHo0rltkOj9fFxxz/8pw==
Date: Wed, 25 Sep 2019 04:30:17 +0000
Message-ID: <20190925042912.119553-3-anup.patel@wdc.com>
References: <20190925042912.119553-1-anup.patel@wdc.com>
In-Reply-To: <20190925042912.119553-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR0101CA0053.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:20::15) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 212a3712-6774-4d38-ab58-08d7417110c1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5805; 
x-ms-traffictypediagnostic: MN2PR04MB5805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5805FB104AFC52F8E8BBFE2F8D870@MN2PR04MB5805.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:972;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(199004)(189003)(25786009)(6506007)(316002)(186003)(256004)(4326008)(5660300002)(50226002)(8936002)(476003)(26005)(14444005)(11346002)(2616005)(446003)(2906002)(486006)(44832011)(99286004)(81156014)(81166006)(6116002)(3846002)(2171002)(36756003)(102836004)(6436002)(52116002)(14454004)(6486002)(66556008)(71200400001)(8676002)(71190400001)(66446008)(66476007)(66946007)(64756008)(305945005)(110136005)(7736002)(478600001)(54906003)(6512007)(1076003)(86362001)(386003)(66066001)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5805;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dfQTDKl+1GqYB1x1yqYek5qGbQid2G5I5cZHP71h45IN2ow2efdmHnfastWTefHw/paGbjherS1WcHrdwMk7LQIDt2ed5plC1rBZGFMXWq3Kkte/Kl7M1+gldgK9T18TFzve3DpPt6yYItU2uBC9Th3fm2O2fYgbf+W/zPrDq1ijHnnKqsv16LAs72ntgA4BqkTFSEbaTnHkC8cRydU/P9t6Gmn9WA34dpc/sG6ZXZXdpUfDxIu/tXc3/5VAd8c2o1r+QHWB4wFbsxlZjx+KmRpUDXDkOrTRBE1+RWWc22OSAMeSfdVXDd0opwpp9hfTj3Xr8pPOmV9sWw/CJz/3co37xXSMnMQe27ZKE5pgLDG2dwrkOphA6NfU555FaLwrSl3f1hQdwWaDDktyW//fRolhdGjn1t69bMtawS2W8BI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 212a3712-6774-4d38-ab58-08d7417110c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 04:30:17.1098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NOUFslz7/FlQ6g89z98psh2aLWfOG4+jJRuXIlM28J+imVNgpy6XcNP2Rg5z7I6hms7pIXndeyWxsVFVpQxPsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_213021_250696_14D03270 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We have Goldfish RTC device available on QEMU RISC-V virt machine
hence enable required driver in RV32 and RV64 defconfigs.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/configs/defconfig      | 3 +++
 arch/riscv/configs/rv32_defconfig | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 3efff552a261..57b4f67b0c0b 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -73,7 +73,10 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
 CONFIG_MMC=y
 CONFIG_MMC_SPI=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_GOLDFISH=y
 CONFIG_VIRTIO_MMIO=y
+CONFIG_GOLDFISH=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index 7da93e494445..50716c1395aa 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -69,7 +69,10 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_GOLDFISH=y
 CONFIG_VIRTIO_MMIO=y
+CONFIG_GOLDFISH=y
 CONFIG_SIFIVE_PLIC=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
