Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 610741840AC
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 06:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3ARFZBZx20OImJTftZqiTALlum5hnPLB8mQUPx7l87g=; b=hVcc+3zgGM4lovspCdHiotY0z
	xaNCz7uv50PRYxFJg/HHXpCAn8uq3xLennGlzWBZIk4zQCaMNaFPoCS7flne3QFUWbNEkhqtJwbxA
	J2IUX7bkhFynJy07WAoqToH2Ef2Bu/8Pi2WFjMEjr5I7nKQO3LAkqrrGMxx3QWI1WP9saexRmprs4
	BeKWG1Kx3FqOfnMu0w8nDhfCzJte6Q4G+81nXDdr//+XOepzSZSXPuPcSgGMkvgWXNu7P84xsbGCb
	G4H4DHiMFLUkDGPldCc3t5KvQMqzGjLWN0P97pGGq6kkuXeyLpbnG1bpmlvnufDHzJAicFeowKJlB
	55isb+BEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdF7-0005uk-RP; Fri, 13 Mar 2020 05:52:21 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdF2-0005sr-T5
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 05:52:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584078736; x=1615614736;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3ARFZBZx20OImJTftZqiTALlum5hnPLB8mQUPx7l87g=;
 b=Hhtubp5SptsmEi1kdNp5XMmtd9gIX1aDvVeKHxhdH5WOpsN0Ba6W1k9N
 XOHRBqT8CwelSTPHl4p+xRtWyY8oP58njKzEH7jFin0JIL2r8Yw6BNVC5
 sXXYEuaFoN6eDxRhIw4PnNZCHWkF9HlzE2ng8Qy68t+pJojQROEyfEuow
 Lsled497vzcRh9Ubsn94oMnx3YP18rRZPN5ixYh8H3l5rOwWWIAkqO8wu
 o8eD9dnzAEiXGQw79Lni4B1nUHXTkEFHcGw6u6l5vlGmPqgG0qjtBMvcO
 3+Mc3XGTqJLqDzIjzY5/okW0KiagR4lGHlfysa9NdpnYPymSbOfsDZpTK Q==;
IronPort-SDR: eLZMvCEJyO3n2PakFugU6W0eQ5uT0qWzTUJj98oxA8+M2WEt/zverlA25BiJJQ8+44dAJa/EOv
 o5PRbZhQGojtyhrrsN5PL3mKfGyJ4S5w7m7R5/fNTBpUbfnlUthA1Noy+1biqAn9hxhrsOsgs6
 ukCkTl8vvko7VX8Y0hsvRTlunD3YkCDx78RetC3LCuxab6+5KotoCfuqKj8OyB3E4vkR5f9iSF
 F+xzD6aUrtL0lPdli3KDWRdDopTLldJpsxXzSvRVBKky48IaSgigj5TXaOriIIzn+x76B/BF7p
 qJc=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="240653143"
