Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C8B110546
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 20:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mfc3z6xu/tdR6QRl1v+jHb7R7Va2vQ9UYQrF+DqXqz8=; b=l9q0WMamzbR1WnS9t0fxbVr4t
	j7y8Hsl8nyGIFvX3WYDrNja1GGNZI97mUZRWl+nHkRBvkIlWGwN0TR2yo9ldeXn+mBniFm5jmQmKz
	MjpjrfqjoBW0nZlN3rPUWpmBDjAeUZiL3sQ6b9NOqLEElH/SfG5wltDZxiPbbx+60ORVnZdmdY94P
	BP8yrIo3M6ew/nTMs8Tp4THCSUycW6Cg9cuddN0xvniGuxNxmGNbXjes30TqpP/4qGvffnMOigCAB
	ziihXgNajSRN/HRIEHknBxVN+SjvbBpLHowtmGFOoJhbMqZvZhecZ7ojLvxxw2Ux7+vYNmsvx1EeW
	XscKYXYeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDx0-0003Q2-Bk; Tue, 03 Dec 2019 19:35:10 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDwi-0003JG-Ce
 for linux-riscv@lists.infradead.org; Tue, 03 Dec 2019 19:34:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575401692; x=1606937692;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mfc3z6xu/tdR6QRl1v+jHb7R7Va2vQ9UYQrF+DqXqz8=;
 b=YnQHhwI4onI8UnzEOWkQSXHZAw7jxY/5js2BQhhYwkts4UDnXduOZfAq
 Qc3DDPtXA1tUFdqspWDKr2N6Ej859I/RNjarUhre5yBKedHW4syJEs8lT
 QJu4BTs9dhLKBuJtxKEcniw462dPku8bHHaoVToBDkSC+P7N8lQTqPsW8
 MZ+2bLB6SNxATJ+moed4l9cN4WPiiQLPbsk/QHRqeKzsYzfuKlL2f9fTk
 3PMRqzqT30gjUavecl8UFyPBuPc/8YSrUx/MfFWnqyG4wBSfCAGBuoH5y
 qHNqLtRhYGWpP2/9wuVqVvMHv4MqVpJHT0Fk2sTykxXi3K0obhIPLFY0R A==;
IronPort-SDR: 6+hciHoeezZvAMndFalxIaLDYOD2XWyRNF+mUCj8SMsvuEOIvIDG/VHt/+1DKgxwJyoN2s41Ua
 CqfRedEWsgw2bICTFfgmjFLKB/miIa+aCrLejgz2xXVvD2uAGTKdTqicW44k7TP5hoQ7ibCg/P
 EMmVrlGa2pSdzCjXUVwNTEMzuZogYMW2wVCXPIXQluufHaHSOy1F+r/ac/vAHrKiAUTcmU1Nt8
 WGItU8iDqx88gQZ29vmZ7qGkAjlzj41hHRGkAyB8SHepaDRV89AUd7FLyd/frleuaHHz9vIUTG
 cwg=
X-IronPort-AV: E=Sophos;i="5.69,274,1571673600"; d="scan'208";a="126140235"
Received: from mail-co1nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.55])
 by ob1.hgst.iphmx.com with ESMTP; 04 Dec 2019 03:34:51 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/GpJOgVJO5h1lJunIFqJ0mE/+efKb8y2xxkoOb1BBJBMbTKJnGwds6bMxPvqtusSqB3eFWc0vn9uuJQ2LGriRuFt20pfVqiRTpGSExBewxL0RXdmUD/6mqjMvmdz09jvHAGfgubWqbKm6k/2JqWTSgWgpJ3FlAZdF25LfctkJ8ioHBYUy4Wnd/9leYu3eIkNE5Uike40vUenEDGoCMFRamR3qFw3E0+0MclO+W2Wfmc4tCdqW3vKQ5J3aRNmVtyNyvDdmvxOMrqpHCCobjYbb9A97oIhxaARAbmkIfzFVYOHo8mOgiHNG6p8kX2CQ3qgvVumVVcX2AQXGZZRiydAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mfc3z6xu/tdR6QRl1v+jHb7R7Va2vQ9UYQrF+DqXqz8=;
 b=YMuTKiERPg1a0gQ1Iurk05t6et5FqoDHtu4o7rusCTn3FKnCTbeionsuArgzf37r7zRwaO7gQWyCq/shlc0LBcNctx35bI1gUBegx2U1KrME+wwipTb2skAuiai1z5t4K2fdw0Uy4ksdMohbvvH9huRZ68+tcK4Eo2tcR30mHtqdf2Ase04aDdRS1icthXPGmtorwWw8uQ7yZKkOh7Svcvzv3KAU+2NzhFSzLsomNdl9RrbGyz6RDkZW2IAm69jAEkwJMSRBuaf67kD+Zc9wrd6u3QSWWfWioiYj8pvFUyTkWC+O86B5p1gMZOUSXkfnaCCGcE+v5lqZvSO1RT0ZXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mfc3z6xu/tdR6QRl1v+jHb7R7Va2vQ9UYQrF+DqXqz8=;
 b=QQ0PQmdtFUx+xWxpC9D3TQ/Qp0KRD6xm/RPYZFMZLpc/kaBYRfauh/2/eRSzFu1Nak2m5Nl9HARVT8LnP2vZN1azw3OYpEsUXBpCofDP070pS1NBoOI3nnjg3PyNydkw/42FKS/byFTqqfQRoh6xPI0raP6vcvw5yLfU9PKHTi0=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4951.namprd04.prod.outlook.com (52.135.232.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Tue, 3 Dec 2019 19:34:50 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11%7]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 19:34:50 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, Anup Patel <Anup.Patel@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v2 4/4] RISC-V: Select Goldfish RTC driver for QEMU virt
 machine
