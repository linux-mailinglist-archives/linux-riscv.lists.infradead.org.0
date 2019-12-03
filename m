Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F0711053B
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 20:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WzwxpGeDXydgm3WX4Wp3Q2mVZpVA2UO5jaLMGpzzqcY=; b=fJQb5ThoEF0gcYUpriY3fW49F
	rLBj/bhoJlHgr2Fk/MlEf+ZeIa+dJCie0CsH/oql8+HS1/OAL8t3tql5uQStFt6phCUc5Ln75ZDcw
	7aVDVZzwCBiIIQs4yKKnW7mNJ10XUjxqvsJK9jCsBBpW7c9dEChuu92vTpyv+XLikoGJZtxYO3z7k
	RCHtn6Yij3t2xFys0xRnf5yerGfca6w1ixNkR3LcBPTJn2vBNiapA2Z2Q6SI7Fdp8zj2SV08S79UB
	tkWC2fVZpiG/pCB+9REl6szu5huB+VnAEp1UimC42mDB1m6rR+b4Pigy2+lc080haUkV6Xm6qgqhz
	R+mfBveYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDvj-0002mb-9J; Tue, 03 Dec 2019 19:33:51 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDve-0002ip-FL
 for linux-riscv@lists.infradead.org; Tue, 03 Dec 2019 19:33:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575401641; x=1606937641;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WzwxpGeDXydgm3WX4Wp3Q2mVZpVA2UO5jaLMGpzzqcY=;
 b=I52NB/Qszv62LhQgTfF5okwcr9SnXwnYEq2ahJsryPVDReBwY/u18QEx
 U91W4bOfJgG5wV1cB0QMQ5hNHxJTC3SBo4pVUYgxPLXl53Ro+zXjVxtV3
 oXtdD66eEOqvhqLXGTx5gSN/ukHcCGnfWeEeJ80bKmjf6XQgMjFRndTYd
 n16ht22E9e38EMNrJitHreJt42pvWogZcWzwkMqAHpSko46ElFkU1n71p
 YSZ/8nxLWd9wrwyfAUJj+C8315+Hyb37jSHJ6UVmVjuCBSuqPrQfz0LF1
 f8yirSflBf+a9xYoUiO13qO6KQTZy3FJQbtpo5qZCE/lF6R2jVzdAUynq g==;
IronPort-SDR: 0JVaxiI+K1XX3X3mbPNbP0Qu536RBmWAw7aY8zcGeYfff6d1j6es9loVpW6Fo3YBiaqjB3fMB6
 n5wb9yJOSHyHpXdfeFj2l7FhRWyRZsnZwAd5vafqB3ksNtIpG6lbe4V3Le39c40gj0QzYVy/DV
 nJusAICrmf2MwlKbyPZJhntoqdUrqvt8wPlUtRlqFFydqqctODGBTy/2N04V0OX3POwVuqCu/N
 Te+9NQtp/ujZOmMY99bIwY8KtkkFbcp52JAOnW6x1hLNQfKA0Hv419tkol27aL2mZMG2aXsdBD
 9DU=
