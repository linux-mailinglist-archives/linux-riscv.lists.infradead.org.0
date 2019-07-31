Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E867B9A7
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 08:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jD1zanTvDFYh8+fekUShGQsGEMqhuGaUtQ5Kp5nhBp4=; b=q7bmcA2Gv6ZS9P
	1dvjo1n/aPQinnu2EIbaNTyocE00NyE0XD1DcVoCnxkIn6iw/DZmKNrpmYCqOqinyG8k/9lvcL6Bl
	JlFcfu7VUugQ/VN8ECMf7TxaExdJuCbAGTacXbwCxfLJOuiCPjnPo2dZkZIgkkT8dWO28ibWEmDRY
	7f5iyH9gWq9PRln1roC1MWrY5/gIGAiALXR68ijh4fARujahRM16skSNMAuYKkrdmfdrV4gO5zEWs
	pC7kG9qgPvmk1y7vIDqSFfxRF+qFkTBSOHa5rpVAaUiK8/NjTI487ESjJ14iu1MIeWmjRlogPTfUt
	lgyJ74EtYAN/Bk6Wp98g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsi64-000428-7W; Wed, 31 Jul 2019 06:28:24 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsi60-00040u-4l
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 06:28:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564554500; x=1596090500;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Eu6SnQnxj9vWiziHrtIWdaqOBvgayutKUnRGLtQ6FHQ=;
 b=kqJmBTKUPBDtFH1RmhF8bgIouUtehgN8Fx31plb7vt9hgFBRm59SsT/J
 4Rmi76YjapTg3nI3yDGU8+PoxfTnMfXGra1YMIxiZdOSfGQkl0TQ/8O/9
 8DhZ5VAkw4/qCwllUYINwFgITJP8o49byE5+H3cuobXKKNxaERKk+7rKS
 Ok64zNABT4h9UMq1jVf1NYAviHqmk3YkSkFai04Gce1SCw3ytZkaBGgBk
 cKaIt3gAUNlPO1qBHYdlMeYRNOknaz4PnWMO1VirG0r/A4jL/rF3yYgjC
 ZpUGV5Ht0gaF2X0iFTS5eK/Djp3vL98uD+PEHFDfUveTcrTAb05npowS7 A==;
IronPort-SDR: RtsYOSL9rCAPx+oJ6tHmYl5dnBH3272YBehxwkj6snDZQTgH8VfA87WwZZOSPoL+cjjR1QR2WA
 DLeyMMUN4g46mK778nGqGyD1RZTXaJrPZdn96fUEPMwCsCvHWb45fWuljzSp5yHrxFUSK40nDY
 tU7kkC167ZHy6shFru3QJj8EwMWNnYDekN/hvUBIwUzSnhg7PriN08dXtaLuG6iWEEgCvymJsb
 0o7Zb7iJrI/sFGTsXtHoqSZLFSA5OTBBTEAMBl7yUKQBdeEeue2x+5aIqEJ9N1+tKa/PsriaOT
 xBA=
