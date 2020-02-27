Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3B2170D80
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 01:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ckps28SYkVweMJF2SY5LcXYLlRdGKB1lKG/0P8E/8Bc=; b=KViHY7LoATVV7N4IudRNVLneV
	NjduRn32xeZo3khRjIAEVzArs74DFN/jWJWiqlmLdq2UhOK1XCYW8uL2vHKKciOkaS5e8GflCRJHA
	kATFWHAukn4H52MmCYVlALa+EhHdjGSbvAxCgs1Ky7sZxIY1+z9YpSUTANWEGM6dwx0iJhiac06jX
	jRRt5TE4ltQXrV0v7e0IWsjJCzHeBCB/gjLYEzfg973fuWYGfS2qX/HNimKG1BW21bP7wg+fnFGcR
	AjiaXTcCVXM/uWTgagq6NuZB923+ZgLwkiL4IuEe6dOkpvsv5q6jONcT5e/JQOPTlsu1xZc9V4fTj
	0LY6VHZNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j77QS-0004KN-DF; Thu, 27 Feb 2020 00:53:16 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j77QP-0004JZ-8c
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 00:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582764805; x=1614300805;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ckps28SYkVweMJF2SY5LcXYLlRdGKB1lKG/0P8E/8Bc=;
 b=QF6ANYtzhErrRyK5VmpU+8AmKre3uk/MYdMHsaO9/SQC2hYatucTgPdY
 OfYYx065aPXFSri6hEILHCQFFeAeNaPBDPiuUpBMl+Edvv6CYEFJBOFd+
 66q+af8bLYGy8xD30bPemL4nb6BB9n79NP61aKFLLVxyTV+I4jnSKJKil
 HnjpfjeNFj/u7x3ArTD17AJcMD3OBOYDoWZKlejjyrzDVtUfivaFtzAtN
 AYyqNNOtKAtjM9DJ9MmW7bSNRC5INdJGIOj6HbT93suqlqX4Y3CSnJLGr
 ceXD70aWI4kRLoEEFCt49JP98ezldghjTcc1hk6v1rFFFvtVpUCBEr0DT Q==;
IronPort-SDR: y1wpxpdg5xoeapUxSFqwqe4ZsLwU27M/xSgJ1J/qWHPRpyjZIPD0Xn6kRPg/Zt1zHcHHR4u9h7
 E2Ew8gludEovA75FMB1quVQl+Wqu32hsTrujYpD7GbHtiMgGkTba7svwtxRyOUcykc1OWK5fyC
 cVdc6E59pDI2MBsPEVkEEkEc0AkGhSmj9cE5utJuihl5zkUWrP8kIyh4+QxlKReeim85cPxCqq
 NfBNCQKsgSphHeh6AfU6QEZ+MguE4TyefDI7IU5MICo+XMMrp7GhCtxLPiha4e6sZVKa8YX9on
 4fI=
X-IronPort-AV: E=Sophos;i="5.70,490,1574092800"; d="scan'208";a="232758574"
Received: from mail-mw2nam12lp2048.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.48])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 08:53:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZMK4JUiExIpK2yx7oZjYM1sKRT/nnrvUMqKBpr6MBcxIMbv9EkkHGZtRjpYUXrqoDp7P1ci8nI+ZqtZbeyDHIFFtYXIrPo3BjvniAA95bglIfSmalLk9V8VirUzbZ1DEOq8oRg2s1fqsnzYWj5ZmoTfXvDa3357XyUcOb8Db0V7mlKYGW9QeiL3enTVXvrCSr+7VfrCYcEGHwb2DbQi5n8+NwUU3WFUyJ+YXeCRRgxtrfaUY2R48aIc0xsHaZIXtXXjhJSwCDAOj8hiU7gGjgIyaJuaA+dQa0PNW8ihgG4GVmdpYGWrgNfIOsDjvhArJKpDaYtCt94++9KiVaznUGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ckps28SYkVweMJF2SY5LcXYLlRdGKB1lKG/0P8E/8Bc=;
 b=BrM4q7MsyO5hrTN2iXhryyNhDrc1bYzJWDRQwkErdcnZccsMxoKZzrDJfirZKozsgWvEKXe0L+D3ZYSOidi/gqI47334rpAeji5WizBdNfif+4ZJgXI54SG1i68gf0Fn5IfunwgWevebj8vqjLiCkxytI+8lYQmflsX05a4xN8FVe4YoMkxypDKdTPT5Y0tKSISqLTRWgYAIk8yxZxAofVQ+jmqeUlCOGIX1rR3978lcE7vbzeAEXDN6LxXKCZ43RIimpkBgopRo49fwrXYNB9NIeS7le9jdGRr/VNzbmD98x2PbYrz9GusrXWS3Ix8posa1qCCeS71dc5ifXenaNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ckps28SYkVweMJF2SY5LcXYLlRdGKB1lKG/0P8E/8Bc=;
 b=YxaNitAF3mvbDhT0I6fNs6ll8HwL5OMRzODCE9p1bgxtpapLLEBeNu4JqCieMaMK5j8XccbOXv9mIPSOTkHIWymogY8RAbPjwhbebwVg6JCFzIZ85IL4GLdTW+nj+uG1d8Dh3LIngiRyccNqHSb5CIBQRH1FNkCZHnAltGWkA7A=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (2603:10b6:a02:ae::29)
 by BYAPR04MB5864.namprd04.prod.outlook.com (2603:10b6:a03:10d::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Thu, 27 Feb
 2020 00:53:02 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e%6]) with mapi id 15.20.2772.012; Thu, 27 Feb 2020
 00:53:02 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "ardb@kernel.org" <ardb@kernel.org>
