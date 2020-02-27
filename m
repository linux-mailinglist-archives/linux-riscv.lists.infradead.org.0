Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB022170DBF
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 02:17:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V/YjlqMv1WDjIKdWVCr9YlO840gJMHfrhHefdFvtnf4=; b=EGEDBp3j3X8MPossGMmD81GmN
	gdCJm/vL4bfH/DFtkhjazEDDDssHotxnHsE7Mx8mPPYPpxP6irEyv6lZoyaek0Yw6xWhYyiHn9D4D
	0e4RJI900wLHaG8DoHZfd1BmLvm3HbHSIuG2UMkNuw0CTfPeP5rh+hIy8Ok7+L+FBM17LAI9cJwvn
	o9tJDIwAtGKNLinn1H89RYXr5RBdqhMGce7e6KBE2AiJsg8Sy3QMpz/fSFn7OYtz7kuIQe4AMq08S
	DdWwv/AnEPDKVt6Xfw6J193A9Xog0jKurG46yqhSr2NqLbCy4a0JCMqPuohDj+gvFEL6iKK1YtQBF
	qMdFdN43g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j77nW-0003dH-Ri; Thu, 27 Feb 2020 01:17:06 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j77nT-0003ca-A6
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 01:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582766238; x=1614302238;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=V/YjlqMv1WDjIKdWVCr9YlO840gJMHfrhHefdFvtnf4=;
 b=T863VsQkY5ec6Ls/0KuUK4O2if7vQbt0x9mEuHw7PofR1gPDIg+BKoLd
 1CcVGqCyISy9B9l8dYXkj3phc+AumvkYajdKd+HrzzwN0T1i5CBQD65Uk
 mb4eO9E/LHolr3QOH8O1JKwzie5blnxK42kbVRpDxJxXeBzswFW08OnET
 0IxobO5ziFaYWUG6ccf3/xsYkw9L1gq9j9ztNjFg+7K9nztwcIvaGu3pP
 +2ZxkJDSV9/BxPX8t4A/4RHVRjnQHuTws0XUfpmlbQiIgit255MmnFUmB
 HG1XsW7k4DrzdFO9d/sL7QvWlDnxm4ANP4CbPzAcnmssihzZn9wjApADE w==;
IronPort-SDR: Z9gq7t3Nsdp3q7smg5FKncCnZ4NskH9j/hJ9Zgv2muuDghDH+FENjABkOWfDbLXo6FI/283BVf
 6xmgHlmunTAdW4LdmNFByjLrX8HIi40EKBeP0R4a4bo7vYxEFB0EAsLnjN68WKam3kWNHkWDRG
 T4IHbTdZqnGfZnMmlYhriBOutZSzb75cO2Gypk/t/aOAMsQ8vsT8+1OoTzFkI6bdz9Q5wUANvm
 yYpiqmCXwgLRirJRIO6y8qtu2tkym+Xxy+e17H4VRPwYEj0MgW0sIeYli2mj+Y1D9BKftR/A5w
 aPY=
X-IronPort-AV: E=Sophos;i="5.70,490,1574092800"; d="scan'208";a="232760706"
Received: from mail-dm6nam12lp2169.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.169])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 09:16:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QVlLjBxzD2qZXxNGlDYuf5CnxyaJkw3iYH9RB+TH9Lcs0sPsbJONrGJR46oLm83ETCAAURbMZpg5L6eACtjds1SpiAn+AG2oE7GHRgOaKTWkoOmtMp7cJXxyYnQkYnrM/KtkFgN9fbUgf/1OTyH2VviOyDZ4Fxn6PdxIyoVZNPfJwfjOFfUsEtQozMXm4ogahy3tJ1OHixJSkQXyFndqdTmlTSVt11BdOh9roJNiePtfaOF6lSYZBeXhz720trH9ARV2yFOaUrpjR+oBZFNGTzaAL6sETd7nELIy8lDpAjG1I8fVEGCA2AIZn0t2WUuqYb2k+3QXm4PzYZ7bpyz4yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/YjlqMv1WDjIKdWVCr9YlO840gJMHfrhHefdFvtnf4=;
 b=daYEV7/DPXAPCi9la5rR16HtHacI89pJDKW3jCz2dDzHKqZze7i7UBD/45Rt0IkUQ2KmIxeC6U5iYlH4Z2PGg7CKUFFmk+tHHMLrJbfPJtEZhoFzJch9KVcttog1GoRO7rGRJfWt6EN2qLg7ZtyitVR0NASHjttxKBwxLUMIMHnTrTjHQhsWFuWPLchaYP5qlYbw9Pm1A07lwXhw67BzvRW4o+b4FfaQNTiDcePe9kNgo/y0cM+fsaA9osbUOFd01rnKZyRktkmZFnA+CiJzG8ArL4KRcTYIp1pVMg/3uzdjl9hYoWNwMherhMDgPqFwDkljXwo56xUQO8EDf3xTMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/YjlqMv1WDjIKdWVCr9YlO840gJMHfrhHefdFvtnf4=;
 b=lupMOXyeY0PfMvavCKo9riIYlu4z3J6eCVRQJu54yy6mj4sR9E/iYHmTXNQcBlVPDIhtOHNjl1xTKUJ0lpIkQLZueGM9xfM/UWcPMugwiOhlwDQooUkzGylyrEB6N/dddDh0KET/WM2ptgeW0vwJBebYUiZdrgSk/NXDp4rlwM4=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (2603:10b6:a02:ae::29)
 by BYAPR04MB5941.namprd04.prod.outlook.com (2603:10b6:a03:109::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18; Thu, 27 Feb
 2020 01:16:48 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e%6]) with mapi id 15.20.2772.012; Thu, 27 Feb 2020
 01:16:48 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "ardb@kernel.org" <ardb@kernel.org>
