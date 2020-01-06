Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9BA130FC9
	for <lists+linux-riscv@lfdr.de>; Mon,  6 Jan 2020 10:54:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+gm1Br1CHUtUOfgm+A45dSW91JgI1NL3xTYIa8s1JGo=; b=J0r/Jy0XaYCfhOsLSmoYEnTH9
	Z4ruUXRXORIvnQz5zXNkAN46mnM/hbDGT3Y7kn6KzFTpIzjymGbkyVf0dcBTVwXj9Rep7ZUbDirIM
	EeQreV8EsnHlbDxyydP8lM4RSilWL2CjfKVLm2T3iJfIADrBK4j0x5787oUQ/eLQh4BOd4+0VYinU
	vzWiR9FUpi8oPNksm4iY4s+KCxjlyG3LVwZLvTIxF6kIaTuSNjuDTBXBIZS6CcJYk9/HXkkSOXTbF
	jP+am4/DbJDW1/Nap9kz4iGnMk8yORc2y8ntvX6yTNx6Gtyol/nFJghKn1MvTtE5DogWn2OR9u8Gp
	YgovJ4y/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioP5Y-0003Kk-Av; Mon, 06 Jan 2020 09:54:20 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioP5B-0002zK-KM; Mon, 06 Jan 2020 09:53:58 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: zRYaw4MeO4BFWFLdqJXvUY4C8JTd6rsGJCwIJ8YlLTugfq0JmWZaPogmdcwBHuWUZ++ko7DEGD
 BJJGNFA57Sl79e73vBQSMa6SCMiY4i9i91fTHYXugjtElNw5uB78HquFSr8yexIUHXrkYEksaY
 YvegeIvKQ+aitDPClbUEfrYNlhUCrbKtKUrmTH155eMDQljBsWiXKOrNC3/Ri4FJfVnyTjtadA
 KYRORygrteaJ/5RBN6OIwm3rcfgKZiqIdTgpy7okIqMBSSt1X2VAIhDb3/zWQobDcwsmUwkdp+
 GYk=
X-IronPort-AV: E=Sophos;i="5.69,402,1571727600"; d="scan'208";a="62304574"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jan 2020 02:53:56 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Jan 2020 02:53:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 6 Jan 2020 02:53:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M6+sOCUNgE+sv79pOH7kUbSG9qURMPA1dAm5fxhtIfOdllB7j8oOQUXuq4UVPDH3K6kyZ84lRz2s5YVfeQPPQR8QIQAY9l+Ux86ST8Ct7iVL2dLyLxKY1quJKVFTo6ttkmzgQqo8Rp6PMu7N3ufe+8TD6KoaKS5ZreGOxG9UjmMgx6DzVWKJyCzr77teNi69BbgzQ4/mno0VE+/lJinyVtU2IdF43ljxiOADQjJhBzRQnhSD3iQW5miSz5gXILRA4kehDRaXYzW72mH6WNSGuFpEk6wB3le/4EYQgiByvjr54XzOdeu/T8wDVRlgVZTKMjyzx/Ru0Pn2YoQfdbhfZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+gm1Br1CHUtUOfgm+A45dSW91JgI1NL3xTYIa8s1JGo=;
 b=a0U49dyvkiMBMRgGGE00g5gvxs8k7jlVrAdhhlRinlVULsPnQTDXEguRKZkL1KONA7HTvyN9sn/J83CUm84GhGAwQqDWutNz3BkFQ/KixS3MWq7dN5sOZe3OFL4HllS4IkrpAF9PWZ0fDZ43P7KjqsAIF8g1wGNA3DOpWnesICVwV05CRTk9bHmguTgrVdu6T5Wu9l/k3NzEjYfH7GZvQblk1lME19wIAxCxMcnN8ggPNXUB4NBD/WciEaOfVoDvvwCgGZmv7kfVy6TkePwvynMC6j+dFeESgb9rPag5Wzi+Oi1QXVdcPdC5CCOkOPxGCy1biZatXK9+TOydK+Qfrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+gm1Br1CHUtUOfgm+A45dSW91JgI1NL3xTYIa8s1JGo=;
 b=ObK9NWuOUA2Ra5xdx/mS3cPhEFFH1X0iYxOt9W+7P5FUopxHqJOk0L7ZjvI1nKqNtyOBL8UGJvMnC+AwMskDCxkQ+RH7pvnpXckbg+aKZomFbpBhTEyJ7weDynWu1hszOHfmSZZ5TjRssoZBKQDThbIM5FWS/nyb61QnU6pZjyU=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3868.namprd11.prod.outlook.com (10.255.61.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Mon, 6 Jan 2020 09:53:53 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb%7]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 09:53:53 +0000