Subject: Re: [RFC PATCH 2/5] include: pe.h: Add RISC-V related PE definition
Thread-Topic: [RFC PATCH 2/5] include: pe.h: Add RISC-V related PE definition
Thread-Index: AQHV7EGbQ/hJ0+85jUS9XgnqZeDXpagtDecAgAEqGoA=
Date: Thu, 27 Feb 2020 00:53:01 +0000
Message-ID: <aec81e45ab5ee1104d2088513fe4ca668b83d04a.camel@wdc.com>
References: <20200226011037.7179-1-atish.patra@wdc.com>
 <20200226011037.7179-3-atish.patra@wdc.com>
 <CAKv+Gu-LAfcH5mLZNLk7=A3E43a93FK+8DPYNrx1FANnbo3J7g@mail.gmail.com>
In-Reply-To: <CAKv+Gu-LAfcH5mLZNLk7=A3E43a93FK+8DPYNrx1FANnbo3J7g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bde3bbc0-a1c0-480e-c0c7-08d7bb1f65dd
x-ms-traffictypediagnostic: BYAPR04MB5864:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB58643C25C01B2FD3E02561FEFAEB0@BYAPR04MB5864.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(366004)(189003)(199004)(64756008)(4326008)(66556008)(66446008)(6486002)(26005)(66946007)(7406005)(76116006)(6916009)(186003)(6506007)(7416002)(4744005)(86362001)(66476007)(6512007)(71200400001)(478600001)(8936002)(81156014)(81166006)(36756003)(8676002)(316002)(2906002)(54906003)(5660300002)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5864;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GBwmDI9oLkEviR24iCWDI8jF4o1dtMZS+bnsUixry2wDiYDhGs5EjZL/BA6GSshT7MKjfuXD8C3UTfA94PfkfdcuD/H8xrGnkdKAkSlNJrzKcmxuYRcOsGpy+62FDjLmdfV0lDWqs5Qi0ls8VCsubLRzkxNbW8ELBNZPbBOQ/fDFe5yBK9e1JNw5PYb0OO9WsVrclVJIT7LDTCExp7K0ieewoW8fNBAbdQ6tt8goWxTwM2CfjH6Ntqvz480NNGbXo8t+98BYQxz2MQSkvR3d3eLtVhXClM6d1BlUOSFzw5ug78ald46AfTn4jUjRRAKSvrLKMWsFaOm11t37wUmvVbjV5/fSlfPyxWbzme12DEqcNvY1fDkfhJwVnNKMee8OvlTO2gheBLgU18UcI7Cc8DNDMPx+a9m3o5+yk6DKfmqFz9O86r06r7mIpDsBXgox
x-ms-exchange-antispam-messagedata: Tw1zDQpxzeGe4K0cjGdDrQMQUJ1MDCpSDwEWO38PeLYMJ2CTkjWOf7V3w4V3RvziuZw0BQDbuh1Zu9wcUpowkWKydEUZCg4ZTyp3i233FR8pBx/19972E4XIVQFYfG9IXVeSF6ipxNn95N9wxmpfnQ==
Content-Type: text/plain; charset="utf-8"
Content-ID: <C7DBC50AADC2E642A6F479BB55C8A7B3@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bde3bbc0-a1c0-480e-c0c7-08d7bb1f65dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 00:53:02.0068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Kb2O0lTk65YZhEOwK5JIp2Cm9OWsYSiaajMQyg/EU5ZHHGUt1rjOJ9WB9ITlBq9JAQ2ixzAzVIYS+1bemJMNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5864
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_165313_395850_7725ADD8 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "greentime.hu@sifive.com" <greentime.hu@sifive.com>, "bp@suse.de" <bp@suse.de>,
 "han_mao@c-sky.com" <han_mao@c-sky.com>,
 "daniel.schaefer@hpe.com" <daniel.schaefer@hpe.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "agraf@csgraf.de" <agraf@csgraf.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDIwLTAyLTI2IGF0IDA4OjA2ICswMTAwLCBBcmQgQmllc2hldXZlbCB3cm90ZToN