X-IronPort-AV: E=Sophos;i="5.64,329,1559491200"; d="scan'208";a="221027131"
Received: from mail-co1nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.56])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 14:27:54 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4XQgwAScBEXEVHsS/cNfUVrABnMoS4VfaQO8EVKjz/ARpSyocfr4Lrfw1l8etdR3G3xp2l90GXfSMJqJn7qyZFgaQXtyhI1z4OlRigjZ9KacscTUGqFKx55p2N6+QJXXOGt6bM1sJNuoI9dPTbdWEmTQ83k7cK00yX9znTakbEIMsAWPbiFi98+lcsbcjkhbm5us4+5D9yLdPZbpDM+f5KdF0saygRh2HMFSf17JELbMWAGfhALgMH1jqZh0vMb3Erzo6sPgfnU1gw3jEwR0fA9+RcOtdZDos+cESGYYxlQEdFhL1s+upY3OAYeIk0BIdfkwMaVFaiYzd5Vdg+92A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eu6SnQnxj9vWiziHrtIWdaqOBvgayutKUnRGLtQ6FHQ=;
 b=Js9VOmbiDMV1qwXVXMLP60ZM6kDYJb3or+EfvL+a0EuMiASVBDXLhnJctNvICDn52TMEdu3JEEA8mWYcK/HYx4tG4oIgCTr7OkqSM3lyDi3ANZSX4fwpd/J6Y3Ytf9CS9BUe4trETq8HIR7hKB3c+mgihQS/SOkzWIdXexvInQOEeDZWYq3iL/r1Bv17Jd2SBubsfuJLeTbeaz8KSlbZJ0YMKI0M6JCZGlBNfzifdM2/TTMNOK5aPdd4GXwjEcGWndAIDYbP2n24l35P3tL5FGoceHFRvspfY78vUO2BfDBLiCMvZ42uh58sgJYKlLwLLSHJLYY0b0+Zkibkwb4h5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eu6SnQnxj9vWiziHrtIWdaqOBvgayutKUnRGLtQ6FHQ=;
 b=bHZeNsFsUcv80y5WMdtf9ndjeFcxf2i262ZmoU5Rjn0h5aj4QUmgI8zP6ORBTmfQ1/iJlD+dXMElsy0PLxVF3NFa0FVwbxRhUb01guE0npJDMDywQZvtpmwHeDCgF8Cxl92Tu3Xu60QU8nkG3i09KO65AovybEbIDq0wrhyWXP4=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4776.namprd04.prod.outlook.com (52.135.240.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 06:27:53 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 06:27:53 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v2 2/5] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
Thread-Topic: [PATCH v2 2/5] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
Thread-Index: AQHVRz64X7DzcyoVsEmI5maeaXLIm6bkIN4A//+tdQA=
Date: Wed, 31 Jul 2019 06:27:53 +0000
Message-ID: <99D22117-E146-44BE-93B5-5D25367931C7@wdc.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
 <20190731012418.24565-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907302117420.15340@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907302117420.15340@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:e4f3:9b1f:f663:964b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4b94bfd-e780-443f-c067-08d7158037d1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4776; 
