Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48D11B8CF5
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 08:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID:Date:Subject:To:
	From:Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=33XXP58ifM1tMcuQeRnuRrtsi2FZHidpDxTgHpefEg8=; b=B3m1TF7hxvNIxSjbE++I+ixyRo
	ZauuL03qS+U9ZEbUF6dJbdeD+UArRPrSAfw8c4StKdspQNHzX2fJtiJ3FhrccqrFsDZVN+y5SkRho
	ywDdceL3/NT4fNY6N9l1mkXUGNDB9vKwqZV8t772heoAeOU30tQfBKF+U0dWjrUhNzI+gAc0+bnLb
	Xyco3S5PE8Z8QBDd4lhZsTyXBnhzsioFeDJ1lk9COdPpfXdiULQNQeZQ4te9nhEkTy4Qi+Guh62LC
	I5A1eSLRMkklU/PGwLs459OJibBrrPx7+taVmYJUCt3d3kSY1RCnrh8tKiZz5Egdcf4BTP7QuyQb8
	o3yL8/NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSayU-000370-3K; Sun, 26 Apr 2020 06:41:10 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSayQ-0002vZ-GI
 for linux-riscv@lists.infradead.org; Sun, 26 Apr 2020 06:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587883266; x=1619419266;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=33XXP58ifM1tMcuQeRnuRrtsi2FZHidpDxTgHpefEg8=;
 b=aaOBVZXGSNzlTJ0YscUWyg4X7366CQIarbsa9KIABhyT9napajDMWFTA
 MiQt3X8mkt2hrPTz97pW1+RNZEwrbBxYAMAlP4S0JelU/0hVAhCUZRryv
 OyYGyDyEUIeBqc0mc3DJMwkKvghCNKP2kNhSMtwDuQTnH2re4OyJI5/fu
 KVj6DZa7PeWojIFkB01NobupQcZwvDbQLOJzMQLIXXHUHgWaYhBQWTJth
 lUNpgZySne4bfWwLwpgDmovf/IKzzYBM7+2/wSrvmUxRXkNK7wnDtU+w6
 +IhsCOKvl9UJudZDLx3dPl7D/ZIE2dzfQ49nQaS0TUr7DsB6l5rU5OK5z w==;
IronPort-SDR: fPW7+v8Omee8aGsytVqXmcSVxb8cwU3eYeJV6nUR/knvdE9oXsx1mZ57YKp4C8XZwUL9RH4L4A
 xqQhT0CQxesdc0fvOCXTpSPGmKj/l2oOHtLPm0eaP2Evg6nhBiP6Rbwvm1mvL4v1/3cdGCspYH
 J/B75q10ifDl/y1gzjmpfQRs9TNAL7K3Rn9rKxC7ofpi2qGG39t8/CeG7I74g3Yp2+OAzoP5MQ
 mtLPqsIIbx5NnILGhljfhMX++zPc9S/gmGQ0rGx45XGt56jQN3z2yQik5wp7SRD6q6IzanLs8R
 Evw=
X-IronPort-AV: E=Sophos;i="5.73,319,1583164800"; d="scan'208";a="136178577"
Received: from mail-bn7nam10lp2106.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.106])
 by ob1.hgst.iphmx.com with ESMTP; 26 Apr 2020 14:40:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dOwQxm5Vs1k2p4+jLZietiZQuzEgyeP4rhWXZmdXBrjUptQVcBytrzyFdUjpe+OI2UYbjn/ApyfGav02vFNeJBJN0eaSJIFrqi/BXEtX3AuoW9YQ8FxPodBxo/C/dyZP3tX4dOgke4/BqIqeZSTmNEHbYWNKdSCjDb//e6iFim4IE81rBZwNCFGDLigwo4n3jD0XK9Wjb/5vEiEKQTxNtNBGFPsL+5aPVY7fFxtZykyd/wFNq8uMM0hb+VmW0YwVNtAKB6iIuj/X/lqMl0/JcJCQRIgFJnh6B6402UatRf838G35Vb+RIaILfU/sV8gFvWOh1CsOYhCjJxwA5a5L+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=33XXP58ifM1tMcuQeRnuRrtsi2FZHidpDxTgHpefEg8=;
 b=hF7OjSWGTaq4mHlF2SJpIqSNydYbkEpRPQlxvVwuqN17QXF8H+0uRehJh5AmOKsGgbj4iscwy2Qe3hNZJbKCKJ3JLwHngdCKcw9ex3yVAB29iv4gB4x1lq7Ed0rJMwzR8zHrJT9fcvWraVR3A1smjMzrUoP0am8RAoowUfpNPMoaiqYMZiXqsj7FwksoFhHVuxPaAMkPamVO07+X1tVIGz2rBQ0dL1Tx4oNb1YIgadFdYtmyMxZ0/Ab3H4NJWqD3mf6WNvx3sYjufiwrZjezusWHBIv18D8i9uuiUeHw7i71uTdRvlRFEo+Fiu1ub3JTwJapqIbkaQ1/FC3QEJ3SMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=33XXP58ifM1tMcuQeRnuRrtsi2FZHidpDxTgHpefEg8=;
 b=Gx55JVRqtkjCXE2zBuxRARBbb9c3FmdseNQyakOTWIlhC002O2zDui7w0ykuWdAc3z7T1v++UiJEA+GvhALz29uaJFRtW/j9mAAZ89Cmq6rqeHwB1bHnKBbp+bIuIfgtlbzL7K8zYw3uSaZkea3CBDlGqTfj7Xm5MufAjVWyKec=
