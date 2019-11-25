Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEE9108EBE
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 14:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEahJXUJQU+anX3Z7I2hx9IHE6uIofkxVY5bcXYPTjo=; b=ZJSJZfDqcwFcKA
	pU7g9bw2hnXo4i/2JHDfro45QP7mPllecPGKtLJ4fBXdYFjuQHRPCtO3jV5/a0AyTWph40WmfSE4s
	OBpXcYw8VvRI00gshDf/Sc3Oak70Mtj4FRWjUL4kALdAONAbfPq1ZRAaXvN8ilxNWI1vGy9PwwTlX
	Wnkz8t6yVDpG8J2GgZXVOAjenzfzZKAAvjKCyC7SgysuC7njsehIeWGOFYItTB49earwO9K7eo6GU
	P9+dacOOvm030T4XR2mP71cdBbvcpStrCETMan9DqPmQK5qWrvARHQtp4PF40pEUu+ctj7oD3VWCl
	MbZZbFDqizlWhVSdfSnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZEJz-00053G-Ie; Mon, 25 Nov 2019 13:22:31 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZEJw-00050s-8J
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 13:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574688149; x=1606224149;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=horAi4KzBP/7dsI/GA0yclgax0jj3r7MFi58WYxfmIs=;
 b=VYaOuVqCw0VNUkIG8mzHvIB3BmQ9qaXf2cEQbdmHAbSZznOfIBEJiuum
 17tqlr7+Q6kWfIPwOB+uAzHM0vEVEcuokn71APhc/26//LXfyMAgoBe5n
 EMkvs072z0vrkBk1lp/1JEG8W3I3wiWyLOaikQ5kXTUJIqeFmO2KZKdjK
 pU1glLJH68QxaD+A3UaO6qJqZ8iq0sehPKqUNPYklMqQljqVZXGZ5hpTS
 yHK8/yanYDYRRC4Q4g1q+5O4tBWanqd+DoqbxQhow/IdfFEgOS6o29IWv
 KsLG3uptfBWDk5I0RRlAWbFKC1oVDyuIUYwJ5WJu0o1iuTQZXm14jm358 A==;
IronPort-SDR: YuuuS/v0UiBD0Vg/30s2VqF+TF09Sf+sJRCH5Qx6Pl+TqcsP10s6cAlz4Nt9MD4D2VQjADo5o9
 9qc2EpZTtorB7AU8xozo0wV0CxDwTXSN2BFlGCCx74+uJMyxrV6XE0d2R3pt150GbYcaxslAKq
 jKcEgE8KjKTbpXKkVoYJ5h7YM/Tw6VeaY/c0nhfKxQFnJ3O5948oxs5Agy7LC4BHz/g32AjVai
 Osyn/w9yQ+8WjW8bdjZtYPFSahGl4bkJrf9ul5LeP+SJVqS9xOKEJRMA+35CemjXIsUao6v8dp
 PwQ=
X-IronPort-AV: E=Sophos;i="5.69,241,1571673600"; d="scan'208";a="125552361"
Received: from mail-dm3nam03lp2052.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.52])
 by ob1.hgst.iphmx.com with ESMTP; 25 Nov 2019 21:22:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fjwiHsn5hJt8gaH/67bfEbCsL5zODejDpyDuWTz9cbe3otjmOxpK6XU5p0/wFB4IsHTfXvV+FBahOtFfevi0HzW4wp1fWLH0Tgvca6r1+8XAvR+cMF1n64d9/EeCP+E5aRz0Gis/aTeMN4EonrfZF7NPQmbCs/HfqVgzJd1yfXysrGQmUQBn3J29hxyT4EZJ+7lKZv92GDO8ruHNUSM29S8X8AMFRXCMgGMVayb21kX/WUD9vweIPR2DhbO690kCn64RzqYHhI7+9u1tpOZTuVqvD7YWNbsE+V74VcVeiZuK6hEvpMHtbeHxXyC9syDEaxPahP0sN1QwwBFVn4ADjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nMn5zXhu1i0vo6FLz6ed6vtvjkBO9LVnTk0Wj3ZwH1k=;
 b=GmesJfAGWhWTDilepkX/WOdc5yn3IMvxaU34YyszMsnvZqR5q/d/DZ7wfZoYy4kLydCxLikO5Pt1MIudSmIuCl9Wl+XqVhse0whX90HacLIZ01Us6s+xqYRMlEV25qn6HUbRHAqhLPUnVLlQ4UKz4pSC+iP5JE0yv52J1IVyTms1BI3i25SFwzg8oAMi1EmGNcP9ZUy/OLM5i6RU3VlNVhXxlLrflcsdbci+Y/2RCvNGLJGMiABkCEjsz6KIwjhE1dkgBPbOxSrs/gJK+JIq1iqh0VsqZdDM/a16//rjhUOJjxPeestagq2ESZdumKyqnRb64vN5db3XaBgASxxrzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nMn5zXhu1i0vo6FLz6ed6vtvjkBO9LVnTk0Wj3ZwH1k=;
 b=WCu8OBYUMK55hvL3iw3ZPfXhTkZnMqBk08ZL4msW2usZjrapJzAtc6Buu3p2ii4Nrb1Czl0nHmd3hf1zlJ7Lil7n8lBm/VLe1fd29K9jkRQutqeoKbKADTW0ebJKBqtboueZfuAZ5GZar8PZk4FqLlFiHT/P/CYT7NGdO7paIEo=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5981.namprd04.prod.outlook.com (20.178.246.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Mon, 25 Nov 2019 13:22:23 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30%7]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 13:22:23 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
