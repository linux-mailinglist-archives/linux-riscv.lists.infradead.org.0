Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C1418407B
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 06:25:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f5BBYKPCHsAeTrkIBpHOrb2mKDdb8CYViKqQtjIvCoY=; b=NOO6z2HZ8Z7m45LoSov7Jh0Dj
	R11RXqhFWZK6wfiR9r/mQxFI+/MH9V1nR2+/Hc8/EbYdLrPR2ymWDx2MyKFGvFmdv5uNC2tpsdT6V
	BZOg461JFtPC1AUwy/DfvooeTdZYUW1eFRMKaBu+8BWs0op2p2LzIHzNbyz0PAVddBBWpyw3xJ2NZ
	q6933euzDLiBbGeY3/Qu2j/4bgowfFhuPegQggnrdaRIh7wvREt40G09xb6MKp7kaF/1whZ119zHF
	pbAkOeK6SDsj8k9LihO2RzXTCauDGoKDW2TKTzpHzl8PWGG9Zwv+B9mUEbwQ2ykIG8fE9JGQlA7Ld
	dbjKBQcTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCcpJ-0002yh-ER; Fri, 13 Mar 2020 05:25:41 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCcpF-0002vj-TF
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 05:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584077138; x=1615613138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=f5BBYKPCHsAeTrkIBpHOrb2mKDdb8CYViKqQtjIvCoY=;
 b=HQ3lUhSju13yxLlplLhzEGz3WUU3mrETgcHeqLBOUxRJ+1siH/nXJptl
 FGYPB7EhJmiBF9wiHNDnEQP11wCj2nGibnsEB8SWdGL3ZTVAiK92RmJp9
 GoiEcmHM3eHnmKdOEGkk2g/orwD3PfQgWGekqCyyqkmCfkDlSYKIf/1ts
 mFNOnOkR6kdg+Hi+UFlKqXm5RKm6X8ir1eeLCheDPJtG4PHgX1onL1lEF
 bPGCci+wuEwk2nK+jT4q1LwXWs/na003drxoz3cH2f1CdgNpErhFKTepD
 lvbDwhVcbbwAcetIjHknKLYncJEb8I2vUoPS6AYJJhf9NzZa1eSVSRPds g==;
IronPort-SDR: w2ykQ0gtPBP4RtE4arU+0h2T3SOQOEw98K2r2dGSy2930LxXqfpsui9VVsB/C3M30yaR2WuVQ/
 jPk9gd0d7RB53lLTNO6kbLx05RlHxlbWnyQyVSqE9giQJbZy0LbeImk9QhzoH11D/JbNw5H9Tv
 nDXPuOvaOJv5YY6zuMfpgw+qOxyQfL3n9Ss8Qbhua5TSOyB6ZVMrI/dORKQYJbgO09o+ql/Jpu
 zu/zCaW2O1exclCqMtTU6nQ1Q42f9F7PyxDyYlRDolR6J9r3W2sbBTTa+ITQJUiRMpeHfXK/ra
 u+8=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="136726740"
