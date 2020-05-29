Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 399071E74CF
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 06:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m54lzmcJ3+iiv8YW5XnHoLq+xx5VcDWKlVw6+YwSGmg=; b=kKTvxDuu5t2nXl+Hb0M6oY/OC
	IU+B2MUHhTL6lPzI7dVllW9SBc6n/ZmFSpk+x9emF4BfpywZr91krtOTDPe48see9cVDUbT5Ke9R6
	NWqJfss2wVRLS7Rq4vQm360nG1nQ5tAjzZ+GVdH9DDwLI2cUxQv300QQKCV1pRZzqdxmEHDCEHrlp
	Up4J6JeAUkNR5n43tc6bwR3OC+Hm3Xy7lkV7ONIBqhOAe2QQQYGuE5dbTqc5Pjag1n++0bAbW09bi
	bZV2dgvgV8x4LaCPUYVMOZPSNgMOX3jC1BYdLYenEbqRnjWA3S7HXf57EozZwfa6kT0j1MkS7LEpn
	du/j5xkTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeWaa-00055o-Oj; Fri, 29 May 2020 04:25:48 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWZz-0002rj-0F
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 04:25:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590726311; x=1622262311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m54lzmcJ3+iiv8YW5XnHoLq+xx5VcDWKlVw6+YwSGmg=;
 b=bb44GugbeqH/2Et8pfb/Cp54GAs8/lHjCw5ClLd73Y4KrxTrv+eKeKtj
 j3726Fnhhw+FWWcOMQho0CfVcOE9A+BAJW5DPYKdVtDm1ITY9OECpATXi
 dgWBxhxVf4qCHMHPtpW699sNO/u4O0QUAUQg4k6oo+filIL8170PzZuYx
 RLSAU1CxdovWVQ5kH9MC8nVMlco3zIqygQQEBZXBHXj/oMLABhefkA7q5
 QaPXp3x7Ms4XzbIep4qpShZR01kegyLoMZ0xCzxrpI4+LQY0DaFWwuy+t
 3BF1qeRRFYDMWQwokkpSxJl+E676/McdifsqQvk3PliOs8Uu5qg9dZg5D g==;
IronPort-SDR: nEo88xXnQg8yM6vDKp1kimOZnbe8VUan6DPna1p/XjhNnHB74MIU3twQS4kea7SDJiPhBgWiK8
 RHMwx7zMf9mI73RRWzXUno+5GWPaB2+HjPemZIkA5DDavMxX4VNjbIDgGmOvOCYQ9wLjs3ddcy
 v5nMKQdASHmLQRXicjC318FcppRmLItn6A6LLol4ncWGq6Ni302qtt5rTczSYXkzgJfAbRT1RO
 xfDoUJponakaMp6LJpfMyeCbcELkFzG2XAjDRTidZqvLBns+RzcHreiq4EmeH/EqwgO3M/1Uwn
 GRM=