Received: from mail-dm6nam11lp2177.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.177])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 13:52:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CV/HGnpm+PeQihJ/iM+qeBAvefyTqbPYTuGs6DpjMuWcZiQ+Vk03okFkqVSLIv45s0IWK4sHeQ8gbRMR0EBEcaBU4gOQoGV6gamFBHjt6JGm84xRjfky1y7Fgv+l1iazA6kKO+7/lPx41IR1dOHK1oueVoiv9RlrJa8YcP9kG7tHG2/M5iFWcF/nd1JmsSppG0/BQP5ZroJMOCMGXVqZ/q8TFx0Jn/ZL54So6QtuuQCxkOa2N5PUFufQ/3eKYs4BCP/pqImbsQJkhAJ8m0Ia2phtFGa3c027CE5hV2F3ObzxeI+4+mIEgq5al7dS/0FRvkZpJr9WRkqLpna/bPA5HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ARFZBZx20OImJTftZqiTALlum5hnPLB8mQUPx7l87g=;
 b=V0mV7yx/ZSdKjFeISCGD6y9/N+iRZxfO0AOT3sopfcGh1dob5KPLsfZIof5vIVuYyEimXgdIcg+mBfR2FXYPc8wVWmOQMNJljle+Zt8JWzAMnJ8I4bQrB/IqAQr+STmvwjpfdaMZ6duWTf4tL86vRMPgHIhDtjp2Q0HuEO2oL54BkWOiLs6mgHh40H5ChtXBGWOOVYEBR2Dff3unUwiIiIkXM8cP9nqCmBreERB2Xyaf67rjTHRmDvZz4VVYjixVaPQItynbVLIwJx9wlzmaBXMlrqLw67HaBDL5cwCW5qfalhPiM8zjUcf48UyTjcmLOzHwR/9Dtoe4I9zKMJc1eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ARFZBZx20OImJTftZqiTALlum5hnPLB8mQUPx7l87g=;
 b=jyuAEn6/PGnichBKwUviBOqbjLNU2MXyLsA6odcEYywGRW38tK5EEeSTs7cAZaxBe4liI2th+ZS5uWOAiFLass+HrVUlPt5+cTVfpb84KLg74P7a3bLp6AOyaBb7shmAmZbwv3UIvyMLeCD9KKmp3TfdF+4y/BxVpEARrRJ4sM4=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2216.namprd04.prod.outlook.com (2603:10b6:102:d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Fri, 13 Mar
 2020 05:52:13 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2814.007; Fri, 13 Mar 2020
 05:52:13 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "seanga2@gmail.com"
 <seanga2@gmail.com>
Subject: Re: [PATCH v2 3/9] riscv: Add SOC early init support
Thread-Topic: [PATCH v2 3/9] riscv: Add SOC early init support
Thread-Index: AQHV+JsDs8UKHOTEo067LJD3Wn16NahGBd4A
Date: Fri, 13 Mar 2020 05:52:13 +0000
Message-ID: <00453992de6d4f24098de0a0793226f6eef783bc.camel@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-4-damien.lemoal@wdc.com>
 <b19153eb-dba4-15b2-234b-0d14d23aa164@gmail.com>
In-Reply-To: <b19153eb-dba4-15b2-234b-0d14d23aa164@gmail.com>
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
x-ms-office365-filtering-correlation-id: 97e2dffd-5404-451c-9041-08d7c712ada7
x-ms-traffictypediagnostic: CO2PR04MB2216:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO2PR04MB2216EF56A72C201A0198A186E7FA0@CO2PR04MB2216.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(136003)(39860400002)(376002)(366004)(396003)(199004)(8936002)(8676002)(4326008)(36756003)(316002)(6486002)(81166006)(81156014)(2616005)(110136005)(53546011)(478600001)(2906002)(5660300002)(6512007)(76116006)(91956017)(186003)(71200400001)(66446008)(64756008)(66556008)(66946007)(86362001)(66476007)(26005)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR04MB2216;
 H:CO2PR04MB2343.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QLOjR77w83MbDc+UygWMc15VY/NF6ox8o0NvvhvPR6LtmbVk446SeF2N2eoieJzRDidpOOxWFy7hv1yus32RGU9SlmwOheNRBKFPfF0CkzTKqgRMesqnsWAjHPQCLXi8+B+3lS05UlVAZU3WWQOylOZmrworADJ1KPGdjBdTsSIXkcCt8SGSYo5cDZH+2jMpFcJM/0CYEyKoPDHxS82advgTNIZTRvr4swj8XToudaQyXM9Xvad90RDe8N+55uAW2FfPOvlX7W6q5WUlenRfqcDdM3cjgFxV7v0NAjFsbvTC8AFdcLZeEyMd82Ax85gmef0hBDZfS/cTVRZrRD0kBKCE/jQ5d+B0OGHeeKg8Espqs2XPFt+fKRof4brU+BjUELJt9foiQwLrN2Q8k4PqESgMK0mRCH6Q8WZmXgGa8XHUI1fPZx1VX0uJPcRMZOXX
x-ms-exchange-antispam-messagedata: WluWRdfRknq92rwUJWHG/OumH30ro6g+u5k7HQoo/H2AClqJRtmTj3wLjAkI1Rz0MOwmoW2IQDcRxEb+DVK3sw2qmdrsV6knFyzlEdT22/WT/ToXKIk0a2plrHS3WyJbbwRPq2dm4XP5jS+q7lgoDA==
Content-Type: text/plain; charset="utf-8"
Content-ID: <F7C2FFAA21B91746BA060219A8763DC4@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97e2dffd-5404-451c-9041-08d7c712ada7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 05:52:13.1203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1RKEZSXK81Atr9IZJwa6PzZvhRADTCj8btSkGMseHP/CO+V1Tbut0CDfDxMgfCD/kG04Z/A0FJJi5HrzT448Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_225216_976407_85D23B46 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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

T24gVGh1LCAyMDIwLTAzLTEyIGF0IDE0OjIxIC0wNDAwLCBTZWFuIEFuZGVyc29uIHdyb3RlOg0K
PiBPbiAzLzEyLzIwIDE6MTEgQU0sIERhbWllbiBMZSBNb2FsIHdyb3RlOg0KPiA+IEFkZCBhIG1l
Y2hhbmlzbSBmb3IgZWFybHkgU29DIGluaXRpYWxpemF0aW9uIGZvciBwbGF0Zm9ybXMgdGhhdCBu
ZWVkDQo+ID4gYWRkaXRpb25hbCBoYXJkd2FyZSBpbml0aWFsaXphdGlvbiBub3QgcG9zc2libGUg
dGhyb3VnaCB0aGUgcmVndWxhcg0KPiA+IGRldmljZSB0cmVlIGFuZCBkcml2ZXJzIG1lY2hhbmlz
bS4gV2l0aCB0aGlzLCBhIFNvQyBzcGVjaWZpYw0KPiA+IGluaXRpYWxpemF0aW9uIGZ1bmN0aW9u
IGNhbiBiZSBjYWxsZWQgdmVyeSBlYXJseSwgYmVmb3JlIERUQiBwYXJzaW5nDQo+ID4gaXMgZG9u
ZSBieSBwYXJzZV9kdGIoKSBpbiBMaW51eCBSSVNDLVYga2VybmVsIHNldHVwIGNvZGUuDQo+IA0K
PiBXaHkgZG9lcyBpdCBuZWVkIHRvIGJlIGNhbGxlZCB0aGF0IGVhcmx5IChlLmcuIGJlZm9yZSBw
YXJzaW5nIGR0Yik/DQoNCkJlY2F1c2UgZHRiIHBhcnNpbmcgd2lsbCB0cmlnZ2VyIHRoZSBpbml0
aWFsaXphdGlvbiBvZiB0aGUgbWVtb3J5DQpzZWdtZW50cyBsaXN0ZWQgZm9yIHVzZSB3aXRoIG1l
bW9yeSBhbGxvY2F0aW9uLiBUaGF0IGxlYWRzIHRvIHRoZSBkdGINCnBhcnNpbmcgaXRzZWxmIGFs
bG9jYXRpbmcgbWVtb3J5IHRoYXQgZW5kcyB1cCBvbiB0aGUga3B1IHNyYW0gYmVmb3JlIGENCmRl
dmljZSBkcml2ZXIgc3BlY2lmaWVkIGluIHRoZSBkdCBjYW4gYmUgaW5pdGlhbGl6ZWQgdG8gdHVy
biB0aGUgbWVtb3J5DQpvbi4NCg0KVGhhdCBpcyBhdCBsZWFzdCB3aGF0IEkgb2JzZXJ2ZWQ6IEkg
bmV2ZXIgZ28gcGFzdCB0aGUgcGFyc2VfZHRiKCkgcG9pbnQNCndpdGhvdXQgdGhlIG1lbW9yeSB0
dXJuZWQgb24gaWYgdGhlcmUgaXMgYW4gZW50cnkgaW4gdGhlIGRldmljZSB0cmVlDQpmb3IgaXQu
DQoNCj4gDQo+ID4gVGhpcyBjYW4gYmUgdmVyeSB1c2VmdWwgZm9yIGVhcmx5IGhhcmR3YXJlIGlu
aXRpYWxpemF0aW9uIGZvciBOby1NTVUNCj4gPiBrZXJuZWxzIGJvb3RlZCBkaXJlY3RseSBpbiBN
LW1vZGUgYmVjYXVzZSBpdCBpcyBxdWl0ZSBsaWtlbHkgdGhhdCBubw0KPiA+IG90aGVyIGJvb3Rp
bmcgc3RhZ2UgZXhpc3QgcHJpb3IgdG8gdGhlIE5vLU1NVSBrZXJuZWwuDQo+ID4gDQo+ID4gRXhh
bXBsZSB1c2Ugb2YgYSBTb0MgZWFybHkgaW5pdGlhbGl6YXRpb24gaXMgYXMgZm9sbG93czoNCj4g
PiANCj4gPiBzdGF0aWMgdm9pZCB2ZW5kb3JfYWJjX2Vhcmx5X2luaXQoY29uc3Qgdm9pZCAqZmR0
KQ0KPiA+IHsNCj4gPiAJLyoNCj4gPiAJICogc29tZSBlYXJseSBpbml0IGNvZGUgaGVyZSB0aGF0
IGNhbiB1c2Ugc2ltcGxlIG1hdGNoZXMNCj4gPiAJICogYWdhaW5zdCB0aGUgZmxhdCBkZXZpY2Ug
dHJlZSBmaWxlLg0KPiA+IAkgKi8NCj4gPiB9DQo+ID4gU09DX0VBUkxZX0lOSVRfREVDTEFSRSgi
dmVuZG9yLGFiYyIsIGFiY19lYXJseV9pbml0KTsNCj4gPiANCj4gPiBUaGlzIGVhcmx5IGluaXRp
YWxpemF0aW9uIGZ1bmN0aW9uIGlzIGV4ZWN1dGVkIG9ubHkgaWYgdGhlIGZsYXQgZGV2aWNlDQo+
ID4gdHJlZSBmb3IgdGhlIGJvYXJkIGhhcyBhICdjb21wYXRpYmxlID0gInZlbmRvcixhYmMiJyBl
bnRyeTsNCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGFtaWVuLmxl
bW9hbEB3ZGMuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFudXAgUGF0ZWwgPGFudXAucGF0ZWxA
d2RjLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogUGFsbWVyIERhYmJlbHQgPHBhbG1lcmRhYmJlbHRA
Z29vZ2xlLmNvbT4NCj4gDQo+IC0tU2Vhbg0KDQotLSANCkRhbWllbiBMZSBNb2FsDQpXZXN0ZXJu
IERpZ2l0YWwgUmVzZWFyY2gNCg==