Thread-Topic: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
Thread-Index: AQHVo5NfR7JNI4Hx2ku+Z33hWlX+RQ==
Date: Mon, 25 Nov 2019 13:22:23 +0000
Message-ID: <20191125132147.97111-2-anup.patel@wdc.com>
References: <20191125132147.97111-1-anup.patel@wdc.com>
In-Reply-To: <20191125132147.97111-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::15) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.21.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 575dc44a-95a7-4dba-8adb-08d771aa8181
x-ms-traffictypediagnostic: MN2PR04MB5981:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB598142769DE7855AFBCD1D178D4A0@MN2PR04MB5981.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(14454004)(50226002)(66946007)(8936002)(2906002)(81166006)(81156014)(6506007)(66476007)(6486002)(305945005)(25786009)(256004)(76176011)(9456002)(54906003)(316002)(8676002)(4744005)(6436002)(66446008)(386003)(66556008)(64756008)(110136005)(99286004)(52116002)(186003)(26005)(5660300002)(102836004)(1076003)(44832011)(55236004)(478600001)(66066001)(2616005)(71190400001)(71200400001)(446003)(11346002)(6116002)(3846002)(86362001)(6512007)(36756003)(4326008)(7736002)(2171002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5981;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eLj1Sn+7780JHvqSGGohnlhYmDI1X9cbVVUHczwvYdZNZI+vVf3pSLboNF2KAp41qyAq9TVCsHuIdGffuxilqK9DgawnFew+xEzYJ7hqwRFv6NryYHby5UVpdlu7n0rc9aodHe4+gTvprSIgX3AILLTTY5NS+n/JnLkdLeZq6wNLoXv00zYCldk7M2FaIJhSeZW/QDgviDqO7w1f7oWsZjHm1ywMUf4agyNS+46lJgzFf7/GIDpmWfK0O882DxcIIWrnjouAZNBhTy4auXcoO7sn8F8A0AEEHyr4WNijIDWxhQQC+zTtsjMKurO3fnTIrzvihB/Kxrdr+QrxOwEKtuHdCre9RFfbrKm6toNrG0LP/nZvWHRpt1h3Rd1TdwzIPkMVBFJK2QJpppTLXWJ4tgTdrQsqe7RPiUX26RDmKAQL/EqlQX8oRDuftaC147RC
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 575dc44a-95a7-4dba-8adb-08d771aa8181
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 13:22:23.1081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oaY1ke8iHiPbY8DPfzGOpilubvvI3n6Fxr346Ts9s04sJyrmWY4Mu6GqFmSrRoro+Q/nxFcxrigtIL0D9LeTAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5981
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_052228_328802_45100C8F 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.21.49 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We add kconfig option for QEMU virt machine and select all
required VIRTIO drivers using this kconfig option.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/Kconfig.socs | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 536c0ef4aee8..62383951bf2e 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -10,4 +10,24 @@ config SOC_SIFIVE
        help
          This enables support for SiFive SoC platform hardware.
 
+config SOC_VIRT
+       bool "QEMU Virt Machine"
+       select VIRTIO_PCI
+       select VIRTIO_BALLOON
+       select VIRTIO_MMIO
+       select VIRTIO_CONSOLE
+       select VIRTIO_NET
+       select NET_9P_VIRTIO
+       select VIRTIO_BLK
+       select SCSI_VIRTIO
+       select DRM_VIRTIO_GPU
+       select HW_RANDOM_VIRTIO
+       select RPMSG_CHAR
+       select RPMSG_VIRTIO
+       select CRYPTO_DEV_VIRTIO
+       select VIRTIO_INPUT
+       select SIFIVE_PLIC
+       help
+         This enables support for QEMU Virt Machine.
+
 endmenu
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