Subject: Re: [RFC PATCH 1/5] efi: Move arm-stub to a common file
Thread-Topic: [RFC PATCH 1/5] efi: Move arm-stub to a common file
Thread-Index: AQHV7EGZK/1UaiAF9kmVE5KEEN4Yj6gtDVsAgAExSoA=
Date: Thu, 27 Feb 2020 01:16:48 +0000
Message-ID: <eab4bf04c586afca31a95818fd8dc60404f1b1f5.camel@wdc.com>
References: <20200226011037.7179-1-atish.patra@wdc.com>
 <20200226011037.7179-2-atish.patra@wdc.com>
 <CAKv+Gu-Dk4hOobKhOEn1Wpbc4Ta2F5anZQ4rRmjpkPfT2g1L3w@mail.gmail.com>
In-Reply-To: <CAKv+Gu-Dk4hOobKhOEn1Wpbc4Ta2F5anZQ4rRmjpkPfT2g1L3w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b34d7af0-94ad-4ea4-1373-08d7bb22b82a
x-ms-traffictypediagnostic: BYAPR04MB5941:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB594168C5D53B78532213EB76FAEB0@BYAPR04MB5941.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(366004)(199004)(189003)(64756008)(66446008)(2906002)(6512007)(478600001)(186003)(2616005)(6486002)(6916009)(26005)(66946007)(66556008)(6506007)(76116006)(4326008)(66476007)(7406005)(316002)(54906003)(86362001)(7416002)(71200400001)(5660300002)(8676002)(81156014)(8936002)(36756003)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5941;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pvD9aC4/awDzSdyyPMzJcIeDufqciS+zgZgelEOUsMujUIU+mtDEZzYX0QLsINnoH+8NKJXqeEK7HQpINyrCSWGdXrr3XzfWanwX9g9tMaBY6qifwp2bnGYEij7ZL9Gateqv+xecfNG03Duo4GAEC2tvp8pF1KZ20De/IHSwgMkbZt7qJhioMhQ+0N6DprZCzw/obOA8PPAblsuOz9GCutAmGLBOe/QcYp9N7vKkQgGmwt+D38A1Rnk99NBIcic0cyYneAESsK+wZ/blBZlhNjHhbmeCiIyMJjFg0qhXe0bl0KbXp7XEpvothHwkfK/BTeb2t6mBlTWjuIaNIL+Fmb/ilQAxRaAxv8eMmTGNtgb1JBuc9xEu2mUHru+ElvpVjy2rHK49RbPuLDKklRun3qcG/UeBmrm2WMqHiiiZKCJcpDDcTwA/5bJfDmfaaeVr
x-ms-exchange-antispam-messagedata: UMjIoGM0OKBxowigSQXHphA8aCrvHopYB7dRGJL6meKhYL9vPnIrlK9gW1AuC1lcj6aCtGL91ZYafugg/NvzN2CSVg0UFGCUKFA1aNechHezJXFzyN0zyTvokFj//wkv9T1G0ORsUj8LZBqAh32y8A==
Content-Type: text/plain; charset="utf-8"
Content-ID: <571A67C9CD045342982450EDD11315C4@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b34d7af0-94ad-4ea4-1373-08d7bb22b82a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 01:16:48.6323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WFIdLfmQkNnX70bprTOfmDST9kVc1x3BPxOMs3fW77CDjqOWkQCKr0I+lRv6fuPkqmQnXaA7tvBCTzEkcb8uPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5941
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_171703_477865_A4F7E5CF 
X-CRM114-Status: GOOD (  26.63  )
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