X-IronPort-AV: E=Sophos;i="5.69,274,1571673600"; d="scan'208";a="225983875"
Received: from mail-co1nam03lp2053.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.53])
 by ob1.hgst.iphmx.com with ESMTP; 04 Dec 2019 03:33:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SHaAsWHrVEsCQQTHziLyzetzHDM8W5Cy0zpIN8/UsLVtQIx2r947yPJhrC6hvNmN3O/TdYID5CSEJ1Zo6gdMiGdEtSYGVKRSagAjF3ypzBDws6HXyV/PAY8xQazOpYbJH4WYH3gssqgSo2pQFf2oPaezGSzXW7ooHb1BeZZSbcnsOghM8tv33Fhd9urUiU+VJp/Zl8Sk1rUyfiTzdwbOoQJ6u1v67u2lhw4E1TYwdLREHMaqtPrMmJp7fC8ZHfOQLwQT/bluo7oWxBQFavN5r2vnWfxveyu5E6fP/4J0x+m279NYG49XfxKj02hwZN4wtU3BuQIX2qOXTGOzuVm9sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WzwxpGeDXydgm3WX4Wp3Q2mVZpVA2UO5jaLMGpzzqcY=;
 b=a9vIpgF2kvOmM5I/SP1+guRNVpLr+pR+/TzSzwK2hzUm52j2AOWBxrlOqsUZWasiiR/AwzAD0w3FvPDmzkeniZ5MwSNclYYnmnqgIbo/41gRSYPlQ+feEF/8TDGUZ7Y172B5VGJBNHDIBcDiMnM3BIc3cVtaFWcsnDyvU6ZDN93ex0sUvHrENc61V0KNZttieec15dGH5r82cXS+fiqmsTzYCt1P4mn/CRJi6kc+Ggj0C05s/eD0yd57A1fKsCspaAgOGdNuqAFzYuqzHpNwcWOkLpvVEW7643QMZoWeXEi14gLY8AxpYtwdKTmL+CGsKU3KP39f/5oodhbuW8SsKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WzwxpGeDXydgm3WX4Wp3Q2mVZpVA2UO5jaLMGpzzqcY=;
 b=L0X6F/ASnoGI7kkOopiRaGL3gGGnlzlPQWEjuSMuPbAbMCp0P4Dl/w9xdACXzFYJ1tEW1FRMVDqkX/cnLCN5eL9t643NtKr+5sb56VcFCSdFo/PRknmhtV1F+SN8LtkAjqjtvscWUCxPIuF+uaLV3pXE3p1PFxGCNefIMs3vGHk=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4951.namprd04.prod.outlook.com (52.135.232.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Tue, 3 Dec 2019 19:33:42 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11%7]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 19:33:42 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, Anup Patel <Anup.Patel@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v2 1/4] RISC-V: Add kconfig option for QEMU virt machine
Thread-Topic: [PATCH v2 1/4] RISC-V: Add kconfig option for QEMU virt machine
Thread-Index: AQHVqYyr/RMj/iyeVEuQTvGzYoAZAKeozHwA
Date: Tue, 3 Dec 2019 19:33:41 +0000
Message-ID: <2aa53495207f48d50489eda3fcbdd1f02779f85d.camel@wdc.com>
References: <20191203034909.37385-1-anup.patel@wdc.com>
 <20191203034909.37385-2-anup.patel@wdc.com>
