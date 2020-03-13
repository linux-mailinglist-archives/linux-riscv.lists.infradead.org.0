Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B5D184081
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 06:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AYFyF0ENw4a4Ai14ddVpa1EVQiBeD7cRyCOi6pgN3I8=; b=mtN/DqnZeEgB3RqfwjrDQ3qX5
	Ah1KilA0qSkctbP1RKAviE9Gr956w48kmV6Rx5IqVpwnhLSkJneamqcMTliDO+wtc82gElWtbZLTW
	QHj3T/wYK6hjnYOmXJrNy3Znv4VLdpmo9SHFk+PL01rZoBwofAk9e0+05tAJKS0lwBEabQXQCVfpl
	BEXzN4E9KoKGtcgrgxljrqCvW9tss5l9BfKr2VBL61r/NxUD33JIis2LqvIhWrJAPpP/Mfg/d/q5u
	tTnNjAhesVKFJLi8LA790BLnFXp3llk86uyx6Zf0SIliox4ACXilsBuDgwFfiUcWNWoEuvNMpSF3x
	N9cd/1MoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCcsw-0003Ty-60; Fri, 13 Mar 2020 05:29:26 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCcss-0003Sx-RL
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 05:29:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584077363; x=1615613363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=AYFyF0ENw4a4Ai14ddVpa1EVQiBeD7cRyCOi6pgN3I8=;
 b=GUNQuCT7OiaHjnHIBZpiG+7z4NwG1Zv5ueiIpyjB0e+zHJp3oxOANTNI
 v0CL3XEuP/vNXzXC2sKmRXZc0529mWGZhkKXCvpHahzKDleje1WkDgCtj
 rroRu1bTSwvfhToVHRhneImDnHijeED2oJjYaZGiWeD+pxH/runsKEHDC
 zkIr+68JnWlyGcTsXGwxRtD5P9+BCdT9hHlZNydsNOVc2BfRIC1QhD7Qd
 sgM7bn4qkWqH1xOh4Z3QlVlFLb91c3i6SaHJAWJxFLaYFQOXOfpuANBO6
 trSnm3+CKHXgn/Zxoi0g9MtUBXJIo+0X60CU2cgIF7vMQ5Bigb81+qaGL Q==;
IronPort-SDR: +VOsRm+bP2CkzexVi2MS8B/y2u9Y+hOPB4F2vn9vmuIhMEb1cX44x29go6NKsIy+PVblKMuClc
 OJUNVemKRAH55+ZV02kZgyg9+LQSjsy+oNKCXGlvb7/7G3BqxsGDW0W6wmV6iJRdXGrRmmnc7Y
 JLkwVzuNumuDVq13rHbHXO1+EcwzDtBQP9GMQeFUVlGL8MN4JKC8WK3Fo9wtH+kL6rx8IJp+NM
 wAIpX4suiQFJO77jwhyu1c6/aRdiTUvrC1RCWQAGEWfuv0yKOoO8Nzuhu2yS55GOMFSUNO3pYM
 bb8=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="136726908"
