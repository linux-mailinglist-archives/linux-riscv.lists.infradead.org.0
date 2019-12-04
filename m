Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D711121FC
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 05:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pxFDjr/LhCgR30QPxGxkwTDY40Z5yHnH3HO+XmwxSS8=; b=t5R/f1Slqofm7Lf3Z4njFMAd+
	Aii2QiF+fCou+Cskc4nQhWfyhZKNj1eUDh9XCZUzShsMm2YQ/T6fhGPvwEJX8o4i674U11Sq/vw2k
	E3NZFXbzqMc0XDfern/TKPBTgAj4wWyWR0yWyWnnECfOeBbjtOQDvyydyoPnR7DJDwc6NCgQTop6M
	PJRfq5TM7yoo8x7WCVg97Fje39lqhSRxXApFHpWYZ+YQ4+SBuQVGv8CoMI2otFB94BwMstKr+vQh/
	Na1watAfsXwoMFG1iyW+RI6JI2r/Fr+FkQVTwJJ+jyL5vp3YDCgMFu3lDI0dkmyvcHlAUOXfU6KI1
	kGMvjxsUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icM1G-00018N-C9; Wed, 04 Dec 2019 04:12:06 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1icM12-0000yl-L5; Wed, 04 Dec 2019 04:11:54 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB44BW9G012223,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB44BW9G012223
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 4 Dec 2019 12:11:32 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Wed, 4 Dec 2019 12:11:32 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 4 Dec 2019 12:11:32 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::35ac:d9d0:1393:a902]) by
 RTEXMB03.realtek.com.tw ([fe80::35ac:d9d0:1393:a902%8]) with mapi id
 15.01.1779.005; Wed, 4 Dec 2019 12:11:32 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH 1/6] dt-bindings: clock: add bindings for RTD1619 clocks
Thread-Topic: [PATCH 1/6] dt-bindings: clock: add bindings for RTD1619 clocks
Thread-Index: AQHVqbBpUIXp8SpLNkeT1cD+cHVMu6enn5cAgACGSxA=
Date: Wed, 4 Dec 2019 04:11:31 +0000
Message-ID: <1130d9316ffb49c8a99b9b2c2d8fa90f@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
 <20191203074513.9416-2-james.tai@realtek.com>
 <f069747b-7f10-f47c-684d-11138b8fd129@suse.de>
In-Reply-To: <f069747b-7f10-f47c-684d-11138b8fd129@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_201152_820219_A767EFE5 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 =?utf-8?B?RWRnYXIgTGVlIFvmnY7mib/oq61d?= <cylee12@realtek.com>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywNCg0KPiBIaSBKYW1lcyBhbmQgQ2hlbmctWXUsDQo+IA0KPiBBbSAwMy4xMi4x
OSB1bSAwODo0NSBzY2hyaWViIEphbWVzIFRhaToNCj4gPiBGcm9tOiBjeWxlZTEyIDxjeWxlZTEy
QHJlYWx0ZWsuY29tPg0KPiANCj4gUGxlYXNlIGZpeCB0aGUgYXV0aG9yIChnaXQgY29tbWl0IC0t
YW1lbmQgLS1hdXRob3I9Ii4uLiIpIGFuZCB1c2UgYW4NCj4gYXBwcm9wcmlhdGUgZ2l0IGNvbmZp
ZyBzZXR0aW5nIChhbmQgY29tbXVuaWNhdGlvbiB0byB5b3VyIHRlYW0pIHRvIGF2b2lkIHRoaXMN
Cj4gcmVvY2N1cnJpbmcgZm9yIG5ldyBjb21taXRzIC0gYWxyZWFkeSBwb2ludGVkIG91dCB0byBK
YW1lcy4NCj4gDQo+IEJUVyBJIHdvbmRlciB3aHkgd2UgaGF2ZSBzbyBtYW55IHNlZW1pbmdseSB1
bnJlbGF0ZWQgcGVvcGxlIGluIENDDQo+IChNZWRpYXRlaywgUklTQy1WKSB0aGF0IHRoZSBwYXRj
aGVzIGFuZCByZXNwb25zZXMga2VlcCBoYW5naW5nIGluIG1haWxpbmcgbGlzdA0KPiBtb2RlcmF0
aW9uPw0KDQpJIHVzZWQgdGhlICJnZXRfbWFpbnRhaW5lci5wbCIgdG8gZmluZCB0aGUgZW1haWwg
YWRkcmVzcyBvZiBtYWludGFpbmVycy4gSG93ZXZlciwgDQpJJ20gc28gc29ycnkgZm9yIG1pc3Rh
a2VubHkgYWRkaW5nIHNvbWUgdW5yZWxhdGVkIHBlb3BsZSB0byB0aGlzIG1haWwuDQoNClJlZ2Fy
ZHMsDQpKYW1lcw0KDQoNCg==