In-Reply-To: <20191203034909.37385-2-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 06d53ab7-1ebd-4ffc-aaaa-08d77827b491
x-ms-traffictypediagnostic: BYAPR04MB4951:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB49516DB10749C8B413BF40AB90420@BYAPR04MB4951.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(199004)(189003)(8676002)(86362001)(8936002)(6506007)(76176011)(2501003)(81166006)(81156014)(26005)(2616005)(118296001)(229853002)(102836004)(11346002)(36756003)(478600001)(6486002)(446003)(14454004)(316002)(6512007)(66476007)(66946007)(76116006)(2906002)(7736002)(6246003)(54906003)(71200400001)(110136005)(66556008)(6436002)(71190400001)(66446008)(5660300002)(64756008)(2171002)(186003)(6116002)(4326008)(3846002)(25786009)(99286004)(256004)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4951;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QhWY78z1b3s5DT87XLnvIz00CiNkvQNINvlZSemUYf4UQ94tLSYL79oWcbGRvKis75zRugDjXHoAhRUuFx688N1UX3ZrP7BFlvOYzWtRzBPztgqYj/XB+qovS4jRNm872ullXPWTuttQV0vwo1dkTfOtVMMTtLUlc/Nyo1+9LjYBQL1m4JlcyqMwSMmHg3sBaCFFwQQlHcFBG6MDggOaoSEqcPK9RdUoqW7o8TKEI4lDDkS+dhBci8o+anREGcemEbOutMx4rJBFN9ASsU1rECRPDChWxdfgOd0WIgLlLJHTYxOnPrbwbXolGwZPu/x8kDOFeRox20sutlyhAXJrgHbADxgb18H59PLB5jBbT4EIVURko8Jx8ZWMp0+YVRaMriO+EI0LvmytmG62RCuH5nIK1kmZgAARf9nDxZ1TR/i2n9isgKlhX7dVnsrKoTlD
Content-Type: text/plain; charset="utf-8"
Content-ID: <F94957C4591BBC46B574E2C513EDBB13@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06d53ab7-1ebd-4ffc-aaaa-08d77827b491
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 19:33:42.2958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U5r8TLpKEeUvSwTrWTzWtFTqqMh8JVcyv/mbVazn1G8ytVL4rfceyrQQZit5Fcp4QpEfmHxth4u+KSqCgkbxQ59Cju4E4xLeqVL9cdDo+kw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_113346_644702_A262AF2A 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
ZSBhZGQga2NvbmZpZyBvcHRpb24gZm9yIFFFTVUgdmlydCBtYWNoaW5lIGFuZCBzZWxlY3QgYWxs
DQo+IHJlcXVpcmVkIFZJUlRJTyBkcml2ZXJzIHVzaW5nIHRoaXMga2NvbmZpZyBvcHRpb24uDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbnVwIFBhdGVsIDxhbnVwLnBhdGVsQHdkYy5jb20+DQo+IFJl
dmlld2VkLWJ5OiBBdGlzaCBQYXRyYSA8YXRpc2gucGF0cmFAd2RjLmNvbT4NCj4gUmV2aWV3ZWQt
Ynk6IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJkYWJiZWx0QGdvb2dsZS5jb20+DQoNClJldmlld2Vk
LWJ5OiBBbGlzdGFpciBGcmFuY2lzIDxhbGlzdGFpci5mcmFuY2lzQHdkYy5jb20+DQoNCkFsaXN0
YWlyDQoNCj4gLS0tDQo+ICBhcmNoL3Jpc2N2L0tjb25maWcuc29jcyB8IDIwICsrKysrKysrKysr
KysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvcmlzY3YvS2NvbmZpZy5zb2NzIGIvYXJjaC9yaXNjdi9LY29uZmlnLnNv
Y3MNCj4gaW5kZXggNTM2YzBlZjRhZWU4Li42MjM4Mzk1MWJmMmUgMTAwNjQ0DQo+IC0tLSBhL2Fy
Y2gvcmlzY3YvS2NvbmZpZy5zb2NzDQo+ICsrKyBiL2FyY2gvcmlzY3YvS2NvbmZpZy5zb2NzDQo+
IEBAIC0xMCw0ICsxMCwyNCBAQCBjb25maWcgU09DX1NJRklWRQ0KPiAgICAgICAgIGhlbHANCj4g
ICAgICAgICAgIFRoaXMgZW5hYmxlcyBzdXBwb3J0IGZvciBTaUZpdmUgU29DIHBsYXRmb3JtIGhh
cmR3YXJlLg0KPiAgDQo+ICtjb25maWcgU09DX1ZJUlQNCj4gKyAgICAgICBib29sICJRRU1VIFZp
cnQgTWFjaGluZSINCj4gKyAgICAgICBzZWxlY3QgVklSVElPX1BDSQ0KPiArICAgICAgIHNlbGVj
dCBWSVJUSU9fQkFMTE9PTg0KPiArICAgICAgIHNlbGVjdCBWSVJUSU9fTU1JTw0KPiArICAgICAg
IHNlbGVjdCBWSVJUSU9fQ09OU09MRQ0KPiArICAgICAgIHNlbGVjdCBWSVJUSU9fTkVUDQo+ICsg
ICAgICAgc2VsZWN0IE5FVF85UF9WSVJUSU8NCj4gKyAgICAgICBzZWxlY3QgVklSVElPX0JMSw0K
PiArICAgICAgIHNlbGVjdCBTQ1NJX1ZJUlRJTw0KPiArICAgICAgIHNlbGVjdCBEUk1fVklSVElP
X0dQVQ0KPiArICAgICAgIHNlbGVjdCBIV19SQU5ET01fVklSVElPDQo+ICsgICAgICAgc2VsZWN0
IFJQTVNHX0NIQVINCj4gKyAgICAgICBzZWxlY3QgUlBNU0dfVklSVElPDQo+ICsgICAgICAgc2Vs
ZWN0IENSWVBUT19ERVZfVklSVElPDQo+ICsgICAgICAgc2VsZWN0IFZJUlRJT19JTlBVVA0KPiAr
ICAgICAgIHNlbGVjdCBTSUZJVkVfUExJQw0KPiArICAgICAgIGhlbHANCj4gKyAgICAgICAgIFRo
aXMgZW5hYmxlcyBzdXBwb3J0IGZvciBRRU1VIFZpcnQgTWFjaGluZS4NCj4gKw0KPiAgZW5kbWVu
dQ0K