Received: from BY5PR04MB6724.namprd04.prod.outlook.com (2603:10b6:a03:219::15)
 by BY5PR04MB7060.namprd04.prod.outlook.com (2603:10b6:a03:223::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sun, 26 Apr
 2020 06:40:59 +0000
Received: from BY5PR04MB6724.namprd04.prod.outlook.com
 ([fe80::5591:a2e7:4fad:6b0c]) by BY5PR04MB6724.namprd04.prod.outlook.com
 ([fe80::5591:a2e7:4fad:6b0c%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 06:40:58 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: spinlock bad magic on SiFive uart driver
Thread-Topic: spinlock bad magic on SiFive uart driver
Thread-Index: AQHWG5WkSeR8ARauykKwvsMv3GVGrA==
Date: Sun, 26 Apr 2020 06:40:58 +0000
Message-ID: <b9fe49483a903f404e7acc15a6efbef756db28ae.camel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [98.248.240.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a4376da8-e55a-4002-e2c3-08d7e9acc791
x-ms-traffictypediagnostic: BY5PR04MB7060:
x-microsoft-antispam-prvs: <BY5PR04MB7060750E8C63DFE22ED6A589FAAE0@BY5PR04MB7060.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6724.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(4636009)(39860400002)(396003)(346002)(376002)(366004)(136003)(6916009)(478600001)(2906002)(316002)(6512007)(5660300002)(186003)(8936002)(71200400001)(6506007)(76116006)(36756003)(6486002)(86362001)(64756008)(26005)(66446008)(66946007)(66556008)(8676002)(81156014)(2616005)(66476007)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5HUmREFY81RxHkc8rLDq2zquHQUd9WY1Mdc7SO2W5AvS3Q+Eb2Z2zblXyhtGrvKffi1RWIBEG6w84s35rtLIyj6KwLYhChST/jemnwUvQpThz5D5ID0kUOdAKVtnNruPPnrIImTf2jwroGHos5T39GZ62ac6s3gD2a4DYI0MEjH0sbownh73WFie/Uon/e6NOEon3QkSsTSxj7GrzPEiSaQTI17aStb2H+LbbFYS5OttFsLaENARosYxoVCDJeltBD88dQjTAZ4XtwAKZMcYLrvkrTp76K8oc6jy45iIi9kxw1M0VTESZui/WJCicx8IWVa2/OduB4vgZitStOX2xYj1aSyj8sVbP1Dlba645TYSL1fg/HBbInZpguqGo5OY+wSpl+nCSugNXUJ1M2cp6D3IEjia6Mn103bYjUt4xDnyRD2aRP4Y8ptiTiG9983H
x-ms-exchange-antispam-messagedata: di+STHtZ1q1nJrPM1aQ3UqG4f4rRmEyiAZpHbvzvBZkV5IlUcn/dwiylg3F+sSGJ9fNhDnwtHqV8LDmj3ef/AykVWGYskXQTh2GIy/ihdKwSG1/bkV0YNE8jddkrsMo+9ls6Oj2nz7KxBu1XyA077ONA9Dlmb/yIM81GmGkU5en0n8arnZ8TQKUPEv8uz3/86gLUgFnMpo8HPYJ6v2eUfmN16MOAGyAEZTYkUKnzxBEY9E/W/8LPiNvT3/m/c/QdyYD45tjIDGpS/RiKUtAnp/8Va89LM16m2U7Cx/WxtMm2jWiGpL606T8eqqDwhPtNbCDHYnfZi3UtVFTtWuFbAuCC8VhXr69+Ty/b6gDUl3LU3xEKR8ffV3mRuN0JVa6/wdIP1wlAdNTTPDKYpimgjRjEJz/4+xWJk5joPHsDfO76BdRowbyB2sm4dI5yOe3WG9OUCPyc3KXw3B/yYHTSYRAX+Zvis0DKToHeG5wNDkqo616AdBH04DfaUy4WD2zOYmmaZPSSb5KuSDKZ2UtnzwkbA+RN4QFkG93QcshyGjIVTgLzEo5owdpRsxcTD+Jvpmsh3D7lCMFrfrO4f59XTEC6OMQTd6Dlo/FYoQSjCZwW14eckt26KJdy93Th8thKMCzH5jr8MOscpdu2h0Q+jCVt9qLpeiOwDcBrOJl9njm+hERfcStA6IpQnj5Zk+ZOmRaFsoQ3+114svoOAVWElmeD0KF+dZrIs6gmTihFIu6iDCWC9jK0ieD6ViLKDiQjChd3p9Co9yxgBpg2fsBEcU/ROFDgVKbHOIzBsccJkhU=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <8CD1D02831F17D47A2F6DAAD1418747D@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4376da8-e55a-4002-e2c3-08d7e9acc791
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2020 06:40:58.7281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p1v6gySxVlTeEOdw79KOQE0KZLD0npiSxxPgW9X6K/anYhjNTfPDZZ656bBOFkTvdL5XhGz7fSZG+qfOc9hdOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB7060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_234106_708105_11FF1C4C 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGksDQpJIGFtIHNlZWluZyBmb2xsb3dpbmcgc3BpbmxvY2sgYmFkIG1hZ2ljIGVycm9yIHdpdGgg
NS43LXJjMSsga2VybmVscw0Kb24gSGlGaXZlIFVubGVhc2hlZCBib2FyZC4gQnV0IGl0IGNvbnRp
bnVlcyB0byBib290IHdpdGhvdXQgYW55IG90aGVyDQppc3N1ZS4NCg0KSGVyZSBpcyB0aGUgcmVs
ZXZhbnQgYm9vdCBsb2c6DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KWyAgICAwLjM0NjQ5NF0gU2VyaWFsOiA4
MjUwLzE2NTUwIGRyaXZlciwgNCBwb3J0cywgSVJRIHNoYXJpbmcgZGlzYWJsZWQNClsgICAgMC4z
NTMyNjhdIDEwMDEwMDAwLnNlcmlhbDogdHR5U0lGMCBhdCBNTUlPIDB4MTAwMTAwMDAgKGlycSA9
IDEsDQpiYXNlX2JhdWQgPSAwKSBpcyBhIFNpRml2ZSBVQVJUIHYwDQpbICAgIDAuMzYxNzIwXSBC
VUc6IHNwaW5sb2NrIGJhZCBtYWdpYyBvbiBDUFUjMSwgc3dhcHBlci8wLzENClsgICAgMC4zNjcx
NzldICBsb2NrOiAweGZmZmZmZmUxZjZmNTYwMTgsIC5tYWdpYzogMDAwMDAwMDAsIC5vd25lcjoN
Cjxub25lPi8tMSwgLm93bmVyX2NwdTogMA0KWyAgICAwLjM3NTQyNV0gQ1BVOiAxIFBJRDogMSBD
b21tOiBzd2FwcGVyLzAgTm90IHRhaW50ZWQgNS43LjAtcmMyLQ0KMDAwMDQtZzQ3ZGZkNzUyY2Fk
MyAjMTQyDQpbICAgIDAuMzgzNTgwXSBDYWxsIFRyYWNlOg0KWyAgICAwLjM4NjEwOV0gWzxmZmZm
ZmZlMDAwMjAyNGM2Pl0gd2Fsa19zdGFja2ZyYW1lKzB4MC8weGE0DQpbICAgIDAuMzkxNTcyXSBb
PGZmZmZmZmUwMDAyMDI2YWM+XSBzaG93X3N0YWNrKzB4MmEvMHgzNA0KWyAgICAwLjM5NjcwM10g
WzxmZmZmZmZlMDAwNDZhMDllPl0gZHVtcF9zdGFjaysweDZhLzB4ODQNClsgICAgMC40MDE4MThd
IFs8ZmZmZmZmZTAwMDI0MzA2YT5dIHNwaW5fZHVtcCsweDY4LzB4NzQNClsgICAgMC40MDY4NTNd
IFs8ZmZmZmZmZTAwMDI0MmM4YT5dIGRvX3Jhd19zcGluX2xvY2srMHhiMC8weGNjDQpbICAgIDAu
NDEyNDk5XSBbPGZmZmZmZmUwMDA4NDE3MDA+XSBfcmF3X3NwaW5fbG9ja19pcnFzYXZlKzB4MjAv
MHgyYw0KWyAgICAwLjQxODY2NF0gWzxmZmZmZmZlMDAwNGQ5YzBjPl0gdWFydF9hZGRfb25lX3Bv
cnQrMHgyZjYvMHg0MDYNClsgICAgMC40MjQ1NjddIFs8ZmZmZmZmZTAwMDRlM2E5ND5dIHNpZml2
ZV9zZXJpYWxfcHJvYmUrMHgxODQvMHgyNzANClsgICAgMC40MzA2NDRdIFs8ZmZmZmZmZTAwMDYx
MzM3Yz5dIHBsYXRmb3JtX2Rydl9wcm9iZSsweDMyLzB4NWUNClsgICAgMC40MzY0NjVdIFs8ZmZm
ZmZmZTAwMDYxMWI2ZT5dIHJlYWxseV9wcm9iZSsweDlhLzB4MjFlDQpbICAgIDAuNDQxODQzXSBb
PGZmZmZmZmUwMDA2MTFkZjQ+XSBkcml2ZXJfcHJvYmVfZGV2aWNlKzB4MmUvMHg4OA0KWyAgICAw
LjQ0Nzc0N10gWzxmZmZmZmZlMDAwNjExZmM2Pl0gZGV2aWNlX2RyaXZlcl9hdHRhY2grMHg0Yy8w
eDUwDQpbICAgIDAuNDUzNzM4XSBbPGZmZmZmZmUwMDA2MTIwMDQ+XSBfX2RyaXZlcl9hdHRhY2gr
MHgzYS8weGFjDQpbICAgIDAuNDU5Mjk0XSBbPGZmZmZmZmUwMDA2MTAxNmE+XSBidXNfZm9yX2Vh
Y2hfZGV2KzB4NGEvMHg3Mg0KWyAgICAwLjQ2NDkzN10gWzxmZmZmZmZlMDAwNjExNjdhPl0gZHJp
dmVyX2F0dGFjaCsweDFhLzB4MjINClsgICAgMC40NzAzMjBdIFs8ZmZmZmZmZTAwMDYxMTFhYz5d
IGJ1c19hZGRfZHJpdmVyKzB4MTkyLzB4MTk4DQpbICAgIDAuNDc1OTY0XSBbPGZmZmZmZmUwMDA2
MTI0ZjI+XSBkcml2ZXJfcmVnaXN0ZXIrMHgzYS8weGQwDQpbICAgIDAuNDgxNTIwXSBbPGZmZmZm
ZmUwMDA2MTMzNDI+XQ0KX19wbGF0Zm9ybV9kcml2ZXJfcmVnaXN0ZXIrMHgzYS8weDQyDQpbICAg
IDAuNDg4MDM1XSBbPGZmZmZmZmUwMDAwMWZmNzA+XSBzaWZpdmVfc2VyaWFsX2luaXQrMHgzMC8w
eDUwDQpbICAgIDAuNDkzODU2XSBbPGZmZmZmZmUwMDAyMDAwZDA+XSBkb19vbmVfaW5pdGNhbGwr
MHg1MC8weDE1YQ0KWyAgICAwLjQ5OTQ5NF0gWzxmZmZmZmZlMDAwMDAyYzgwPl0ga2VybmVsX2lu
aXRfZnJlZWFibGUrMHgxNmEvMHgxZGUNClsgICAgMC41MDU2NjJdIFs8ZmZmZmZmZTAwMDgzY2Q1
Yz5dIGtlcm5lbF9pbml0KzB4MTIvMHgxMTgNClsgICAgMC41MTA5NTVdIFs8ZmZmZmZmZTAwMDIw
MTIwYT5dIHJldF9mcm9tX2V4Y2VwdGlvbisweDAvMHhjDQpbICAgIDAuNTE2NjQ3XSBwcmludGs6
IGNvbnNvbGUgW3R0eVNJRjBdIGVuYWJsZWQNClsgICAgMC41MTY2NDddIHByaW50azogY29uc29s
ZSBbdHR5U0lGMF0gZW5hYmxlZA0KWyAgICAwLjUyNTM4Ml0gcHJpbnRrOiBib290Y29uc29sZSBb
c2JpMF0gZGlzYWJsZWQNClsgICAgMC41MjUzODJdIHByaW50azogYm9vdGNvbnNvbGUgW3NiaTBd
IGRpc2FibGVkDQpbICAgIDAuNTM0Nzk5XSAxMDAxMTAwMC5zZXJpYWw6IHR0eVNJRjEgYXQgTU1J
TyAweDEwMDExMDAwIChpcnEgPSAyLA0KYmFzZV9iYXVkID0gMCkgaXMgYSBTaUZpdmUgVUFSVCB2
MA0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCg0KSSBoYXZlIG5vdCBkZWJ1Z2dlZCBmdXJ0aGVyLiBKdXN0IHdh
bnRlZCB0byBjaGVjayBpZiBhbnlib2R5IGVsc2UgYWxzbw0KaGFzIHNlZW4gdGhpcyBlcnJvci4N
Cg0KLS0gDQpSZWdhcmRzLA0KQXRpc2gNCg==