From: <Claudiu.Beznea@microchip.com>
To: <krzk@kernel.org>, <thierry.reding@gmail.com>,
 <u.kleine-koenig@pengutronix.de>, <linux-pwm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <bcm-kernel-feedback-list@broadcom.com>,
 <linux-rpi-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
 <linux-riscv@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <linux-tegra@vger.kernel.org>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Thread-Topic: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Thread-Index: AQHVxHc0gN2UoP7Gc0Ocsx6/BxJUcA==
Date: Mon, 6 Jan 2020 09:53:53 +0000
Message-ID: <145f61f5-941b-d0f4-7abd-33ce7f005fca@microchip.com>
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
In-Reply-To: <20191230172113.17222-2-krzk@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd98d837-f71d-4669-e076-08d7928e56fe
x-ms-traffictypediagnostic: DM6PR11MB3868:
x-microsoft-antispam-prvs: <DM6PR11MB386839E19F8AE22C56AED43D873C0@DM6PR11MB3868.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(39860400002)(136003)(366004)(189003)(199004)(66476007)(478600001)(66556008)(64756008)(8676002)(2616005)(66446008)(31686004)(6506007)(66946007)(53546011)(91956017)(76116006)(26005)(186003)(71200400001)(7416002)(110136005)(316002)(6486002)(8936002)(2906002)(558084003)(86362001)(5660300002)(6512007)(31696002)(36756003)(81156014)(81166006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3868;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wOMKXiNGziR8dv9gol0oOsf6AU3jg0EgTcvPeER6oGWQ/VHSV6mZ4G35IavOvUWvfJowh6rCgEhlk8dQaHqqGFPgluMQ/mqNOqzZVUbtBXvd+M8DHE4Ih/QhaACanEKd2yY2+hKwmKfmIpxc1EDyNlGPemaiqh/eovfKhRtnMxavwU1Rh5GcI/Bfjng/YCxdkty/e8RkHg/iDVeRjL+c/LvR4hzUbhvVz3lKSJuB5ISxB3wNgEJGnvL8HRHkVq0weTLXARW5wg0/ogGuGqlsHjEi26ZJ9uuAZdKfXOph3zN5gzzRsREIrYqQtIndwiq3oYxJ7K+SEPHCJN1cZszNc3RUqF6sq9ENqwWlsZVSQaJswTwMjrUgUQEtDbwvv2LYq+67tv/sGjVbjPS4m9b4PUGsbsVMg053jU9TpUZuCpkkSbnD/5hZPBztOan2HJK8UmTIUVrmLulShBaKbP3pI4lxjuCXzYZMVtW9YYwU/x5yVUIMoaO/gPvVe18u5JSW
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <C6A04D4974AB244693C3B9F0D1537D34@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cd98d837-f71d-4669-e076-08d7928e56fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 09:53:53.6461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3t7GXAiHVzcYWfgg7rs7BGYg4AhBXFOdWKJswiYpNOQZcRLxnjLB8thujRLTCNbSdB/NeinF2BmkaKx5I9MFDTEFmIV3xzqyWRswi5WXJcE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_015357_678495_F691050E 
X-CRM114-Status: UNSURE (   4.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCk9uIDMwLjEyLjIwMTkgMTk6MjEsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6DQo+IFNv
bWUgb2YgdGhlIFBXTSBkcml2ZXJzIGNhbiBiZSBjb21waWxlIHRlc3RlZCB0byBpbmNyZWFzZSBi
dWlsZA0KPiBjb3ZlcmFnZS4NCj4gDQo+IFRoZSBNZXNvbiBQV00gZHJpdmVyIHJlcXVpcmVzIENP
TU1PTl9DTEsgZGVwZW5kZW5jeS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3ps
b3dza2kgPGtyemtAa2VybmVsLm9yZz4NCg0KZm9yIFBXTV9BVE1FTDoNCkFja2VkLWJ5OiBDbGF1
ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWFAbWljcm9jaGlwLmNvbT4=