Received: from mail-mw2nam10lp2103.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.103])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 13:25:37 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nR8V5toa9ZmzarnbE66ZP5XA7XMlMAbwn1VnY823+Zwoud9wThyCLTVxSbJ94YcpBANLirCNlIS8z/u5fHePytX0snxjmXDbGNN8FMqlcQUNVDlTZNgdfW2vcruoDKoXL5MmIgrQWP7suf/oCUoaKoUKpBd7eCLIoJW80oOpfBGrXMHr5jJy8HGeidJbnW0ma2VjHsrkCYExh/KcbxP24TaW7XfbraSky5iX+KvSwecNDQf4wLxKSRETmaeLOUdAq8nNBihKkVx4YQ+LPj/ksuFrp9fHasiheU2pn8onIMt4wwGNg4UFOw7Ub6Ee539nV8UFTBAwJZEBNk4DJIOAcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f5BBYKPCHsAeTrkIBpHOrb2mKDdb8CYViKqQtjIvCoY=;
 b=EP2fojPjDzPrhVa/l+0VFKjv/jvhXiSAD3CYJjN99dkmZw2tTdvhTq7h7uZ8lG4xW2+HH+ZhoG7xwl7Phy532u7pgTTvOsgbLLe8foF76jgPCVH+M5s3TIjOrLRo6+JnA6xs60I/vwLVbjTrriPyiH2IpfbEIGGyfbhQf0JKOJAi7sWbc0+NM9CIY5akpCFLUs++M22xdTkbHtQbmjpWlftlzTWFiYLKoxIspdrolXAyFsmieKgtih3sAEguTwxXCB2GOZ/YpAQ8aiz7lpJ8sUnszx4tZKIvTNIIPi3LRnqksi8BkeGFxfUK5dwF0Q5vnlQbbT8Q/5dnwYL3xxWhxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f5BBYKPCHsAeTrkIBpHOrb2mKDdb8CYViKqQtjIvCoY=;
 b=stIFr6qauTQWgo2taBShYgmHcUyNYYzag2Dt9Cc2UWCOX8Lr8zP+PwexLUBfldAeDg1qD9bm3RcK4KucUaSGQsjtanmASwnWQgeS4Yxjcyafniej4TGsmF1nGyPgm+U/9PdCCtTAAYH9hne5Z+/G2gwpy+ZdffKvwjcIcz/LKu0=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2247.namprd04.prod.outlook.com (2603:10b6:102:13::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Fri, 13 Mar
 2020 05:25:35 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2814.007; Fri, 13 Mar 2020
 05:25:35 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: "atishp@atishpatra.org" <atishp@atishpatra.org>, "seanga2@gmail.com"
 <seanga2@gmail.com>
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
Thread-Topic: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
Thread-Index: AQHV+IHUMiKRGJ1DO0qq13MZgFK4D6hFQeQAgAC8u4A=
Date: Fri, 13 Mar 2020 05:25:35 +0000
Message-ID: <05118450566d5a50c0a748cc9b42f5e411004144.camel@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
 <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
 <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
In-Reply-To: <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 3f1203c4-89de-40eb-a2c0-08d7c70ef557
x-ms-traffictypediagnostic: CO2PR04MB2247:
x-microsoft-antispam-prvs: <CO2PR04MB224751DB9CE64A2EFD2B40B9E7FA0@CO2PR04MB2247.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(376002)(366004)(39860400002)(346002)(199004)(2906002)(36756003)(26005)(5660300002)(6486002)(186003)(8676002)(81156014)(81166006)(64756008)(66476007)(76116006)(91956017)(8936002)(66446008)(66556008)(66946007)(110136005)(54906003)(316002)(71200400001)(53546011)(478600001)(4326008)(6506007)(86362001)(6512007)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR04MB2247;
 H:CO2PR04MB2343.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wtUXeoIArslZJ++3PY7+JF3hO+UYRgSwy4x3vUkk6jUpFOaDHO/U0ipYRckAgIT2VIOlDUq2zdiWdU+y0Yee5HxGiHGdMqDXKaBwegnlHXAL6HcKZudTQ1nPFCqCzsY58EKmOv5rPdtIgK2m3pZsuwFBBGDIlqmRwzprf9zYW4UQlP1jkex7EJIjMj8WHe0sZBcx/aTwu4++phkzVGXSs7F0vuHNE5MLdaaaCsbYB8sL1i6uB8AKwKtjWuTXX2KHDTkxBqqTeuAZlufM3RfSs1LdyH7aU/0mj1QmjlAmYBRThp5H46F932bIRUxh9a6ziPWSudx3AB53KzaXF3aN6CqpECf30YhhB1G3CKljQ6Ye81A/ABVfz9bXtGdc8pDDdzyY9RNwGaOUD/YbeHuh/jasfPzg0DGJFqcVJ9/70yAL9aAtcga/kBE7dMY0kZwM
x-ms-exchange-antispam-messagedata: zxtq4GIZ9HH0WPkmWNFTM0GK2n2p7CP/wLhKLx/bmEZ/Z0dwvWAwuBUaS5XAzKkPx8EjFB92AZJMySTWdeoeRTfYAPkMP1RK9z52FgjIvLKlCTSaJXfZeptVr1132UIQwYSJDRH8KorZodLkQqHKWg==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <989F314B758D4649AD546FA113B22CD9@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f1203c4-89de-40eb-a2c0-08d7c70ef557
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 05:25:35.2756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JEdmhpfipiL37ioa6TM4K8n6/AU4UzU8Que1qf0sptgGLcUly3RSTgi0UjtZUQFgP5T6/qt8T8+wV1xPwpgJ/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2247
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_222537_960238_544777FC 
X-CRM114-Status: GOOD (  20.93  )
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDIwLTAzLTEyIGF0IDExOjEwIC0wNzAwLCBBdGlzaCBQYXRyYSB3cm90ZToNCj4g
T24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgODoyMCBBTSBTZWFuIEFuZGVyc29uIDxzZWFuZ2EyQGdt
YWlsLmNvbT4gd3JvdGU6DQo+ID4gT24gMy8xMi8yMCAxOjExIEFNLCBEYW1pZW4gTGUgTW9hbCB3
cm90ZToNCj4gPiA+IENvbW1pdCBjNjhhOTAzMjI5OWUgKCJyaXNjdjogc2V0IHBtcCBjb25maWd1
cmF0aW9uIGlmIGtlcm5lbCBpcyBydW5uaW5nDQo+ID4gPiBpbiBNLW1vZGUiKSBhZGRlZCBQTVAg
aW5pdGlhbGl6YXRpb24gdG8gTS1Nb2RlLiBXaGlsZSB0aGlzIHBhdGNoIGlzDQo+ID4gPiB2YWxp
ZCBmb3IgYW55IFNvQyBmb2xsb3dpbmcgdGhlIHJhdGlmaWVkIHJpc2N2IHNwZWNpZmljYXRpb25z
LCB0aGUNCj4gPiA+IEtlbmRyeXRlIEsyMTAgU29DIGlzIGJhc2VkIG9uIGVhcmxpZXIgdW5zdGFi
bGUgc3BlY2lmaWNhdGlvbnMgYW5kIGRvZXMNCj4gPiA+IG5vdCBzZWVtIHRvIHN1cHBvcnQgUE1Q
IGluaXRpYWxpemF0aW9uICh0aGUgU29DIGNyYXNoZXMgaWYgQ1NSX1BNUEFERFIwDQo+ID4gPiBv
ciBDU1JfUE1QQ0ZHMCBhcmUgYWNjZXNzZWQpLg0KPiA+IA0KPiA+IFRoZSBQTVAgYml0IGhhcyBp
dHMgcG9sYXJpdHkgaW52ZXJ0ZWQgaW4gdGhlIHYxLjkgc3BlY2lmaWNhdGlvbiwgYW5kIGlzDQo+
ID4gY2FsbGVkIHRoZSBTVU0gb3IgU3VwZXJ2aXNvciBVc2VyIE1lbW9yeSBBY2Nlc3MgYml0Lg0K
PiA+IA0KPiA+IC0tU2Vhbg0KPiA+IA0KPiBJIGRvbid0IHRoaW5rIHN1cHBvcnRpbmcgb2xkIHNw
ZWNzIGluIExpbnV4IGlzIGEgZ29vZCBpZGVhLiBBcyBwZXIgdGhlDQo+IHBhdGNoIGd1aWRlbGlu
ZQ0KPiBmb3IgUklTQy1WIExpbnV4LCBwYXRjaGVzIGZvciBvbmx5ICJmcm96ZW4iIG9yICJyYXRp
ZmllZCINCj4gc3BlY2lmaWNhdGlvbnMgYXJlIGFsbG93ZWQuDQoNClllcywgSSBhZ3JlZSBvbiB0
aGlzIHBvaW50LiBIb3dldmVyLCB0aGlzIHNob3VsZCBiZSB0YWtlbiBhIGxpdHRsZSBtb3JlDQps
aWdodGx5IGluIG15IG9waW5pb24uIEFzIGxvbmcgYXMgd2UgZG8gbm90IHRyeSB0byBydW4gdGhl
IEsyMTAgd2l0aA0KTU1VIHR1cm5lZCBvbiwgdGhpcyBpcyB0aGUgb25seSBrbm93biB0aW55IGRl
dmlhdGlvbiBmcm9tIHRoZSBjdXJyZW50DQpyYXRpZmllZCBwcml2aWxlZ2VkIHNwZWNzIHYxLjEx
LiBTaW5jZSB0aGlzIGlzIHJlYWxseSBhIHNtYWxsIG9uZSwgSSBhbQ0KaW5jbGluZWQgdG8gY29u
c2lkZXIgdGhpcyBpbiB0aGUgc2FtZSB3YXkgYXMgYSBoYXJkd2FyZSBidWcsIGZvciB3aGljaA0K
c29mdHdhcmUgZXhjZXB0aW9ucyBhcmUgcGVyZmVjdGx5IGFjY2VwdGFibGUgaW4gdGhlIGtlcm5l
bC4gVGhlcmUgYXJlDQp0b25zIG9mICJxdWlyayIgYml0cyBkZWZpbmVkIGZvciByYXRpZmllZCBz
cGVjaWZpY2F0aW9ucyBzdWNoIGFzIE5WTWUNCm9yIEFIQ0kgZm9yIGV4YW1wbGUsIGR1ZSB0byBo
YXJkd2FyZSBidWdzLiBFdmVuIHRob3VnaCB0aGUgaGFyZHdhcmUNCmludGVuZCB0byBmb2xsb3cg
dGhlIHNwZWNpZmljYXRpb25zLCBxdWlya3MgYXJlIHNvbWV0aW1lcyBuZWNlc3NhcnkgYXMNCndv
cmstYXJvdW5kIGZvciBoYXJkd2FyZSBpbXBsZW1lbnRhdGlvbiBidWdzIHdoaWNoIGFyZSBmYXIg
bW9yZQ0KZGlmZmljdWx0IHRvIGZpeCB0aGFuIHNvZnR3YXJlLg0KDQpPZiBjb3Vyc2UgdGhlcmUg
YXJlIGxpbWl0cyB0byB0aGlzIGFuZCBzb21ldGltZXMsIHRoZSBkZWNpc2lvbiBoYXMgdG8NCmJl
ICJnbyBmaXggeW91ciBoYXJkd2FyZSIuIEluIHRoaXMgY2FzZSwgSSBkbyBub3QgdGhpbmsgd2Ug
YXJlIGF0IHRoYXQNCmxldmVsIG9mIHNlcmlvdXNuZXNzLCBhZ2FpbiBhc3N1bWluZyB3ZSBuZXZl
ciBydW4gd2l0aCBNTVUgb24gKGJlY2F1c2UNCnRoZW4gd2Ugd291bGQgbmVlZCB0byBpbXBsZW1l
bnQgc3VwcG9ydCBmb3IgdGhlIDEuOSBzcGVjcywgYW5kIHRoYXQNCndvdWxkIHNlcmlvdXNseSBt
ZXNzIHRoaW5ncyB1cCkuDQoNCldpdGhvdXQgdGhpcyBmaXgsIHRoZSBLMjEwIGNhbm5vdCBib290
LCBhdCBhbGwuIFNvIGlmIHRoaXMgc21hbGwgY2hhbmdlDQppcyByZWZ1c2VkLCB3ZSBtYXkgYXMg
d2VsbCBqdXN0IGdpdmUgdXAgb24gdGhlIGVudGlyZSBlZmZvcnQuIFRoYXQNCndvdWxkIHJlYWxs
eSBiZSB0b28gYmFkIHNpbmNlIHRoZSBLMjEwIGJvYXJkcyBhcmUgcmVhbGx5IGNoZWFwIGFuZA0K
d291bGQgZW5hYmxlIGEgbG90IG9mIGhvYmJ5aXN0IGFuZCBzdHVkZW50cyB0byBzdGFydCBwbGF5
aW5nIHdpdGggTGludXgNCm9uIFJJU0MtVi4uLg0KDQpJbiB0aGUgZW5kLCBJIHRoaW5rIHRoaXMg
aXMgUGFsbWVyJ3MgZGVjaXNpb24uIEkgZ2F2ZSBteSAyIGNlbnRzIGFib3ZlLg0KSWYgdGhlcmUg
aXMgdG9vIG11Y2ggcHVzaC1iYWNrIG9uIHRoaXMsIEkgd2lsbCBzdG9wIHRoZSBlZmZvcnQgYmVj
YXVzZQ0KSSBkbyBub3Qgc2VlIGhvdyB0byB3b3JrIGFyb3VuZCB0aGlzIG9uZSB3aXRoaW4gMS4x
MSBzcGVjcy4NCg0KQ2hlZXJzLg0KDQotLSANCkRhbWllbiBMZSBNb2FsDQpXZXN0ZXJuIERpZ2l0
YWwgUmVzZWFyY2gNCg==