T24gV2VkLCAyMDIwLTAyLTI2IGF0IDA4OjA0ICswMTAwLCBBcmQgQmllc2hldXZlbCB3cm90ZToN
Cj4gSGkgQXRpc2gsDQo+IA0KPiBPbiBXZWQsIDI2IEZlYiAyMDIwIGF0IDAyOjEwLCBBdGlzaCBQ
YXRyYSA8YXRpc2gucGF0cmFAd2RjLmNvbT4NCj4gd3JvdGU6DQo+ID4gTW9zdCBvZiB0aGUgYXJt
LXN0dWIgY29kZSBpcyB3cml0dGVuIGluIGFuIGFyY2hpdGVjdHVyZSBpbmRlcGVuZGVudA0KPiA+
IG1hbm5lci4NCj4gPiBBcyBhIHJlc3VsdCwgUklTQy1WIGNhbiByZXVzZSBtb3N0IG9mIHRoZSBh
cm0tc3R1YiBjb2RlLg0KPiA+IA0KPiA+IFJlbmFtZSB0aGUgYXJtLXN0dWIuYyB0byBlZmktc3R1
Yi5jIHNvIHRoYXQgQVJNLCBBUk02NCBhbmQgUklTQy1WDQo+ID4gY2FuIHVzZSBpdC4NCj4gPiBU
aGlzIHBhdGNoIGRvZXNuJ3QgaW50cm9kdWNlIGFueSBmdW5jdGlvbmFsIGNoYW5nZXMuDQo+ID4g
DQo+ID4gU2lnbmVkLW9mZi1ieTogQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJhQHdkYy5jb20+DQo+
ID4gLS0tDQo+ID4gIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgMiArLQ0KPiA+ICBhcmNoL2FybTY0L0tjb25maWcgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDIgKy0NCj4gPiAgZHJpdmVycy9maXJtd2FyZS9lZmkvS2Nv
bmZpZyAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2ICsrKy0tLQ0KPiA+ICBkcml2ZXJzL2Zp
cm13YXJlL2VmaS9saWJzdHViL01ha2VmaWxlICAgICAgICAgICAgICAgIHwgMTIgKysrKysrDQo+
ID4gLS0tLS0tDQo+ID4gIC4uLi9maXJtd2FyZS9lZmkvbGlic3R1Yi97YXJtLXN0dWIuYyA9PiBl
Zmktc3R1Yi5jfSAgfCAgNyArKysrKystDQo+ID4gIDUgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0
aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+ID4gIHJlbmFtZSBkcml2ZXJzL2Zpcm13YXJlL2Vm
aS9saWJzdHViL3thcm0tc3R1Yi5jID0+IGVmaS1zdHViLmN9DQo+ID4gKDk4JSkNCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vS2NvbmZpZyBiL2FyY2gvYXJtL0tjb25maWcNCj4gPiBp
bmRleCA5Nzg2NGFhYmMyYTYuLjk5MzFmZWEwNjA3NiAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL2Fy
bS9LY29uZmlnDQo+ID4gKysrIGIvYXJjaC9hcm0vS2NvbmZpZw0KPiA+IEBAIC0xOTU1LDcgKzE5
NTUsNyBAQCBjb25maWcgRUZJDQo+ID4gICAgICAgICBzZWxlY3QgVUNTMl9TVFJJTkcNCj4gPiAg
ICAgICAgIHNlbGVjdCBFRklfUEFSQU1TX0ZST01fRkRUDQo+ID4gICAgICAgICBzZWxlY3QgRUZJ
X1NUVUINCj4gPiAtICAgICAgIHNlbGVjdCBFRklfQVJNU1RVQg0KPiA+ICsgICAgICAgc2VsZWN0
IEVGSV9HRU5FUklDX0FSQ0hfU1RVQg0KPiA+ICAgICAgICAgc2VsZWN0IEVGSV9SVU5USU1FX1dS
QVBQRVJTDQo+ID4gICAgICAgICAtLS1oZWxwLS0tDQo+ID4gICAgICAgICAgIFRoaXMgb3B0aW9u
IHByb3ZpZGVzIHN1cHBvcnQgZm9yIHJ1bnRpbWUgc2VydmljZXMNCj4gPiBwcm92aWRlZA0KPiA+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L0tjb25maWcgYi9hcmNoL2FybTY0L0tjb25maWcNCj4g
PiBpbmRleCAwYjMwZTg4NGUwODguLmFlNzc2ZDhlZjJmOSAxMDA2NDQNCj4gPiAtLS0gYS9hcmNo
L2FybTY0L0tjb25maWcNCj4gPiArKysgYi9hcmNoL2FybTY0L0tjb25maWcNCj4gPiBAQCAtMTcy
MCw3ICsxNzIwLDcgQEAgY29uZmlnIEVGSQ0KPiA+ICAgICAgICAgc2VsZWN0IEVGSV9QQVJBTVNf
RlJPTV9GRFQNCj4gPiAgICAgICAgIHNlbGVjdCBFRklfUlVOVElNRV9XUkFQUEVSUw0KPiA+ICAg
ICAgICAgc2VsZWN0IEVGSV9TVFVCDQo+ID4gLSAgICAgICBzZWxlY3QgRUZJX0FSTVNUVUINCj4g
PiArICAgICAgIHNlbGVjdCBFRklfR0VORVJJQ19BUkNIX1NUVUINCj4gPiAgICAgICAgIGRlZmF1
bHQgeQ0KPiA+ICAgICAgICAgaGVscA0KPiA+ICAgICAgICAgICBUaGlzIG9wdGlvbiBwcm92aWRl
cyBzdXBwb3J0IGZvciBydW50aW1lIHNlcnZpY2VzDQo+ID4gcHJvdmlkZWQNCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9maXJtd2FyZS9lZmkvS2NvbmZpZw0KPiA+IGIvZHJpdmVycy9maXJtd2Fy
ZS9lZmkvS2NvbmZpZw0KPiA+IGluZGV4IGVjYzgzZTJmMDMyYy4uMWJjZWRiNzgxMmRhIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZmlybXdhcmUvZWZpL0tjb25maWcNCj4gPiArKysgYi9kcml2
ZXJzL2Zpcm13YXJlL2VmaS9LY29uZmlnDQo+ID4gQEAgLTEwNiwxMiArMTA2LDEyIEBAIGNvbmZp
ZyBFRklfUEFSQU1TX0ZST01fRkRUDQo+ID4gIGNvbmZpZyBFRklfUlVOVElNRV9XUkFQUEVSUw0K
PiA+ICAgICAgICAgYm9vbA0KPiA+IA0KPiA+IC1jb25maWcgRUZJX0FSTVNUVUINCj4gPiArY29u
ZmlnIEVGSV9HRU5FUklDX0FSQ0hfU1RVQg0KPiANCj4gTGV0J3MgY2FsbCBpdCBFRklfR0VORVJJ
Q19TVFVCDQo+IA0KPiA+ICAgICAgICAgYm9vbA0KPiA+IA0KPiA+IC1jb25maWcgRUZJX0FSTVNU
VUJfRFRCX0xPQURFUg0KPiA+ICtjb25maWcgRUZJX1NUVUJfRFRCX0xPQURFUg0KPiA+ICAgICAg
ICAgYm9vbCAiRW5hYmxlIHRoZSBEVEIgbG9hZGVyIg0KPiA+IC0gICAgICAgZGVwZW5kcyBvbiBF
RklfQVJNU1RVQg0KPiA+ICsgICAgICAgZGVwZW5kcyBvbiBFRklfR0VORVJJQ19BUkNIX1NUVUIN
Cj4gDQo+IERvIHlvdSBhY3R1YWxseSBuZWVkIHRoZSBEVEIgbG9hZGVyPyBJIGZlZWwgYWRkaW5n
IHRoaXMgZm9yIEFSTSB3YXMgYQ0KPiBtaXN0YWtlLCBzbyB5b3UgbWF5IHdhbnQgdG8gbWFrZSB0
aGlzIGRlcGVuZCBvbiAhUklTQ1Ygd2hpbGUgeW91J3JlDQo+IGF0DQo+IGl0Lg0KPiANCg0KQWN0
dWFsbHkgd2UgZG9uJ3QgbmVlZCBpdCBSSVNDLVYuIEkgdGhpbmsgSSBhZGRlZCB0aGF0IHRoYXQn
cyBhIHZhbGlkDQpvcHRpb24gdG8gaGF2ZS4gQnV0IHlvdXIgcmVjZW50IGNsZWF1cCBzZWVtcyBv
dGhlcndpc2UuIEkgd2lsbCBtYWtlIGl0DQpkZXBlbmQgb24gIVJJU0NWLiBJdCBhbHNvIGRvZXNu
J3QgbWFrZSBzZW5zZSB0byByZW5hbWUgaXQgdG8NCkVGSV9TVFVCX0RUQl9MT0FERVIuIFNvIEkg
d2lsbCBqdXN0IGxlYXZlIEVGSV9BUk1TVFVCX0RUQl9MT0FERVIgYXMgaXQNCmlzLg0KDQo+ID4g
ICAgICAgICBkZWZhdWx0IHkNCj4gPiAgICAgICAgIGhlbHANCj4gPiAgICAgICAgICAgU2VsZWN0
IHRoaXMgY29uZmlnIG9wdGlvbiB0byBhZGQgc3VwcG9ydCBmb3IgdGhlIGR0Yj0NCj4gPiBjb21t
YW5kDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvTWFrZWZp
bGUNCj4gPiBiL2RyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvTWFrZWZpbGUNCj4gPiBpbmRl
eCA0ZDYyNDZjNmY2NTEuLjJjNWI3Njc4NzEyNiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2Zp
cm13YXJlL2VmaS9saWJzdHViL01ha2VmaWxlDQo+ID4gKysrIGIvZHJpdmVycy9maXJtd2FyZS9l
ZmkvbGlic3R1Yi9NYWtlZmlsZQ0KPiA+IEBAIC0yMiw3ICsyMiw3IEBAIGNmbGFncy0kKENPTkZJ
R19BUk0pICAgICAgICAgIDo9ICQoc3Vic3QNCj4gPiAkKENDX0ZMQUdTX0ZUUkFDRSksLCQoS0JV
SUxEX0NGTEFHUykpIFwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC1m
bm8tYnVpbHRpbiAtZnBpYyBcDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAkKGNhbGwgY2Mtb3B0aW9uLC1tbm8tc2luZ2xlLQ0KPiA+IHBpYy1iYXNlKQ0KPiA+IA0KPiA+
IC1jZmxhZ3MtJChDT05GSUdfRUZJX0FSTVNUVUIpICAgKz0gLUkkKHNyY3RyZWUpL3NjcmlwdHMv
ZHRjL2xpYmZkdA0KPiA+ICtjZmxhZ3MtJChDT05GSUdfRUZJX0dFTkVSSUNfQVJDSF9TVFVCKSAr
PQ0KPiA+IC1JJChzcmN0cmVlKS9zY3JpcHRzL2R0Yy9saWJmZHQNCj4gPiANCj4gPiAgS0JVSUxE
X0NGTEFHUyAgICAgICAgICAgICAgICAgIDo9ICQoY2ZsYWdzLXkpDQo+ID4gLURESVNBQkxFX0JS
QU5DSF9QUk9GSUxJTkcgXA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
LWluY2x1ZGUNCj4gPiAkKHNyY3RyZWUpL2RyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvaGlk
ZGVuLmggXA0KPiA+IEBAIC00NCwxMyArNDQsMTMgQEAgbGliLXkgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgOj0gZWZpLQ0KPiA+IHN0dWItaGVscGVyLm8gZ29wLm8gc2VjdXJlYm9vdC5v
IHRwbS5vIFwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNraXBfc3Bh
Y2VzLm8gbGliLWNtZGxpbmUubyBsaWItDQo+ID4gY3R5cGUubw0KPiA+IA0KPiA+ICAjIGluY2x1
ZGUgdGhlIHN0dWIncyBnZW5lcmljIGRlcGVuZGVuY2llcyBmcm9tIGxpYi8gd2hlbiBidWlsZGlu
Zw0KPiA+IGZvciBBUk0vYXJtNjQNCj4gPiAtYXJtLWRlcHMteSA6PSBmZHRfcncuYyBmZHRfcm8u
YyBmZHRfd2lwLmMgZmR0LmMgZmR0X2VtcHR5X3RyZWUuYw0KPiA+IGZkdF9zdy5jDQo+ID4gK2Vm
aS1kZXBzLXkgOj0gZmR0X3J3LmMgZmR0X3JvLmMgZmR0X3dpcC5jIGZkdC5jIGZkdF9lbXB0eV90
cmVlLmMNCj4gPiBmZHRfc3cuYw0KPiA+IA0KPiA+ICAkKG9iaikvbGliLSUubzogJChzcmN0cmVl
KS9saWIvJS5jIEZPUkNFDQo+ID4gICAgICAgICAkKGNhbGwgaWZfY2hhbmdlZF9ydWxlLGNjX29f
YykNCj4gPiANCj4gPiAtbGliLSQoQ09ORklHX0VGSV9BUk1TVFVCKSAgICAgICs9IGFybS1zdHVi
Lm8gZmR0Lm8gc3RyaW5nLm8gXA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgJChwYXRzdWJzdCAlLmMsbGliLSUubywkKGFybS0NCj4gPiBkZXBzLXkpKQ0KPiA+ICtsaWIt
JChDT05GSUdfRUZJX0dFTkVSSUNfQVJDSF9TVFVCKSAgICAgICAgICAgICs9IGVmaS1zdHViLm8g
ZmR0Lm8NCj4gPiBzdHJpbmcubyBcDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAkKHBhdHN1YnN0ICUuYyxsaWItJS5vLCQoZWZpLQ0KPiA+IGRlcHMteSkpDQo+ID4gDQo+
ID4gIGxpYi0kKENPTkZJR19BUk0pICAgICAgICAgICAgICArPSBhcm0zMi1zdHViLm8NCj4gPiAg
bGliLSQoQ09ORklHX0FSTTY0KSAgICAgICAgICAgICs9IGFybTY0LXN0dWIubw0KPiA+IEBAIC03
Miw4ICs3Miw4IEBAIENGTEFHU19hcm02NC1zdHViLm8gICAgICAgICAgIDo9DQo+ID4gLURURVhU
X09GRlNFVD0kKFRFWFRfT0ZGU0VUKQ0KPiA+ICAjIGEgdmVyaWZpY2F0aW9uIHBhc3MgdG8gc2Vl
IGlmIGFueSBhYnNvbHV0ZSByZWxvY2F0aW9ucyBleGlzdCBpbg0KPiA+IGFueSBvZiB0aGUNCj4g
PiAgIyBvYmplY3QgZmlsZXMuDQo+ID4gICMNCj4gPiAtZXh0cmEtJChDT05GSUdfRUZJX0FSTVNU
VUIpICAgIDo9ICQobGliLXkpDQo+ID4gLWxpYi0kKENPTkZJR19FRklfQVJNU1RVQikgICAgICA6
PSAkKHBhdHN1YnN0ICUubywlLnN0dWIubywkKGxpYi0NCj4gPiB5KSkNCj4gPiArZXh0cmEtJChD
T05GSUdfRUZJX0dFTkVSSUNfQVJDSF9TVFVCKSAgOj0gJChsaWIteSkNCj4gPiArbGliLSQoQ09O
RklHX0VGSV9HRU5FUklDX0FSQ0hfU1RVQikgICAgOj0gJChwYXRzdWJzdA0KPiA+ICUubywlLnN0
dWIubywkKGxpYi15KSkNCj4gPiANCj4gPiAgU1RVQkNPUFlfRkxBR1MtJChDT05GSUdfQVJNNjQp
ICs9IC0tcHJlZml4LWFsbG9jLXNlY3Rpb25zPS5pbml0IFwNCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC0tcHJlZml4LXN5bWJvbHM9X19lZmlzdHViXw0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2Zpcm13YXJlL2VmaS9saWJzdHViL2FybS1zdHViLmMNCj4gPiBiL2Ry
aXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvZWZpLXN0dWIuYw0KPiA+IHNpbWlsYXJpdHkgaW5k
ZXggOTglDQo+ID4gcmVuYW1lIGZyb20gZHJpdmVycy9maXJtd2FyZS9lZmkvbGlic3R1Yi9hcm0t
c3R1Yi5jDQo+ID4gcmVuYW1lIHRvIGRyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvZWZpLXN0
dWIuYw0KPiA+IGluZGV4IDEzNTU5YzdlNjY0My4uYjg3YzNmNzA0MzBjIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvYXJtLXN0dWIuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvZWZpLXN0dWIuYw0KPiA+IEBAIC0xNSw2ICsxNSw3
IEBADQo+ID4gDQo+ID4gICNpbmNsdWRlICJlZmlzdHViLmgiDQo+ID4gDQo+ID4gKyNpZiBJU19F
TkFCTEVEKENPTkZJR19BUk02NCkgfHwgSVNfRU5BQkxFRChDT05GSUdfQVJNKQ0KPiA+ICAvKg0K
PiA+ICAgKiBUaGlzIGlzIHRoZSBiYXNlIGFkZHJlc3MgYXQgd2hpY2ggdG8gc3RhcnQgYWxsb2Nh
dGluZyB2aXJ0dWFsDQo+ID4gbWVtb3J5IHJhbmdlcw0KPiA+ICAgKiBmb3IgVUVGSSBSdW50aW1l
IFNlcnZpY2VzLiBUaGlzIGlzIGluIHRoZSBsb3cgVFRCUjAgcmFuZ2Ugc28NCj4gPiB0aGF0IHdl
IGNhbiB1c2UNCj4gPiBAQCAtMjcsNiArMjgsMTAgQEANCj4gPiAgICogZW50aXJlIGZvb3Rwcmlu
dCBvZiB0aGUgVUVGSSBydW50aW1lIHNlcnZpY2VzIG1lbW9yeSByZWdpb25zKQ0KPiA+ICAgKi8N
Cj4gPiAgI2RlZmluZSBFRklfUlRfVklSVFVBTF9CQVNFICAgIFNaXzUxMk0NCj4gPiArI2Vsc2UN
Cj4gPiArI2RlZmluZSBFRklfUlRfVklSVFVBTF9CQVNFICAgIFNaXzJHDQo+ID4gKyNlbmRpZg0K
PiA+ICsNCj4gDQo+IENhbiB3ZSBkcm9wIHRoaXMgaHVuayBmb3Igbm93PyBJdCBzaG91bGQgYmUg
cGFydCBvZiB5b3VyIHJ1bnRpbWUNCj4gc2VydmljZXMgc2VyaWVzLg0KPiANCg0KU3VyZS4gV2ls
bCBkbyBpdC4NCg0KPiA+ICAjZGVmaW5lIEVGSV9SVF9WSVJUVUFMX1NJWkUgICAgU1pfNTEyTQ0K
PiA+IA0KPiA+ICAjaWZkZWYgQ09ORklHX0FSTTY0DQo+ID4gQEAgLTI0Myw3ICsyNDgsNyBAQCBl
Zmlfc3RhdHVzX3QgZWZpX2VudHJ5KGVmaV9oYW5kbGVfdCBoYW5kbGUsDQo+ID4gZWZpX3N5c3Rl
bV90YWJsZV90ICpzeXNfdGFibGVfYXJnKQ0KPiA+ICAgICAgICAgICogJ2R0Yj0nIHVubGVzcyBV
RUZJIFNlY3VyZSBCb290IGlzIGRpc2FibGVkLiAgV2UgYXNzdW1lDQo+ID4gdGhhdCBzZWN1cmUN
Cj4gPiAgICAgICAgICAqIGJvb3QgaXMgZW5hYmxlZCBpZiB3ZSBjYW4ndCBkZXRlcm1pbmUgaXRz
IHN0YXRlLg0KPiA+ICAgICAgICAgICovDQo+ID4gLSAgICAgICBpZiAoIUlTX0VOQUJMRUQoQ09O
RklHX0VGSV9BUk1TVFVCX0RUQl9MT0FERVIpIHx8DQo+ID4gKyAgICAgICBpZiAoIUlTX0VOQUJM
RUQoQ09ORklHX0VGSV9TVFVCX0RUQl9MT0FERVIpIHx8DQo+ID4gICAgICAgICAgICAgIHNlY3Vy
ZV9ib290ICE9IGVmaV9zZWN1cmVib290X21vZGVfZGlzYWJsZWQpIHsNCj4gPiAgICAgICAgICAg
ICAgICAgaWYgKHN0cnN0cihjbWRsaW5lX3B0ciwgImR0Yj0iKSkNCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICBwcl9lZmkoIklnbm9yaW5nIERUQiBmcm9tIGNvbW1hbmQNCj4gPiBsaW5lLlxu
Iik7DQo+ID4gLS0NCj4gPiAyLjI0LjANCj4gPiANCg0KLS0gDQpSZWdhcmRzLA0KQXRpc2gNCg==