Cj4gT24gV2VkLCAyNiBGZWIgMjAyMCBhdCAwMjoxMCwgQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJh
QHdkYy5jb20+DQo+IHdyb3RlOg0KPiA+IERlZmluZSBSSVNDLVYgcmVsYXRlZCBtYWNoaW5lIHR5
cGVzLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3
ZGMuY29tPg0KPiANCj4gSWYgeW91IHB1dCB0aGVtIGluIGFscGhhYmV0aWNhbCBvcmRlciB3cnQg
U0gzOg0KPiANCg0KRG9uZS4NCg0KPiBSZXZpZXdlZC1ieTogQXJkIEJpZXNoZXV2ZWwgPGFyZGJA
a2VybmVsLm9yZz4NCj4gDQoNCj4gDQo+ID4gLS0tDQo+ID4gIGluY2x1ZGUvbGludXgvcGUuaCB8
IDMgKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9wZS5oIGIvaW5jbHVkZS9saW51eC9wZS5oDQo+ID4g
aW5kZXggOGFkNzFkNzYzYTc3Li42YTdjNDk3ZTRiMWYgMTAwNjQ0DQo+ID4gLS0tIGEvaW5jbHVk
ZS9saW51eC9wZS5oDQo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9wZS5oDQo+ID4gQEAgLTU2LDYg
KzU2LDkgQEANCj4gPiAgI2RlZmluZSAgICAgICAgSU1BR0VfRklMRV9NQUNISU5FX1BPV0VSUENG
UCAgICAweDAxZjENCj4gPiAgI2RlZmluZSAgICAgICAgSU1BR0VfRklMRV9NQUNISU5FX1I0MDAw
ICAgICAgICAweDAxNjYNCj4gPiAgI2RlZmluZSAgICAgICAgSU1BR0VfRklMRV9NQUNISU5FX1NI
MyAgICAgICAgICAweDAxYTINCj4gPiArI2RlZmluZSAgICAgICAgSU1BR0VfRklMRV9NQUNISU5F
X1JJU0NWMzIgICAgICAweDUwMzINCj4gPiArI2RlZmluZSAgICAgICAgSU1BR0VfRklMRV9NQUNI
SU5FX1JJU0NWNjQgICAgICAweDUwNjQNCj4gPiArI2RlZmluZSAgICAgICAgSU1BR0VfRklMRV9N
QUNISU5FX1JJU0NWMTI4ICAgICAweDUxMjgNCj4gPiAgI2RlZmluZSAgICAgICAgSU1BR0VfRklM
RV9NQUNISU5FX1NIM0RTUCAgICAgICAweDAxYTMNCj4gPiAgI2RlZmluZSAgICAgICAgSU1BR0Vf
RklMRV9NQUNISU5FX1NIM0UgICAgICAgICAweDAxYTQNCj4gPiAgI2RlZmluZSAgICAgICAgSU1B
R0VfRklMRV9NQUNISU5FX1NINCAgICAgICAgICAweDAxYTYNCj4gPiAtLQ0KPiA+IDIuMjQuMA0K
PiA+IA0KDQotLSANClJlZ2FyZHMsDQpBdGlzaA0K