X-IronPort-AV: E=Sophos;i="5.73,447,1583164800"; d="scan'208";a="140190763"
Received: from mail-bn8nam11lp2177.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.177])
 by ob1.hgst.iphmx.com with ESMTP; 29 May 2020 12:25:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bt82T1gAgn8aXcTTkzpxlgoeTUaiJFQl9FS5FachswkXnNE5VxNKm5q5m5Vb9oB3EQGpduKvGiaf1n7HkhBe7waKCegRAh4Fg9THeKqYM5ZccjuUP01DS98WXEZAlHf9icu7BX/BSm/lDNHaVE6+Tac7jthCBfs/WTlsroD15Dci24xY75CE+nqWcQAVZW6yiSR2y+4f/uMUeRGTctXDWx7Cl1HnCSpgGnw9rHSD1Ki4cFm6zQzFF4katEZfvdwsnSNwg8Z7YjWiSeEK+ugIw5YST4KhctqTf5Cb6g11mBNbvHI/Yz7ksXLOU9saXHc6iaZQ5Af2tq6fMY7+7uwkBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m54lzmcJ3+iiv8YW5XnHoLq+xx5VcDWKlVw6+YwSGmg=;
 b=ODoN4RDJw2qEfxXF/LqFim5Y4WwNiIdTwy3OaL+ouaxmggUGh/XUpXJsWMXizC2DKiumJcw8yMsHthb0D+9tiBNSySUeEJC3QlxNjrNgNO5wn7IwxAlwNL89oeYHtc9UeH6hiWQ4INJhYkEKzvsg3i8FEgtao3O/1su0Rh3HkdoYDiJSQvMKipn3WZpOu7s3ZXAaiCM5LGAefI6ewXSfE+//7YKMX5LNjZQL2ReNlYBF8jdCy9sARFj606Fa4jJezIsngCvZB7A8d5sW0798KKxbXejCP6kiTNu15eBfBP8lmA8n6d0uTlQzFox4LbqcQeMJ2i1Ei2vcVMKizFDgkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m54lzmcJ3+iiv8YW5XnHoLq+xx5VcDWKlVw6+YwSGmg=;
 b=ufQXl96NxZ7QPAH5nPWUUvCLtLu6F9ExBExWqaGCPZvfXHVtPUSMVG3w/lNkDNd+FykO3GD6tHlOzSb2OZvCN8vE2RbkVKRGm2lEHzz/9iiJMTZoaj8TtIeg88Y/ifeYU+eP7dsyxFyIiVyW/pUWrXD2TYDDC6a0AkzscHHcu7Q=
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6649.namprd04.prod.outlook.com (2603:10b6:5:24c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Fri, 29 May
 2020 04:25:00 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 04:24:59 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, "anup@brainfault.org"
 <anup@brainfault.org>
Subject: RE: [PATCH v5 0/6] New RISC-V Local Interrupt Controller Driver
Thread-Topic: [PATCH v5 0/6] New RISC-V Local Interrupt Controller Driver
Thread-Index: AQHWL3Rrw2CzBUFzo0+6eG5LaPXED6i8T4kAgAIsFQCAAAR6gIAAAnzg
Date: Fri, 29 May 2020 04:24:59 +0000
Message-ID: <DM6PR04MB620131C18CFC939248C825038D8F0@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <CAAhSdy0zXh46P5WPZHmQ_PjwfOEWkh77EZ-_CroH1Eb1c3fDJg@mail.gmail.com>
 <mhng-69ba2cf1-862f-49fc-ab79-eda329f69aee@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-69ba2cf1-862f-49fc-ab79-eda329f69aee@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [106.51.24.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b13804d4-1521-427e-be13-08d803884026
x-ms-traffictypediagnostic: DM6PR04MB6649:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB6649B07911EEDAA952F333358D8F0@DM6PR04MB6649.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04180B6720
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WzsfGfZkOsWS1chB4rKAfgaDBLvnmXYsDkzudYmdNUovgc4OwFfF8/r567Lelt3yJQE7TtVCt2oKrbdwFp28uRTKFjPE2mpNSRjB6f6B74kMSlVmK4Ny0am413pMjFMYb2L6Pf3EENKmb+D2dWUgOChMVdX89Z8vvQEP2j3JKbHoiua+7wR6ga8LSNVE1wWicgO4IQ2zlqQtp6slErDZZFwS2zjvaBTi1uGSjtsFKqwxAfi+tK8jDu1PQbtFcVi8grdmuqhDC2R54+1ftRMyufq2P7rAZbXRteHJPnUOMDI3eqxCP+ERM9FLyhIJXjYTiczN+EknCmJ1YiA8YnLq+k0uP7dxIUHeO8bf+BgGb3kNVqB6UNtVOirWSNN4oXEOINVf1GMcmqeq44AU6RPFJQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(136003)(39860400002)(366004)(396003)(54906003)(110136005)(316002)(7696005)(8676002)(71200400001)(6506007)(53546011)(55236004)(186003)(8936002)(83380400001)(26005)(4326008)(5660300002)(76116006)(966005)(52536014)(478600001)(86362001)(9686003)(55016002)(33656002)(2906002)(7416002)(66446008)(66946007)(66476007)(66556008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: j0LD0Flt0H6Z6os+mXUWcGrGhwwh6mLGtpkf02nwhiph9vMQCRKrds4NOjls4iPh+IzcID6rESf8iEw1wMVZt7H5KYvW2AnNs81dDCWqH9WDToyvUcbgKsXpGl8RJLz4LmywnJV92cL3T0TTCLglnkhdsLYMPYCLTNTBOiOB2AFqNpWxOYnejAArwrb8aJLffZsryH3Q0IJXfgTOO+zz1fVM0Nq9pn8/aKLlbbnLgUkk0iRkEQ6gstFUB3RsdC/ZvsEXjaB34Ntj2g7w7Tk7OY+IN9ZAstKOS9mZ1c5OYVpHXt7lkblbPrD5sJeiMDwsxEYkP0QPrp1BO+hzFwDx7y279sOuGzFV2+RMKcN/9KZb7oPwaNgj/GExe84PCPSFXDI9iiOSxmHYhkTki1jh5goIUOh7hkEsZzwYQKTvXPUwE3VY8KjzyuzcGwzqsAEKnWqozSjSvcz5O5F7jYJDx6845IKqX23stEXRu9iWSF0=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b13804d4-1521-427e-be13-08d803884026
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2020 04:24:59.8152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rr60uZ7JD24gCNdGUtmYILBQtuiNlWgwcUofl1RmPTQJwX/uNC5gngMhWk1CVQiAdXe+nKgLGhIi8SWj4Iv0jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6649
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_212511_257892_9AC28710 
X-CRM114-Status: GOOD (  27.39  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.24.208 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogbGludXgta2VybmVsLW93
bmVyQHZnZXIua2VybmVsLm9yZyA8bGludXgta2VybmVsLQ0KPiBvd25lckB2Z2VyLmtlcm5lbC5v
cmc+IE9uIEJlaGFsZiBPZiBQYWxtZXIgRGFiYmVsdA0KPiBTZW50OiAyOSBNYXkgMjAyMCAwOTo0
Mw0KPiBUbzogYW51cEBicmFpbmZhdWx0Lm9yZw0KPiBDYzogTWFyYyBaeW5naWVyIDxtYXpAa2Vy
bmVsLm9yZz47IEFudXAgUGF0ZWwgPEFudXAuUGF0ZWxAd2RjLmNvbT47IFBhdWwNCj4gV2FsbXNs
ZXkgPHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT47IGFvdUBlZWNzLmJlcmtlbGV5LmVkdTsNCj4g
ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZzsgdGdseEBsaW51dHJvbml4LmRlOyBqYXNvbkBsYWtl
ZGFlbW9uLm5ldDsgQXRpc2gNCj4gUGF0cmEgPEF0aXNoLlBhdHJhQHdkYy5jb20+OyBBbGlzdGFp
ciBGcmFuY2lzIDxBbGlzdGFpci5GcmFuY2lzQHdkYy5jb20+Ow0KPiBsaW51eC1yaXNjdkBsaXN0
cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggdjUgMC82XSBOZXcgUklTQy1WIExvY2FsIEludGVycnVwdCBDb250cm9sbGVy
IERyaXZlcg0KPiANCj4gT24gVGh1LCAyOCBNYXkgMjAyMCAyMDo1NzoyNiBQRFQgKC0wNzAwKSwg
YW51cEBicmFpbmZhdWx0Lm9yZyB3cm90ZToNCj4gPiBPbiBUaHUsIE1heSAyOCwgMjAyMCBhdCAx
MjoxNyBBTSBQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQGRhYmJlbHQuY29tPg0KPiB3cm90ZToNCj4g
Pj4NCj4gPj4gT24gVGh1LCAyMSBNYXkgMjAyMCAwNjozMjo1NSBQRFQgKC0wNzAwKSwgQW51cCBQ
YXRlbCB3cm90ZToNCj4gPj4gPiBUaGlzIHBhdGNoc2V0IHByb3ZpZGVzIGEgbmV3IFJJU0MtViBM
b2NhbCBJbnRlcnJ1cHQgQ29udHJvbGxlcg0KPiA+PiA+IERyaXZlciBmb3IgbWFuYWdpbmcgcGVy
LUNQVSBsb2NhbCBpbnRlcnJ1cHRzLiBUaGUgb3ZlcmFsbCBhcHByb2FjaA0KPiA+PiA+IGlzIGlu
c3BpcmVkIGZyb20gdGhlIHdheSBwZXItQ1BVIGxvY2FsIGludGVycnVwdHMgYXJlIGhhbmRsZWQg
YnkNCj4gPj4gPiBMaW51eCBBUk02NCBhbmQgQVJNIEdJQ3YzIGRyaXZlci4NCj4gPj4gPg0KPiA+
PiA+IEZldyBhZHZhbnRhZ2VzIG9mIHRoaXMgbmV3IGRyaXZlciBvdmVyIHByZXZpb3VzIG9uZSBh
cmU6DQo+ID4+ID4gMS4gQWxsIGxvY2FsIGludGVycnVwdHMgYXJlIHJlZ2lzdGVyZWQgYXMgcGVy
LUNQVSBpbnRlcnJ1cHRzIDIuIFRoZQ0KPiA+PiA+IFJJU0MtViB0aW1lciBkcml2ZXIgY2FuIHJl
Z2lzdGVyIHRpbWVyIGludGVycnVwdCBoYW5kbGVyDQo+ID4+ID4gICAgdXNpbmcga2VybmVsIGly
cSBzdWJzeXN0ZW0gd2l0aG91dCByZWx5aW5nIG9uIGFyY2gvcmlzY3YgdG8NCj4gPj4gPiAgICBl
eHBsaWNpdGx5IGNhbGwgaXQncyBpbnRlcnJ1cHQgaGFuZGxlciAzLiBUaGUgS1ZNIFJJU0MtViBj
YW4gdXNlDQo+ID4+ID4gdGhpcyBkcml2ZXIgdG8gaW1wbGVtZW50IGludGVycnVwdA0KPiA+PiA+
ICAgIGhhbmRsZXIgZm9yIHBlci1IQVJUIGd1ZXN0IGV4dGVybmFsIGludGVycnVwdCBkZWZpbmVk
IGJ5DQo+ID4+ID4gICAgdGhlIFJJU0MtViBILUV4dGVuc2lvbg0KPiA+PiA+IDQuIEluIGZ1dHVy
ZSwgd2UgY2FuIGRldmVsb3AgZHJpdmVycyBmb3IgZGV2aWNlcyB3aXRoIHBlci1IQVJUDQo+ID4+
ID4gICAgaW50ZXJydXB0cyB3aXRob3V0IGNoYW5naW5nIGFyY2ggY29kZSBvciB0aGlzIGRyaXZl
ciAoZXhhbXBsZSwNCj4gPj4gPiAgICBDTElOVCB0aW1lciBkcml2ZXIgZm9yIFJJU0MtViBNLW1v
ZGUga2VybmVsKQ0KPiA+PiA+DQo+ID4+ID4gV2l0aCB0aGlzIHBhdGNoc2V0LCBvdXRwdXQgb2Yg
ImNhdCAvcHJvYy9pbnRlcnJ1cHRzIiBsb29rcyBhcyBmb2xsb3dzOg0KPiA+PiA+ICAgICAgICAg
ICAgQ1BVMCAgICAgICBDUFUxICAgICAgIENQVTIgICAgICAgQ1BVMw0KPiA+PiA+ICAgMjogICAg
ICAgIDM3OSAgICAgICAgICAwICAgICAgICAgIDAgICAgICAgICAgMCAgU2lGaXZlIFBMSUMgIDEw
ICB0dHlTMA0KPiA+PiA+ICAgMzogICAgICAgIDU5MSAgICAgICAgICAwICAgICAgICAgIDAgICAg
ICAgICAgMCAgU2lGaXZlIFBMSUMgICA4ICB2aXJ0aW8wDQo+ID4+ID4gICA1OiAgICAgICA1MDc5
ICAgICAgMTA4MjEgICAgICAgODQzNSAgICAgIDEyOTg0ICBSSVNDLVYgSU5UQyAgIDUgIHJpc2N2
LXRpbWVyDQo+ID4+ID4gSVBJMDogICAgICAyMDQ1ICAgICAgIDI1MzcgICAgICAgIDg5MSAgICAg
ICAgODcwICBSZXNjaGVkdWxpbmcgaW50ZXJydXB0cw0KPiA+PiA+IElQSTE6ICAgICAgICAgOSAg
ICAgICAgMjY5ICAgICAgICAgOTEgICAgICAgIDE2OCAgRnVuY3Rpb24gY2FsbCBpbnRlcnJ1cHRz
DQo+ID4+ID4gSVBJMjogICAgICAgICAwICAgICAgICAgIDAgICAgICAgICAgMCAgICAgICAgICAw
ICBDUFUgc3RvcCBpbnRlcnJ1cHRzDQo+ID4+ID4NCj4gPj4gPiBUaGUgcGF0Y2hzZXQgaXMgYmFz
ZWQgdXAgTGludXgtNS43LXJjNiBhbmQgY2FuIGJlIGZvdW5kIGF0DQo+ID4+ID4gcmlzY3ZfaW50
Y192NSBicmFuY2ggb2Y6IGh0dHBzOi8vZ2l0aHViLmNvbS9hdnBhdGVsL2xpbnV4LmdpdA0KPiA+
PiA+DQo+ID4+ID4gVGhpcyBzZXJpZXMgaXMgdGVzdGVkIG9uOg0KPiA+PiA+ICAxLiBRRU1VIFJW
NjQgdmlydCBtYWNoaW5lIHVzaW5nIExpbnV4IFJJU0MtViBTLW1vZGUgIDIuIFFFTVUgUlYzMg0K
PiA+PiA+IHZpcnQgbWFjaGluZSB1c2luZyBMaW51eCBSSVNDLVYgUy1tb2RlICAzLiBRRU1VIFJW
NjQgdmlydCBtYWNoaW5lDQo+ID4+ID4gdXNpbmcgTGludXggUklTQy1WIE0tbW9kZSAoaS5lLiBO
b01NVSkNCj4gPj4gPg0KPiA+PiA+IENoYW5nZXMgc2luY2UgdjQ6DQo+ID4+ID4gIC0gUmViYXNl
ZCB0byBMaW51eC01LjctcmM2IGFuZCBtdWx0aS1QTElDIGltcHJvdmVtZW50IHBhdGNoZXMNCj4g
Pj4gPiAgLSBBZGRlZCBzZXBhcmF0ZSBwYXRjaCB0byBmb3JjZSBzZWxlY3QgUklTQ1ZfSU5UQyBm
b3IgQ09ORklHX1JJU0NWDQo+ID4+ID4gIC0gRml4ZWQgdGhlIGRyaXZlciBmb3IgTGludXggUklT
Qy1WIE5vTU1VDQo+ID4+ID4NCj4gPj4gPiBDaGFuZ2VzIHNpbmNlIHYzOg0KPiA+PiA+ICAtIFJl
YmFzZWQgdG8gTGludXgtNS42LXJjNSBhbmQgQXRpc2gncyBQTElDIHBhdGNoZXMNCj4gPj4gPiAg
LSBBZGRlZCBzZXBhcmF0ZSBwYXRjaCB0byByZW5hbWUgYW5kIG1vdmUgcGxpY19maW5kX2hhcnRf
aWQoKQ0KPiA+PiA+ICAgIHRvIGFyY2ggZGlyZWN0b3J5DQo+ID4+ID4gIC0gVXNlIHJpc2N2X29m
X3BhcmVudF9oYXJ0aWQoKSBpbiByaXNjdl9pbnRjX2luaXQoKSBpbnN0ZWFkIG9mDQo+ID4+ID4g
ICAgYXRvbWljIGNvdW50ZXINCj4gPj4gPg0KPiA+PiA+IENoYW5nZXMgc2luY2UgdjI6DQo+ID4+
ID4gIC0gRHJvcHBlZCBQQVRDSDIgc2luY2UgaXQgd2FzIG1lcmdlZCBsb25nLXRpbWUgYmFjaw0K
PiA+PiA+ICAtIFJlYmFzZWQgc2VyaWVzIGZyb20gTGludXgtNC4xOS1yYzIgdG8gTGludXgtNS42
LXJjMg0KPiA+PiA+DQo+ID4+ID4gQ2hhbmdlcyBzaW5jZSB2MToNCj4gPj4gPiAgLSBSZW1vdmVk
IGNoYW5nZXMgcmVsYXRlZCB0byBwdWdnYWJsZSBJUEkgdHJpZ2dlcmluZw0KPiA+PiA+ICAtIFNl
cGFyYXRlIHBhdGNoIGZvciBzZWxmLWNvbnRhaW5lZCBJUEkgaGFuZGxpbmcgcm91dGluZQ0KPiA+
PiA+ICAtIFJlbW92ZWQgcGF0Y2ggZm9yIEdFTkVSSUNfSVJRIGtjb25maWcgb3B0aW9ucw0KPiA+
PiA+ICAtIEFkZGVkIHBhdGNoIHRvIHJlbW92ZSBkb19JUlEoKSBmdW5jdGlvbg0KPiA+PiA+ICAt
IFJlYmFzZWQgdXBvbiBBdGlzaCdzIFNNUCBwYXRjaGVzDQo+ID4+ID4NCj4gPj4gPiBBbnVwIFBh
dGVsICg2KToNCj4gPj4gPiAgIFJJU0MtVjogc2VsZi1jb250YWluZWQgSVBJIGhhbmRsaW5nIHJv
dXRpbmUNCj4gPj4gPiAgIFJJU0MtVjogUmVuYW1lIGFuZCBtb3ZlIHBsaWNfZmluZF9oYXJ0X2lk
KCkgdG8gYXJjaCBkaXJlY3RvcnkNCj4gPj4gPiAgIGlycWNoaXA6IFJJU0MtViBwZXItSEFSVCBs
b2NhbCBpbnRlcnJ1cHQgY29udHJvbGxlciBkcml2ZXINCj4gPj4gPiAgIGNsb2Nrc291cmNlL2Ry
aXZlcnMvdGltZXItcmlzY3Y6IFVzZSBwZXItQ1BVIHRpbWVyIGludGVycnVwdA0KPiA+PiA+ICAg
UklTQy1WOiBSZW1vdmUgZG9fSVJRKCkgZnVuY3Rpb24NCj4gPj4gPiAgIFJJU0MtVjogRm9yY2Ug
c2VsZWN0IFJJU0NWX0lOVEMgZm9yIENPTkZJR19SSVNDVg0KPiA+PiA+DQo+ID4+ID4gIGFyY2gv
cmlzY3YvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgIHwgICAyICsNCj4gPj4gPiAgYXJjaC9y
aXNjdi9pbmNsdWRlL2FzbS9pcnEuaCAgICAgICAgICAgfCAgIDUgLQ0KPiA+PiA+ICBhcmNoL3Jp
c2N2L2luY2x1ZGUvYXNtL3Byb2Nlc3Nvci5oICAgICB8ICAgMSArDQo+ID4+ID4gIGFyY2gvcmlz
Y3YvaW5jbHVkZS9hc20vc21wLmggICAgICAgICAgIHwgICAzICsNCj4gPj4gPiAgYXJjaC9yaXNj
di9rZXJuZWwvY3B1LmMgICAgICAgICAgICAgICAgfCAgMTYgKysrDQo+ID4+ID4gIGFyY2gvcmlz
Y3Yva2VybmVsL2VudHJ5LlMgICAgICAgICAgICAgIHwgICA0ICstDQo+ID4+ID4gIGFyY2gvcmlz
Y3Yva2VybmVsL2lycS5jICAgICAgICAgICAgICAgIHwgIDMzICstLS0tLQ0KPiA+PiA+ICBhcmNo
L3Jpc2N2L2tlcm5lbC9zbXAuYyAgICAgICAgICAgICAgICB8ICAxMSArLQ0KPiA+PiA+ICBhcmNo
L3Jpc2N2L2tlcm5lbC90cmFwcy5jICAgICAgICAgICAgICB8ICAgMiAtDQo+ID4+ID4gIGRyaXZl
cnMvY2xvY2tzb3VyY2UvdGltZXItcmlzY3YuYyAgICAgIHwgIDMwICsrKystDQo+ID4+ID4gIGRy
aXZlcnMvaXJxY2hpcC9LY29uZmlnICAgICAgICAgICAgICAgIHwgIDEzICsrKw0KPiA+PiA+ICBk
cml2ZXJzL2lycWNoaXAvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMSArDQo+ID4+ID4gIGRy
aXZlcnMvaXJxY2hpcC9pcnEtcmlzY3YtaW50Yy5jICAgICAgIHwgMTUwICsrKysrKysrKysrKysr
KysrKysrKysrKysNCj4gPj4gPiAgZHJpdmVycy9pcnFjaGlwL2lycS1zaWZpdmUtcGxpYy5jICAg
ICAgfCAgNTIgKysrKystLS0tDQo+ID4+ID4gIGluY2x1ZGUvbGludXgvY3B1aG90cGx1Zy5oICAg
ICAgICAgICAgIHwgICAxICsNCj4gPj4gPiAgaW5jbHVkZS9saW51eC9pcnFjaGlwL2lycS1yaXNj
di1pbnRjLmggfCAgMjAgKysrKw0KPiA+PiA+ICAxNiBmaWxlcyBjaGFuZ2VkLCAyODAgaW5zZXJ0
aW9ucygrKSwgNjQgZGVsZXRpb25zKC0pICBjcmVhdGUgbW9kZQ0KPiA+PiA+IDEwMDY0NCBkcml2
ZXJzL2lycWNoaXAvaXJxLXJpc2N2LWludGMuYyAgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+ID4+ID4g
aW5jbHVkZS9saW51eC9pcnFjaGlwL2lycS1yaXNjdi1pbnRjLmgNCj4gPj4NCj4gPj4gU28gSSBy
ZWFkIHRocm91Z2ggdGhpcyBhIGJpdCwgYW5kIHdoaWxlIEkgaGF2ZW4ndCBnb25lIHRocm91Z2gg
ZXZlcnkNCj4gPj4gbGluZSBvZiBjb2RlIEknbSBzb21ld2hhdCBpbmNsaW5lZCB0b3dhcmQgdGFr
aW5nIGl0Lg0KPiA+Pg0KPiA+PiBEdXJpbmcgdGhlIG9yaWdpbmFsIFJJU0MtViBwb3J0IHN1Ym1p
c3Npb24gd2Ugd2VudCBiYWNrIGFuZCBmb3J0aA0KPiA+PiBiZXR3ZWVuIGhhdmluZyB0aGlzIGZp
cnN0LWxldmVsIGludGVycnVwdCBjb250cm9sbGVyIGluIGFyY2gvcmlzY3YvDQo+ID4+IHZzIGRy
aXZlcnMvaXJxY2hpcC8uICBUaGUgb3JpZ2luYWwgZGVjaWRpbmcgZmFjdG9yIHdhcyB0aGF0IHRo
ZSBJU0ENCj4gPj4gbWFuZGF0ZWQgdGhlIGludGVycnVwdCBjb250cm9sbGVyLCBidXQgYXMgdGhh
dCdzIHByb3ZpbmcgdG8gYmUgbGVzcw0KPiA+PiBhbmQgbGVzcyB0aGUgY2FzZSBldmVyeSBkYXkg
KHdpdGggdGhlIENMSUMgYW5kIE0tbW9kZSBMaW51eCkgaXQNCj4gPj4gY2VydGFpbmx5IHNlZW0g
c2FuZSB0byBtb3ZlIGFsbCBvdXIgaW50ZXJydXB0IGNvbnRyb2xsZXIgZHJpdmVycyBvdXQgb2YN
Cj4gYXJjaC9yaXNjdi8uDQo+ID4+DQo+ID4+IFRoaXMgaXMgY2VydGFpbmx5IGEgc3RlcCBpbiB0
aGUgcmlnaHQgZGlyZWN0aW9uLCBhbmQgaXQgaGFuZGxlcyBzb21lDQo+ID4+IG9mIHRoZSBtb3Jl
IGdsYXJpbmcgaXNzdWVzIChpc2N2X3RpbWVyX2ludGVycnVwdCBhbmQgbGFja2luZyBJUlFzIGZv
cg0KPiA+PiB0aGUgQ0xJTlQpLiAgSSB0aGluayB3ZSBzaG91bGQganVzdCBnbyBhaGVhZCBhbmQg
bWVyZ2UgaXQsIGV2ZW4NCj4gPj4gdGhvdWdoIHRoZXJlIG1pZ2h0IGJlIHNvbWUgbW9yZSByZWZh
Y3RvcmluZyB0byBkbyB3aGVuIHdlIGV2ZW50dWFsbHkNCj4gPj4gZW5kIHVwIHdpdGggYW5vdGhl
ciBpbnRlcnJ1cHQgY29udHJvbGxlci4NCj4gPj4NCj4gPj4gSSB0aGluayBpdCdzIGJlc3QgaWYg
dGhpcyBhbGwgZ29lcyBpbiB0aHJvdWdoIGEgc2luZ2xlIHRyZWUsIGFzIGl0DQo+ID4+IHNlZW1z
IG1vcmUgd29yayB0aGFuIGl0J3Mgd29ydGggdG8gc3BsaXQgaXQgdXAuICBJJ20gaGFwcHkgdG8g
dGFrZSBpdA0KPiA+PiB0aHJvdWdoIG15IHRyZWUgaWYgdGhhdCdzIE9LIHdpdGggdGhlIGlycWNo
aXAgZm9sa3M/DQo+ID4NCj4gPiBBIHNtYWxsIGhlYWRzIHVwLi4uDQo+ID4NCj4gPiBNYXJjIGhh
cyBxdWV1ZWQgYSBmZXcgUExJQyBpbXByb3ZlbWVudCBwYXRjaGVzIGZvciBMaW51eC1uZXh0Lg0K
PiA+IChodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExNTU1MDUxLykNCj4gPg0K
PiA+IFRoaXMgc2VyaWVzIChwYXJ0aWN1bGFybHkgUEFUQ0gzKSBpcyBiYXNlZCB1cG9uIGFib3Zl
IG1lbnRpb25lZCBQTElDDQo+ID4gcGF0Y2hlcy4NCj4gPg0KPiA+IEFwYXJ0IGZyb20gYWJvdmUs
IEkgZG9uJ3Qgc2VlIGFueSBwb3RlbnRpYWwgbWVyZ2UgY29uZmxpY3RzLg0KPiANCj4gVGhhbmtz
LiAgSSBoaXQgc29tZSBtZXJnZSBpc3N1ZXMgd2hlbiBwdWxsaW5nIGl0IGludG8gYSBzdGFnaW5n
IGJyYW5jaCwgYnV0DQo+IG5vdGhpbmcgc2VlbWVkIGludGVyZXN0aW5nLiAgSSB0aGluayB0aGUg
YmVzdCBiZXQgaGVyZSBpcyB0byBqdXN0IHB1bGwgaXQgaW4gdGhyb3VnaA0KPiB0aGUgUklTQy1W
IHRyZWUuDQo+IA0KPiBBc2lkZSBmcm9tIHRoaXMsIEknbSByZWFkeSB0byBzZW5kIG91dCBteSBm
aXJzdCA1LjggUFIuICBJJ20gZ29pbmcgdG8gcHV0IHRoaXMgb24gYQ0KPiBzdGFnaW5nIGJyYW5j
aCBhbmQgc2VuZCBpdCB1cCBhcyBhIHNlY29uZCA1LjggbWVyZ2Ugd2luZG93IFBSIG9uY2UNCj4g
ZXZlcnl0aGluZyBlbHNlIHNldHRsZXMuICBJSVJDIG91ciBvdGhlciBpcnFjaGlwIGNoYW5nZXMg
aGF2ZSBiZWVuIGFyb3VuZCBmb3IgYQ0KPiB3aGlsZSwgc28gdGhleSBzaG91bGQgYmUgZ29pbmcg
dXAgZWFybHkgaW4gdGhlIG1lcmdlIHdpbmRvdy4NCg0KU2VuZGluZyB0aGlzIGFzIHBhcnQgb2Yg
c2Vjb25kIDUuOCBtZXJnZSB3aW5kb3cgUFIgd2lsbCBiZSBwZXJmZWN0LiBJdCB3aWxsDQphbHNv
IHRha2UgY2FyZSBvZiBkZXBlbmRlbmN5IG9uIFBMSUMgcGF0Y2hlcy4NCg0KTGV0IG1lIGtub3cg
aWYgeW91IHdhbnQgbWUgdG8gcmViYXNlIGFuZCBzZW5kIHY2IGJlZm9yZSB5b3VyIHNlY29uZCA1
LjggUFIuDQoNClRoYW5rcywNCkFudXANCg==