Thread-Topic: [PATCH v2 4/4] RISC-V: Select Goldfish RTC driver for QEMU virt
 machine
Thread-Index: AQHVqYywhAESsLkgyU61ggXDSaqsqqeozM6A
Date: Tue, 3 Dec 2019 19:34:50 +0000
Message-ID: <f0a7eeea1f344f80a46398e307f237363f661c80.camel@wdc.com>
References: <20191203034909.37385-1-anup.patel@wdc.com>
 <20191203034909.37385-5-anup.patel@wdc.com>
In-Reply-To: <20191203034909.37385-5-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b5f7b043-0531-473e-e08b-08d77827dd14
x-ms-traffictypediagnostic: BYAPR04MB4951:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB495118356A3DE318B773746F90420@BYAPR04MB4951.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(199004)(189003)(8676002)(86362001)(8936002)(6506007)(76176011)(2501003)(81166006)(81156014)(26005)(2616005)(118296001)(229853002)(102836004)(11346002)(36756003)(478600001)(6486002)(446003)(14454004)(316002)(6512007)(66476007)(66946007)(76116006)(2906002)(7736002)(6246003)(54906003)(71200400001)(110136005)(66556008)(6436002)(71190400001)(66446008)(5660300002)(64756008)(2171002)(186003)(6116002)(4326008)(3846002)(25786009)(14444005)(99286004)(256004)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4951;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uzhqj+q/P/uCeBI33jLYUmcpgSavjKeHYkwSUFQ5IZGSOeE7dRZTU2H7sIYR+hjeuCaMSTdjg60qBaiLy2qFLUurdGt/4LzMCHRfjv1T0ztAdp6cx3IaoFCzVQyQ5bgDZr3oRe+IPd1a3VIDBemjBmHEVtDsqW2STOo2ejx7SAGZ5lM+PjfUR+Avjx7FtpKdus+QNxofrbM1z8erfIECjUwr1m+NF2ylsujd+cQp5CDSMZd0I8aivXUkGWlCTbYusAsnA9ufcBCKvCv0ue7X+OfCO6xYgIQd8HxMrav9fEk9Y46pd6vogASIUBeJgeff2Mb1VDS3GlAdki6cgns9odlGDV6kenzhaD+AcRtsu9k24QCxdNpsT8bHVECdSp1Evf4oU0KyPDb6BRACeG5b1oOVFuQQKoDt11Uum8rnnpG3ycp45L6enPMn/OukTqFY
Content-Type: text/plain; charset="utf-8"
Content-ID: <1275B79FD287034C93514474232E2E3E@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5f7b043-0531-473e-e08b-08d77827dd14
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 19:34:50.2556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nonfqCseYnVq2O7gZvRe0E4g1wDuileVR8t936zbOxiXofOhuTiI0wwqkjWCF3lQOuH5U0UehjiZ7Lnz6RTDwqERb/aIwf+MttluajRw0FE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_113452_580113_F04D6768 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEyLTAzIGF0IDAzOjQ5ICswMDAwLCBBbnVwIFBhdGVsIHdyb3RlOg0KPiBX
ZSBzZWxlY3QgR29sZGZpc2ggUlRDIGRyaXZlciB1c2luZyBRRU1VIHZpcnQgbWFjaGluZSBrY29u
ZmlnIG9wdGlvbg0KPiB0byBhY2Nlc3MgUlRDIGRldmljZSBvbiBRRU1VIHZpcnQgbWFjaGluZS4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFudXAgUGF0ZWwgPGFudXAucGF0ZWxAd2RjLmNvbT4NCj4g
UmV2aWV3ZWQtYnk6IEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3ZGMuY29tPg0KPiBSZXZpZXdl
ZC1ieTogUGFsbWVyIERhYmJlbHQgPHBhbG1lcmRhYmJlbHRAZ29vZ2xlLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IEFsaXN0YWlyIEZyYW5jaXMgPGFsaXN0YWlyLmZyYW5jaXNAd2RjLmNvbT4NCg0KQWxp
c3RhaXINCg0KPiAtLS0NCj4gIGFyY2gvcmlzY3YvS2NvbmZpZy5zb2NzICAgICAgICAgICB8IDIg
KysNCj4gIGFyY2gvcmlzY3YvY29uZmlncy9kZWZjb25maWcgICAgICB8IDEgKw0KPiAgYXJjaC9y
aXNjdi9jb25maWdzL3J2MzJfZGVmY29uZmlnIHwgMSArDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvS2NvbmZpZy5zb2Nz
IGIvYXJjaC9yaXNjdi9LY29uZmlnLnNvY3MNCj4gaW5kZXggYmFlNDkwN2I0ODgwLi42NWNmMzk4
NjdjNjAgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvcmlzY3YvS2NvbmZpZy5zb2NzDQo+ICsrKyBiL2Fy
Y2gvcmlzY3YvS2NvbmZpZy5zb2NzDQo+IEBAIC0yOCw2ICsyOCw4IEBAIGNvbmZpZyBTT0NfVklS
VA0KPiAgICAgICAgIHNlbGVjdCBWSVJUSU9fSU5QVVQNCj4gICAgICAgICBzZWxlY3QgUE9XRVJf
UkVTRVRfU1lTQ09ODQo+ICAgICAgICAgc2VsZWN0IFBPV0VSX1JFU0VUX1NZU0NPTl9QT1dFUk9G
Rg0KPiArICAgICAgIHNlbGVjdCBHT0xERklTSA0KPiArICAgICAgIHNlbGVjdCBSVENfRFJWX0dP
TERGSVNIDQo+ICAgICAgICAgc2VsZWN0IFNJRklWRV9QTElDDQo+ICAgICAgICAgaGVscA0KPiAg
ICAgICAgICAgVGhpcyBlbmFibGVzIHN1cHBvcnQgZm9yIFFFTVUgVmlydCBNYWNoaW5lLg0KPiBk
aWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9jb25maWdzL2RlZmNvbmZpZw0KPiBiL2FyY2gvcmlzY3Yv
Y29uZmlncy9kZWZjb25maWcNCj4gaW5kZXggYmYzM2JkNDBlZTA3Li5jNWUwNDM4NGVjM2QgMTAw
NjQ0DQo+IC0tLSBhL2FyY2gvcmlzY3YvY29uZmlncy9kZWZjb25maWcNCj4gKysrIGIvYXJjaC9y
aXNjdi9jb25maWdzL2RlZmNvbmZpZw0KPiBAQCAtNzMsNiArNzMsNyBAQCBDT05GSUdfVVNCX1NU
T1JBR0U9eQ0KPiAgQ09ORklHX1VTQl9VQVM9eQ0KPiAgQ09ORklHX01NQz15DQo+ICBDT05GSUdf
TU1DX1NQST15DQo+ICtDT05GSUdfUlRDX0NMQVNTPXkNCj4gIENPTkZJR19FWFQ0X0ZTPXkNCj4g
IENPTkZJR19FWFQ0X0ZTX1BPU0lYX0FDTD15DQo+ICBDT05GSUdfQVVUT0ZTNF9GUz15DQo+IGRp
ZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2NvbmZpZ3MvcnYzMl9kZWZjb25maWcNCj4gYi9hcmNoL3Jp
c2N2L2NvbmZpZ3MvcnYzMl9kZWZjb25maWcNCj4gaW5kZXggMjM0MjEzYjRlYTc0Li43OTcyYjFk
MzIxYzEgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvcmlzY3YvY29uZmlncy9ydjMyX2RlZmNvbmZpZw0K
PiArKysgYi9hcmNoL3Jpc2N2L2NvbmZpZ3MvcnYzMl9kZWZjb25maWcNCj4gQEAgLTY5LDYgKzY5
LDcgQEAgQ09ORklHX1VTQl9PSENJX0hDRD15DQo+ICBDT05GSUdfVVNCX09IQ0lfSENEX1BMQVRG
T1JNPXkNCj4gIENPTkZJR19VU0JfU1RPUkFHRT15DQo+ICBDT05GSUdfVVNCX1VBUz15DQo+ICtD
T05GSUdfUlRDX0NMQVNTPXkNCj4gIENPTkZJR19FWFQ0X0ZTPXkNCj4gIENPTkZJR19FWFQ0X0ZT
X1BPU0lYX0FDTD15DQo+ICBDT05GSUdfQVVUT0ZTNF9GUz15DQo=