x-ms-traffictypediagnostic: BYAPR04MB4776:
x-microsoft-antispam-prvs: <BYAPR04MB4776EE19F630E6F1C9F72FA3FADF0@BYAPR04MB4776.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(39860400002)(376002)(396003)(136003)(366004)(199004)(189003)(6506007)(46003)(8936002)(33656002)(110136005)(14454004)(2906002)(316002)(66574012)(229853002)(99286004)(478600001)(5660300002)(54906003)(71200400001)(81156014)(71190400001)(7736002)(81166006)(8676002)(186003)(53936002)(66946007)(256004)(6486002)(2616005)(6512007)(6116002)(6636002)(7416002)(305945005)(11346002)(36756003)(68736007)(486006)(64756008)(66446008)(66556008)(76116006)(476003)(25786009)(76176011)(446003)(4326008)(66476007)(6246003)(86362001)(6436002)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4776;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /m0yplLvAOZTnEs1Ova9zHAa7wXjRSiEKgDMY/yvBFj23qZiKm3ns5RMC9MiUxAuwt8ZQKLsTv+xiOjOeMFrhbeVDZFwICyK8GoS/epHZkhJpuuAAgNj4XuFoc5kv6NtCCi0V+WFxUmWp6LWvFvyWEx3dnyhJzOj3YJuPc2tNGbPJqzXZ/UFuMEq/xY+KBfdxzUC1edBTDqRAAKSL6TanlkZus6aiOUS3t312CIrWPQ++P3TAXQVm4UaeKw5qjYsipoKPBxKJ0dzfM0U9jLRkuKeYVf+Gr+ZywiJtlXwEe/KMd/1Ofg0jgBb0/klJA8ysIVT6KkDVa/+6KVlu5BUcgkV5ZyVcEYJ+S/eHdvYNDMVC+sFzO1+ajPgrcJkznxU7N9wogbe9eXbzCBxkLZdlqNZ3uxbOjDNKr7qUw1hm70=
Content-ID: <D62938AF8F17DE40A7ECED87E25FFF3B@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4b94bfd-e780-443f-c067-08d7158037d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 06:27:53.1455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4776
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_232820_307925_CF62AAB3 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDcvMzAvMTksIDk6MjMgUE0sICJQYXVsIFdhbG1zbGV5IiA8cGF1bC53YWxtc2xl
eUBzaWZpdmUuY29tPiB3cm90ZToNCg0KICAgIE9uIFR1ZSwgMzAgSnVsIDIwMTksIEF0aXNoIFBh
dHJhIHdyb3RlOg0KICAgIA0KICAgID4gRnJvbTogQW51cCBQYXRlbCA8YW51cC5wYXRlbEB3ZGMu
Y29tPg0KICAgID4gDQogICAgPiBUaGlzIHBhdGNoIGFkZHMgcmlzY3ZfaXNhIGludGVnZXIgdG8g
cmVwcmVzZW50IElTQSBmZWF0dXJlcyBjb21tb24NCiAgICA+IGFjcm9zcyBhbGwgQ1BVcy4gVGhl
IHJpc2N2X2lzYSBpcyBub3Qgc2FtZSBhcyBlbGZfaHdjYXAgYmVjYXVzZQ0KICAgID4gZWxmX2h3
Y2FwIHdpbGwgb25seSBoYXZlIElTQSBmZWF0dXJlcyByZWxldmFudCBmb3IgdXNlci1zcGFjZSBh
cHBzDQogICAgPiB3aGVyZWFzIHJpc2N2X2lzYSB3aWxsIGhhdmUgSVNBIGZlYXR1cmVzIHJlbGV2
YW50IHRvIGJvdGgga2VybmVsDQogICAgPiBhbmQgdXNlci1zcGFjZSBhcHBzLg0KICAgID4gDQog
ICAgPiBPbmUgb2YgdGhlIHVzZSBjYXNlIGlzIEtWTSBoeXBlcnZpc29yIHdoZXJlIHJpc2N2X2lz
YSB3aWxsIGJlIHVzZWQNCiAgICA+IHRvIGRvIGZvbGxvd2luZyBvcGVyYXRpb25zOg0KICAgID4g
DQogICAgPiAxLiBDaGVjayB3aGV0aGVyIGh5cGVydmlzb3IgZXh0ZW5zaW9uIGlzIGF2YWlsYWJs
ZQ0KICAgID4gMi4gRmluZCBJU0EgZmVhdHVyZXMgdGhhdCBuZWVkIHRvIGJlIHZpcnR1YWxpemVk
IChlLmcuIGZsb2F0aW5nDQogICAgPiAgICBwb2ludCBzdXBwb3J0LCB2ZWN0b3IgZXh0ZW5zaW9u
LCBldGMuKQ0KICAgID4gDQogICAgPiBTaWduZWQtb2ZmLWJ5OiBBbnVwIFBhdGVsIDxhbnVwLnBh
dGVsQHdkYy5jb20+DQogICAgPiBTaWduZWQtb2ZmLWJ5OiBBdGlzaCBQYXRyYSA8YXRpc2gucGF0
cmFAd2RjLmNvbT4NCiAgICA+IC0tLQ0KICAgID4gIGFyY2gvcmlzY3YvaW5jbHVkZS9hc20vaHdj
YXAuaCB8IDI1ICsrKysrKysrKysrKysrKysrKysrKw0KICAgID4gIGFyY2gvcmlzY3Yva2VybmVs
L2NwdWZlYXR1cmUuYyB8IDQxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0NCiAg
ICA+ICAyIGZpbGVzIGNoYW5nZWQsIDYzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQog
ICAgPiANCiAgICA+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2h3Y2FwLmgg
Yi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2h3Y2FwLmgNCiAgICA+IGluZGV4IDdlY2I3YzZhNTdi
MS4uZTA2OWY2MGFkNWQyIDEwMDY0NA0KICAgID4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRlL2Fz
bS9od2NhcC5oDQogICAgPiArKysgYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2h3Y2FwLmgNCiAg
ICA+IEBAIC0yMiw1ICsyMiwzMCBAQCBlbnVtIHsNCiAgICA+ICB9Ow0KICAgID4gIA0KICAgID4g
IGV4dGVybiB1bnNpZ25lZCBsb25nIGVsZl9od2NhcDsNCiAgICA+ICsNCiAgICA+ICsjZGVmaW5l
IFJJU0NWX0lTQV9FWFRfQQkJKDFVTCA8PCAoJ0EnIC0gJ0EnKSkNCiAgICANCiAgICBBcmUgdGhl
c2UgdXBwZXJjYXNlIHZhcmlhbnRzIHN0aWxsIG5lZWRlZCBpZiB3ZSBkZWZpbmUgdGhlIElTQSBz
dHJpbmcgdG8gDQogICAgYmUgYWxsIGxvd2VyY2FzZSwgcGVyIG91ciByZWNlbnQgZGlzY3Vzc2lv
bj8NCiAgICANCkFyZ2guIFNvcnJ5LiBXZSBoYXZlIGJlZW4gY2FycnlpbmcgdGhpcyBwYXRjaCBz
byBsb25nIHRoYXQgSSBjb21wbGV0ZWx5IGZvcmdvdCBhYm91dCB0aGUNCmNhc2Ugc2Vuc2l0aXZl
IHVzYWdlIGhlcmUuDQoNCiAgICA+ICsjZGVmaW5lIFJJU0NWX0lTQV9FWFRfYQkJUklTQ1ZfSVNB
X0VYVF9BDQogICAgPiArI2RlZmluZSBSSVNDVl9JU0FfRVhUX0MJCSgxVUwgPDwgKCdDJyAtICdB
JykpDQogICAgPiArI2RlZmluZSBSSVNDVl9JU0FfRVhUX2MJCVJJU0NWX0lTQV9FWFRfQw0KICAg
ID4gKyNkZWZpbmUgUklTQ1ZfSVNBX0VYVF9ECQkoMVVMIDw8ICgnRCcgLSAnQScpKQ0KICAgID4g
KyNkZWZpbmUgUklTQ1ZfSVNBX0VYVF9kCQlSSVNDVl9JU0FfRVhUX0QNCiAgICA+ICsjZGVmaW5l
IFJJU0NWX0lTQV9FWFRfRgkJKDFVTCA8PCAoJ0YnIC0gJ0EnKSkNCiAgICA+ICsjZGVmaW5lIFJJ
U0NWX0lTQV9FWFRfZgkJUklTQ1ZfSVNBX0VYVF9GDQogICAgPiArI2RlZmluZSBSSVNDVl9JU0Ff
RVhUX0gJCSgxVUwgPDwgKCdIJyAtICdBJykpDQogICAgPiArI2RlZmluZSBSSVNDVl9JU0FfRVhU
X2gJCVJJU0NWX0lTQV9FWFRfSA0KICAgID4gKyNkZWZpbmUgUklTQ1ZfSVNBX0VYVF9JCQkoMVVM
IDw8ICgnSScgLSAnQScpKQ0KICAgID4gKyNkZWZpbmUgUklTQ1ZfSVNBX0VYVF9pCQlSSVNDVl9J
U0FfRVhUX0kNCiAgICA+ICsjZGVmaW5lIFJJU0NWX0lTQV9FWFRfTQkJKDFVTCA8PCAoJ00nIC0g
J0EnKSkNCiAgICA+ICsjZGVmaW5lIFJJU0NWX0lTQV9FWFRfbQkJUklTQ1ZfSVNBX0VYVF9NDQog
ICAgPiArI2RlZmluZSBSSVNDVl9JU0FfRVhUX1MJCSgxVUwgPDwgKCdTJyAtICdBJykpDQogICAg
PiArI2RlZmluZSBSSVNDVl9JU0FfRVhUX3MJCVJJU0NWX0lTQV9FWFRfUw0KICAgID4gKyNkZWZp
bmUgUklTQ1ZfSVNBX0VYVF9VCQkoMVVMIDw8ICgnVScgLSAnQScpKQ0KICAgID4gKyNkZWZpbmUg
UklTQ1ZfSVNBX0VYVF91CQlSSVNDVl9JU0FfRVhUX1UNCiAgICA+ICsNCiAgICA+ICtleHRlcm4g
dW5zaWduZWQgbG9uZyByaXNjdl9pc2E7DQogICAgPiArDQogICAgPiArI2RlZmluZSByaXNjdl9p
c2FfZXh0ZW5zaW9uX2F2YWlsYWJsZShleHRfY2hhcikJXA0KICAgID4gKwkJKHJpc2N2X2lzYSAm
IFJJU0NWX0lTQV9FWFRfIyNleHRfY2hhcikNCiAgICA+ICsNCiAgICA+ICAjZW5kaWYNCiAgICA+
ICAjZW5kaWYNCiAgICA+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2tlcm5lbC9jcHVmZWF0dXJl
LmMgYi9hcmNoL3Jpc2N2L2tlcm5lbC9jcHVmZWF0dXJlLmMNCiAgICA+IGluZGV4IGIxYWRlOWE0
OTM0Ny4uMTc3NTI5ZDQ4ZDg3IDEwMDY0NA0KICAgID4gLS0tIGEvYXJjaC9yaXNjdi9rZXJuZWwv
Y3B1ZmVhdHVyZS5jDQogICAgPiArKysgYi9hcmNoL3Jpc2N2L2tlcm5lbC9jcHVmZWF0dXJlLmMN
CiAgICANCiAgICBbIC4uLiBdDQogICAgDQogICAgPiBAQCAtNDMsOCArNDksMjIgQEAgdm9pZCBy
aXNjdl9maWxsX2h3Y2FwKHZvaWQpDQogICAgPiAgCQkJY29udGludWU7DQogICAgPiAgCQl9DQog
ICAgPiAgDQogICAgPiAtCQlmb3IgKGkgPSAwOyBpIDwgc3RybGVuKGlzYSk7ICsraSkNCiAgICA+
ICsJCWkgPSAwOw0KICAgID4gKwkJaXNhX2xlbiA9IHN0cmxlbihpc2EpOw0KICAgID4gKyNpZiBk
ZWZpbmVkKENPTkZJR18zMkJJVCkNCiAgICA+ICsJCWlmIChzdHJuY2FzZWNtcChpc2EsICJydjMy
IiwgNCkgIT0gMCkNCiAgICANCiAgICBzdHJjbXAoKT8NCiAgICANCiAgICA+ICsJCQlpICs9IDQ7
DQogICAgPiArI2VsaWYgZGVmaW5lZChDT05GSUdfNjRCSVQpDQogICAgPiArCQlpZiAoc3RybmNh
c2VjbXAoaXNhLCAicnY2NCIsIDQpICE9IDApDQogICAgDQogICAgQW5kIGFnYWluIGhlcmU/DQog
ICAgDQogICAgPiArCQkJaSArPSA0Ow0KICAgID4gKyNlbmRpZg0KICAgID4gKwkJZm9yICg7IGkg
PCBpc2FfbGVuOyArK2kpIHsNCiAgICA+ICAJCQl0aGlzX2h3Y2FwIHw9IGlzYTJod2NhcFsodW5z
aWduZWQgY2hhcikoaXNhW2ldKV07DQogICAgPiArCQkJaWYgKCdhJyA8PSBpc2FbaV0gJiYgaXNh
W2ldIDw9ICd6JykNCiAgICA+ICsJCQkJdGhpc19pc2EgfD0gKDFVTCA8PCAoaXNhW2ldIC0gJ2En
KSk7DQogICAgPiArCQkJaWYgKCdBJyA8PSBpc2FbaV0gJiYgaXNhW2ldIDw9ICdaJykNCiAgICA+
ICsJCQkJdGhpc19pc2EgfD0gKDFVTCA8PCAoaXNhW2ldIC0gJ0EnKSk7DQogICAgDQogICAgQXJl
IHRoZXNlIHVwcGVyY2FzZSB2YXJpYW50cyBzdGlsbCBuZWVkZWQ/DQogICAgDQpOb3BlLiBTYW1l
IGFzIGFib3ZlIGNvbW1lbnQuIEFwb2xvZ2llcyBmb3IgZm9yZ2V0dGluZyBhYm91dCB0aGVzZSB1
c2FnZXMuDQpJIHdpbGwgc2VuZCBhIHYzIHJlbW92aW5nIHRoZW0uDQogDQpSZWdhcmRzLA0KQXRp
c2ggICANCiAgICAtIFBhdWwNCiAgICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yaXNjdgo=