Received: from mail-mw2nam10lp2100.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.100])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 13:29:17 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l3KsefnOvKBH+eTWp3nSrHNMlGKhQ3WqO2Ts8tnNW7WRLTpGEGTzJrFgVDkjE5896XNtzYi0I+1dbatPYErBF8CGdBUWtH5rzsdTA/NDNlMThld27/X1TTfwsKdKYnbWhQLsgVgZ5GYyP+SKJRmjlvjBU+udUXq90fVnHmRKvZ7kjPJopPrpfF2NylwwDe/xbZBbXSuvfoQ/T+CVefLUQLxY6s+X8w3xMyTQBe6Rfb4WEtEtKey+/aqHSPWbR6aL1B4JzF7amgxSz7qFEpHa9moCjp8ZgOQRTzbBSzWOLVh/m4Zn8tW6Q+1eFkG3VwcEGpKmpAcb2fFbPJSjjnNQPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AYFyF0ENw4a4Ai14ddVpa1EVQiBeD7cRyCOi6pgN3I8=;
 b=hV2HbfEANlvnGc4R9U2UFjacJmuVVd6uQy57BSLo/BaBs7SvwSy63Jorrzx87YlBCfq1d/nqwbkM6vCwweFEjU9D/04mBuGEfZpr0J64M2mz3gTX/mSokbpF+sxEylZvXWFhEcVpdcNZzbeHgcUXtw+JBRP8GNKBkN4FrbveaoqRKqOr1HwWzEW7ZpWFWARgcntI/mRDdv+NRdYpf9TeuRTXj5K7pQbr7wI3mQhVU49rVOqNKjjCExiIWqIO2WBlm4H3KnNj6cGPqkNt1xzBNC3QrH0MuRMScTlHCaHmffd5WavAcyTwSlL9FNL5udWotDUner8DiJ7LQxiWy6sU2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AYFyF0ENw4a4Ai14ddVpa1EVQiBeD7cRyCOi6pgN3I8=;
 b=IN+hgxrq1CL3HNGeLMMa/+VUDrYynPsEGwV5t1kgh49HcebVA4fwsRvilAOvg+NUwT1Opjp0ZYdE2LIwsshxEmnX0knkdDvgOX1VLEdVlqGOM76IIbGQEGxqxXCttwyupOmIRt7gDFdrvrQi64H1mBQdEPXic+JNcKQ6ztZScNs=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2247.namprd04.prod.outlook.com (2603:10b6:102:13::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Fri, 13 Mar
 2020 05:29:15 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2814.007; Fri, 13 Mar 2020
 05:29:15 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "seanga2@gmail.com"
 <seanga2@gmail.com>
Subject: Re: [PATCH v2 6/9] riscv: Add Kendryte K210 device tree
Thread-Topic: [PATCH v2 6/9] riscv: Add Kendryte K210 device tree
Thread-Index: AQHV+JpiQkr6PQ5E6U6FaiLaeVjEvqhF/3SA
Date: Fri, 13 Mar 2020 05:29:15 +0000
Message-ID: <827d2082f05a0abe9de4b0bb2d380b8bcb0d4090.camel@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-7-damien.lemoal@wdc.com>
 <b175cd33-7143-164b-07fb-468a1e727180@gmail.com>
In-Reply-To: <b175cd33-7143-164b-07fb-468a1e727180@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 (3.34.4-1.fc31) 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [199.255.47.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5d3f534b-1111-4a40-ffe7-08d7c70f785a
x-ms-traffictypediagnostic: CO2PR04MB2247:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO2PR04MB2247816050A780421D10348DE7FA0@CO2PR04MB2247.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(376002)(366004)(39860400002)(346002)(199004)(2906002)(36756003)(26005)(5660300002)(6486002)(186003)(8676002)(81156014)(81166006)(64756008)(66476007)(76116006)(91956017)(8936002)(66446008)(66556008)(66946007)(110136005)(316002)(71200400001)(53546011)(478600001)(4326008)(6506007)(86362001)(6512007)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR04MB2247;
 H:CO2PR04MB2343.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3jKHCuyoOsfWhozmFe+rVWXIcsz7vqOlvrY896Sg+IvnEZkup3WNYAC2GrTH9FL5R8c7E2J2u6HMmFkYb09JLrSguMseMpL2Xgfol0G22Ap9bw5F3XBUz54F2G00fVoGXOZ541/BExI10256M5NQDZwmA3JrmSWYtuqnX6n8SH7whDTdC0fhvndHsddQOceOpbypEnfSXVbb3f10BuCt2XUGWFxyA7fN+ugMMi9B49xYg1vzJoidJoOk4BO3upPQBL7V2PHolhW1A4vDUB2gJMShCNjxTkeC/gerRm+IPIneyuKjjSlOrCLKeHRCzBv5ht1KmrJ0vIUHFEBSX1fhXL2nEfpObQ/WttmBT0HuxIyeInPxZZ+UA5pXocJrMP/sHBh5ro+oCJxZ6k8VZ7cOpvNOLS66HfOnkq+rX26lPFtle+pKvf9PuPV2Q3XRxBA1
x-ms-exchange-antispam-messagedata: 6JJ3l5HfWsZbK9E2yJ0T2sYtN7dbNnlUCy57CVAB/C05VD+5qZkgG8IPemm4UDjRX68t2SPeDhhfELNNzqABTDL20ZWhp064B1MTgxAgxZGHGuVUFFFpIfeErRIKCZpLmOwYktXI/b2GBNlo9XA/sg==
Content-Type: text/plain; charset="utf-8"
Content-ID: <70BE5A0A86CB8C4B9AB358CDD3F91022@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d3f534b-1111-4a40-ffe7-08d7c70f785a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 05:29:15.1891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DlZSo1pWY6tR68o89CNm3VjwFHrLD9uLSnnxDCt7TXUzVmxodhgPBgDU+vRZ1m/6wulItfcIur8LGWJNFdpf8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2247
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_222922_913689_47D70FDB 
X-CRM114-Status: GOOD (  24.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDIwLTAzLTEyIGF0IDE0OjE2IC0wNDAwLCBTZWFuIEFuZGVyc29uIHdyb3RlOg0K
PiBPbiAzLzEyLzIwIDE6MTEgQU0sIERhbWllbiBMZSBNb2FsIHdyb3RlOg0KPiA+IEFkZCBhIGdl
bmVyaWMgZGV2aWNlIHRyZWUgZm9yIEtlbmRyeXRlIEsyMTAgU29DIGJhc2VkIGJvYXJkcy4gVGhp
cyAoZm9yDQo+ID4gbm93KSB2ZXJ5IHNpbXBsZSBkZXZpY2UgdHJlZSB3b3JrcyBmb3IgdGhlIEtl
bmRyeXRlIEtEMjMzIGRldmVsb3BtZW50DQo+ID4gYm9hcmQsIHRoZSBTaXBlZWQgTUFJWCBNMSBE
YW4gRG9jayBib2FyZCBhbmQgdGhlIFNpcGVlZCBNQUlYRFVJTk8gYm9hcmQuDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRhbWllbi5sZW1vYWxAd2RjLmNvbT4NCj4g
PiAtLS0NCj4gPiAgYXJjaC9yaXNjdi9ib290L2R0cy9NYWtlZmlsZSAgICAgICAgICAgfCAgIDEg
Kw0KPiA+ICBhcmNoL3Jpc2N2L2Jvb3QvZHRzL2tlbmRyeXRlL01ha2VmaWxlICB8ICAgMiArDQo+
ID4gIGFyY2gvcmlzY3YvYm9vdC9kdHMva2VuZHJ5dGUvazIxMC5kdHMgIHwgIDIzICsrKysrDQo+
ID4gIGFyY2gvcmlzY3YvYm9vdC9kdHMva2VuZHJ5dGUvazIxMC5kdHNpIHwgMTE3ICsrKysrKysr
KysrKysrKysrKysrKysrKysNCj4gPiAgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9rMjEwLWNs
ay5oICAgfCAgMjAgKysrKysNCj4gPiAgNSBmaWxlcyBjaGFuZ2VkLCAxNjMgaW5zZXJ0aW9ucygr
KQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNjdi9ib290L2R0cy9rZW5kcnl0ZS9N
YWtlZmlsZQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNjdi9ib290L2R0cy9rZW5k
cnl0ZS9rMjEwLmR0cw0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNjdi9ib290L2R0
cy9rZW5kcnl0ZS9rMjEwLmR0c2kNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svazIxMC1jbGsuaA0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL3Jp
c2N2L2Jvb3QvZHRzL01ha2VmaWxlIGIvYXJjaC9yaXNjdi9ib290L2R0cy9NYWtlZmlsZQ0KPiA+
IGluZGV4IDBiZjI2NjlhYTEyZC4uODc4MTU1NTdmMmRiIDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gv
cmlzY3YvYm9vdC9kdHMvTWFrZWZpbGUNCj4gPiArKysgYi9hcmNoL3Jpc2N2L2Jvb3QvZHRzL01h
a2VmaWxlDQo+ID4gQEAgLTMsNCArMyw1IEBAIGlmbmVxICgkKENPTkZJR19CVUlMVElOX0RUQl9T
T1VSQ0UpLCIiKQ0KPiA+ICBvYmotJChDT05GSUdfVVNFX0JVSUxUSU5fRFRCKSArPSAkKHBhdHN1
YnN0ICIlIiwlLCQoQ09ORklHX0JVSUxUSU5fRFRCX1NPVVJDRSkpLmR0Yi5vDQo+ID4gIGVsc2UN
Cj4gPiAgc3ViZGlyLXkgKz0gc2lmaXZlDQo+ID4gK3N1YmRpci15ICs9IGtlbmRyeXRlDQo+ID4g
IGVuZGlmDQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvYm9vdC9kdHMva2VuZHJ5dGUvTWFr
ZWZpbGUgYi9hcmNoL3Jpc2N2L2Jvb3QvZHRzL2tlbmRyeXRlL01ha2VmaWxlDQo+ID4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQNCj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjgxNTQ0NGU2OWU4OQ0KPiA+
IC0tLSAvZGV2L251bGwNCj4gPiArKysgYi9hcmNoL3Jpc2N2L2Jvb3QvZHRzL2tlbmRyeXRlL01h
a2VmaWxlDQo+ID4gQEAgLTAsMCArMSwyIEBADQo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjANCj4gPiArZHRiLSQoQ09ORklHX1NPQ19LRU5EUllURSkgKz0gazIxMC5kdGIN
Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib290L2R0cy9rZW5kcnl0ZS9rMjEwLmR0cyBi
L2FyY2gvcmlzY3YvYm9vdC9kdHMva2VuZHJ5dGUvazIxMC5kdHMNCj4gPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMGQxZjI4ZmNlNmIyDQo+ID4gLS0tIC9k
ZXYvbnVsbA0KPiA+ICsrKyBiL2FyY2gvcmlzY3YvYm9vdC9kdHMva2VuZHJ5dGUvazIxMC5kdHMN
Cj4gPiBAQCAtMCwwICsxLDIzIEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wKw0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjAgV2VzdGVybiBEaWdp
dGFsIENvcnBvcmF0aW9uIG9yIGl0cyBhZmZpbGlhdGVzLg0KPiA+ICsgKi8NCj4gPiArDQo+ID4g
Ky9kdHMtdjEvOw0KPiA+ICsNCj4gPiArI2luY2x1ZGUgImsyMTAuZHRzaSINCj4gPiArDQo+ID4g
Ky8gew0KPiA+ICsJbW9kZWwgPSAiS2VuZHJ5dGUgSzIxMCBnZW5lcmljIjsNCj4gPiArCWNvbXBh
dGlibGUgPSAia2VuZHJ5dGUsazIxMCI7DQo+ID4gKw0KPiA+ICsJY2hvc2VuIHsNCj4gPiArCQli
b290YXJncyA9ICJlYXJseWNvbiBjb25zb2xlPXR0eVNJRjAiOw0KPiA+ICsJCXN0ZG91dC1wYXRo
ID0gInNlcmlhbDAiOw0KPiA+ICsJfTsNCj4gPiArfTsNCj4gPiArDQo+ID4gKyZ1YXJ0aHMwIHsN
Cj4gPiArCXN0YXR1cyA9ICJva2F5IjsNCj4gPiArfTsNCj4gPiArDQo+ID4gZGlmZiAtLWdpdCBh
L2FyY2gvcmlzY3YvYm9vdC9kdHMva2VuZHJ5dGUvazIxMC5kdHNpIGIvYXJjaC9yaXNjdi9ib290
L2R0cy9rZW5kcnl0ZS9rMjEwLmR0c2kNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGlu
ZGV4IDAwMDAwMDAwMDAwMC4uODhmMjhhM2ZkMzM3DQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsr
KyBiL2FyY2gvcmlzY3YvYm9vdC9kdHMva2VuZHJ5dGUvazIxMC5kdHNpDQo+ID4gQEAgLTAsMCAr
MSwxMTcgQEANCj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArDQo+ID4g
Ky8qDQo+ID4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBTZWFuIEFuZGVyc29uIDxzZWFuZ2EyQGdt
YWlsLmNvbT4NCj4gPiArICogQ29weXJpZ2h0IChDKSAyMDIwIFdlc3Rlcm4gRGlnaXRhbCBDb3Jw
b3JhdGlvbiBvciBpdHMgYWZmaWxpYXRlcy4NCj4gPiArICovDQo+ID4gKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9jbG9jay9rMjEwLWNsay5oPg0KPiA+ICsNCj4gPiArLyB7DQo+ID4gKwkvKg0KPiA+
ICsJICogQWx0aG91Z2ggdGhlIEsyMTAgaXMgYSA2NC1iaXQgQ1BVLCB0aGUgYWRkcmVzcyBidXMg
aXMgb25seSAzMi1iaXRzDQo+ID4gKwkgKiB3aWRlLCBhbmQgdGhlIHVwcGVyIGhhbGYgb2YgYWxs
IGFkZHJlc3NlcyBpcyBpZ25vcmVkLg0KPiA+ICsJICovDQo+ID4gKwkjYWRkcmVzcy1jZWxscyA9
IDwxPjsNCj4gPiArCSNzaXplLWNlbGxzID0gPDE+Ow0KPiA+ICsJY29tcGF0aWJsZSA9ICJrZW5k
cnl0ZSxrMjEwIjsNCj4gPiArDQo+ID4gKwlhbGlhc2VzIHsNCj4gPiArCQlzZXJpYWwwID0gJnVh
cnRoczA7DQo+ID4gKwl9Ow0KPiA+ICsNCj4gPiArCWNwdXMgew0KPiA+ICsJCSNhZGRyZXNzLWNl
bGxzID0gPDE+Ow0KPiA+ICsJCSNzaXplLWNlbGxzID0gPDA+Ow0KPiA+ICsJCXRpbWViYXNlLWZy
ZXF1ZW5jeSA9IDw3ODAwMDAwPjsNCj4gPiArCQljcHUwOiBjcHVAMCB7DQo+ID4gKwkJCWRldmlj
ZV90eXBlID0gImNwdSI7DQo+ID4gKwkJCXJlZyA9IDwwPjsNCj4gPiArCQkJY29tcGF0aWJsZSA9
ICJrZW5kcnl0ZSxrMjEwIiwgInNpZml2ZSxyb2NrZXQwIiwgInJpc2N2IjsNCj4gPiArCQkJcmlz
Y3YsaXNhID0gInJ2NjRpbWFmZGMiOw0KPiA+ICsJCQltbXUtdHlwZSA9ICJub25lIjsNCj4gPiAr
CQkJaS1jYWNoZS1zaXplID0gPDB4ODAwMD47DQo+ID4gKwkJCWktY2FjaGUtYmxvY2stc2l6ZSA9
IDw2ND47DQo+ID4gKwkJCWQtY2FjaGUtc2l6ZSA9IDwweDgwMDA+Ow0KPiA+ICsJCQlkLWNhY2hl
LWJsb2NrLXNpemUgPSA8NjQ+Ow0KPiA+ICsJCQljbG9ja3MgPSA8JnN5c2N0bCBLMjEwX0NMS19D
UFU+Ow0KPiA+ICsJCQljbG9jay1mcmVxdWVuY3kgPSA8MzkwMDAwMDAwPjsNCj4gPiArCQkJY3B1
MF9pbnRjOiBpbnRlcnJ1cHQtY29udHJvbGxlciB7DQo+ID4gKwkJCQkjaW50ZXJydXB0LWNlbGxz
ID0gPDE+Ow0KPiA+ICsJCQkJaW50ZXJydXB0LWNvbnRyb2xsZXI7DQo+ID4gKwkJCQljb21wYXRp
YmxlID0gInJpc2N2LGNwdS1pbnRjIjsNCj4gPiArCQkJfTsNCj4gPiArCQl9Ow0KPiA+ICsJCWNw
dTE6IGNwdUAxIHsNCj4gPiArCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsNCj4gPiArCQkJcmVnID0g
PDE+Ow0KPiA+ICsJCQljb21wYXRpYmxlID0gImtlbmRyeXRlLGsyMTAiLCAic2lmaXZlLHJvY2tl
dDAiLCAicmlzY3YiOw0KPiA+ICsJCQlyaXNjdixpc2EgPSAicnY2NGltYWZkYyI7DQo+ID4gKwkJ
CW1tdS10eXBlID0gIm5vbmUiOw0KPiANCj4gUGVyaGFwcyBhZGQgYSBjb21tZW50PyBUaGUgbW11
IGlzIHN0aWxsIHN2MzksIGV2ZW4gaWYgdGhlIGtlcm5lbCBpcyBOT01NVS4NCg0KWWVzLCB3aWxs
IGRvLiBJIHdhbnQgdG8ga2VlcCB0aGlzIGVudHJ5IGFzICJub25lIiBiZWNhdXNlIHdlIGNhbm5v
dA0Kc3VwcG9ydCB0aGUgMS45IHNwZWMgTU1VLiBTbyB5ZXMsIGNsYXJpZnlpbmcgdGhpcyBwb2lu
dCB3aWxsIGJlIGdvb2QuDQoNCj4gDQo+ID4gKwkJCWktY2FjaGUtc2l6ZSA9IDwweDgwMDA+Ow0K
PiA+ICsJCQlpLWNhY2hlLWJsb2NrLXNpemUgPSA8NjQ+OyAvKiBib2d1cyAqLw0KPiANCj4gVGhl
c2UgY29tbWVudHMgc2hvdWxkIGJlIHJlbW92ZWQgdG8gbWF0Y2ggdGhlIGJpbmRpbmdzIGFib3Zl
Lg0KDQpPb3BzLiBZZXMuIE1pc3NlZCB0aGF0IG9uZSA6KQ0KDQo+IA0KPiA+ICsJCQlkLWNhY2hl
LXNpemUgPSA8MHg4MDAwPjsNCj4gPiArCQkJZC1jYWNoZS1ibG9jay1zaXplID0gPDY0PjsgLyog
Ym9ndXMgKi8NCj4gPiArCQkJY2xvY2tzID0gPCZzeXNjdGwgSzIxMF9DTEtfQ1BVPjsNCj4gPiAr
CQkJY2xvY2stZnJlcXVlbmN5ID0gPDM5MDAwMDAwMD47DQo+ID4gKwkJCWNwdTFfaW50YzogaW50
ZXJydXB0LWNvbnRyb2xsZXIgew0KPiA+ICsJCQkJI2ludGVycnVwdC1jZWxscyA9IDwxPjsNCj4g
PiArCQkJCWludGVycnVwdC1jb250cm9sbGVyOw0KPiA+ICsJCQkJY29tcGF0aWJsZSA9ICJyaXNj
dixjcHUtaW50YyI7DQo+ID4gKwkJCX07DQo+ID4gKwkJfTsNCj4gPiArCX07DQo+ID4gKw0KPiA+
ICsJc3JhbTogbWVtb3J5QDgwMDAwMDAwIHsNCj4gPiArCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnki
Ow0KPiA+ICsJCXJlZyA9IDwweDgwMDAwMDAwIDB4NDAwMDAwPiwNCj4gPiArCQkgICAgICA8MHg4
MDQwMDAwMCAweDIwMDAwMD4sDQo+ID4gKwkJICAgICAgPDB4ODA2MDAwMDAgMHgyMDAwMDA+Ow0K
PiA+ICsJCXJlZy1uYW1lcyA9ICJzcmFtMCIsICJzcmFtMSIsICJhaXNyYW0iOw0KPiA+ICsJfTsN
Cj4gPiArDQo+ID4gKwljbG9ja3Mgew0KPiA+ICsJCWluMDogb3NjaWxsYXRvciB7DQo+ID4gKwkJ
CWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOw0KPiA+ICsJCQkjY2xvY2stY2VsbHMgPSA8MD47
DQo+ID4gKwkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNjAwMDAwMD47DQo+ID4gKwkJfTsNCj4gPiAr
CX07DQo+ID4gKw0KPiA+ICsJc29jIHsNCj4gPiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4g
PiArCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4gPiArCQljb21wYXRpYmxlID0gImtlbmRyeXRlLGsy
MTAtc29jIiwgInNpbXBsZS1idXMiOw0KPiA+ICsJCXJhbmdlczsNCj4gPiArCQlpbnRlcnJ1cHQt
cGFyZW50ID0gPCZwbGljMD47DQo+ID4gKw0KPiA+ICsJCXN5c2N0bDogc3lzY3RsQDUwNDQwMDAw
IHsNCj4gPiArCQkJY29tcGF0aWJsZSA9ICJrZW5kcnl0ZSxrMjEwLXN5c2N0bCIsICJzeXNjb24i
Ow0KPiA+ICsJCQlyZWcgPSA8MHg1MDQ0MDAwMCAweDEwMDA+Ow0KPiA+ICsJCQkjY2xvY2stY2Vs
bHMgPSA8MT47DQo+ID4gKwkJfTsNCj4gDQo+IFN0aWxsIHRoaW5rIHRoaXMgc2hvdWxkIGJlIG1v
ZGVsZWQgYXMgYW4gbWZkLg0KDQpZZXMuIEFic29sdXRlbHkuIFRoYXQgd2lsbCBiZSBuZWVkZWQg
Zm9yIGFkZGluZyBzdXBwb3J0IGZvciBHUElPLCBTRA0KY2FyZCBldGMuIEhvd2V2ZXIsIEkgZG8g
bm90IHdhbnQgdG8gZG8gdGhpcyBub3cgYW5kIGxlYXZlIHRoaXMgd29yayBmb3INCmFub3RoZXIg
c2VyaWVzIG9uIHRvcCBvZiB0aGlzIG9uZS4gV291bGQgeW91IGFncmVlIHdpdGggdGhpcyBhcHBy
b2FjaCA/DQoNCj4gDQo+ID4gKw0KPiA+ICsJCWNsaW50MDogaW50ZXJydXB0LWNvbnRyb2xsZXJA
MjAwMDAwMCB7DQo+ID4gKwkJCWNvbXBhdGlibGUgPSAicmlzY3YsY2xpbnQwIjsNCj4gPiArCQkJ
cmVnID0gPDB4MjAwMDAwMCAweEMwMDA+Ow0KPiA+ICsJCQlpbnRlcnJ1cHRzLWV4dGVuZGVkID0g
PCZjcHUwX2ludGMgMz4sICA8JmNwdTFfaW50YyAzPjsNCj4gPiArCQkJY2xvY2tzID0gPCZzeXNj
dGwgSzIxMF9DTEtfQUNMSz47DQo+ID4gKwkJfTsNCj4gPiArDQo+ID4gKwkJcGxpYzA6IGludGVy
cnVwdC1jb250cm9sbGVyQGMwMDAwMDAgew0KPiA+ICsJCQkjaW50ZXJydXB0LWNlbGxzID0gPDE+
Ow0KPiA+ICsJCQlpbnRlcnJ1cHQtY29udHJvbGxlcjsNCj4gPiArCQkJY29tcGF0aWJsZSA9ICJr
ZW5kcnl0ZSxrMjEwLXBsaWMwIiwgInJpc2N2LHBsaWMwIjsNCj4gPiArCQkJcmVnID0gPDB4QzAw
MDAwMCAweDQwMDAwMDA+Ow0KPiA+ICsJCQlpbnRlcnJ1cHRzLWV4dGVuZGVkID0gPCZjcHUwX2lu
dGMgMTE+LCA8JmNwdTBfaW50YyAweGZmZmZmZmZmPiwNCj4gPiArCQkJCQkgICAgICA8JmNwdTFf
aW50YyAxMT4sIDwmY3B1MV9pbnRjIDB4ZmZmZmZmZmY+Ow0KPiA+ICsJCQlyaXNjdixuZGV2ID0g
PDY1PjsNCj4gPiArCQkJcmlzY3YsbWF4LXByaW9yaXR5ID0gPDc+Ow0KPiA+ICsJCX07DQo+ID4g
Kw0KPiA+ICsJCXVhcnRoczA6IHNlcmlhbEAzODAwMDAwMCB7DQo+ID4gKwkJCWNvbXBhdGlibGUg
PSAia2VuZHJ5dGUsazIxMC11YXJ0aHMiLCAic2lmaXZlLHVhcnQwIjsNCj4gPiArCQkJcmVnID0g
PDB4MzgwMDAwMDAgMHgxMDAwPjsNCj4gPiArCQkJaW50ZXJydXB0cyA9IDwzMz47DQo+ID4gKwkJ
CWNsb2NrcyA9IDwmc3lzY3RsIEsyMTBfQ0xLX0NQVT47DQo+ID4gKwkJfTsNCj4gPiArCX07DQo+
ID4gK307DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svazIxMC1j
bGsuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svazIxMC1jbGsuaA0KPiA+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi41YTJmZDY0ZDFhNDkNCj4gPiAt
LS0gL2Rldi9udWxsDQo+ID4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9rMjEwLWNs
ay5oDQo+ID4gQEAgLTAsMCArMSwyMCBAQA0KPiA+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMC1vci1sYXRlciAqLw0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIw
MTktMjAgU2VhbiBBbmRlcnNvbiA8c2VhbmdhMkBnbWFpbC5jb20+DQo+ID4gKyAqIENvcHlyaWdo
dCAoYykgMjAyMCBXZXN0ZXJuIERpZ2l0YWwgQ29ycG9yYXRpb24gb3IgaXRzIGFmZmlsaWF0ZXMu
DQo+ID4gKyAqLw0KPiA+ICsjaWZuZGVmIEsyMTBfQ0xLX0gNCj4gPiArI2RlZmluZSBLMjEwX0NM
S19IDQo+ID4gKw0KPiA+ICsvKg0KPiA+ICsgKiBBcmJpdHJhcnkgaWRlbnRpZmllcnMgZm9yIGNs
b2Nrcy4NCj4gPiArICogVGhlIHN0cnVjdHVyZSBpczogaW4wIC0+IHBsbDAgLT4gYWNsayAtPiBj
cHUNCj4gPiArICoNCj4gPiArICogU2luY2Ugd2UgdXNlIHRoZSBoYXJkd2FyZSBkZWZhdWx0cyBm
b3Igbm93LCBzZXQgYWxsIHRoZXNlIHRvIHRoZSBzYW1lIGNsb2NrLg0KPiA+ICsgKi8NCj4gPiAr
I2RlZmluZSBLMjEwX0NMS19QTEwwICAgMA0KPiA+ICsjZGVmaW5lIEsyMTBfQ0xLX1BMTDEgICAw
DQo+ID4gKyNkZWZpbmUgSzIxMF9DTEtfQUNMSyAgIDANCj4gPiArI2RlZmluZSBLMjEwX0NMS19D
UFUgICAgMA0KPiA+ICsNCj4gPiArI2VuZGlmIC8qIEsyMTBfQ0xLX0ggKi8NCj4gPiANCj4gDQo+
IC0tU2Vhbg0KPiANCj4gDQoNCi0tIA0KRGFtaWVuIExlIE1vYWwNCldlc3Rlcm4gRGlnaXRhbCBS
ZXNlYXJjaA0K

