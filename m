Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6F417CA91
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Mar 2020 02:51:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=opPKXQCNEeLMvKI3ggmGdaswfHLH4Ko52sLi3XIZHNs=; b=VRtu4O0YMPhzrDUX0Rx6jsmB1
	RcKmNiu2olclzEw0zzHJSbS3+9Fc1KSMeSJ1S6MHemA0Na1z/d+D/oG7bYaEcGp3QYW+/QSKiDOkz
	Eu+4Zn/Ar7GQSeHqXsZ3VTTJTiDrE27fDgywVxx39vcAEGT5EvaIdG895zhfiveDYPCeojiFyUxaI
	ONBDshkEoDh5UcuY+SYf70LiqkBv0Kwg1Bn3qMofq09YcaEvOiRpnz2Qbs0zuqJuBwZMWSqzkj+Wa
	0pwOBKzWP4iemlJQR5Xivcf68GfZ9/Iccc5Cb2O7g2Lk/0qqZWKajtiZpSxBIPzDf3wk4576gS9/+
	XRXKhtSXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAOco-00017d-TJ; Sat, 07 Mar 2020 01:51:34 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAOck-000179-PN
 for linux-riscv@lists.infradead.org; Sat, 07 Mar 2020 01:51:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583545890; x=1615081890;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=opPKXQCNEeLMvKI3ggmGdaswfHLH4Ko52sLi3XIZHNs=;
 b=T5zK2uV59TG/zaNLUm6zdBwUuJMEXWEUukOjk8cT8wD8V9sEvHjB4uEr
 JCciHUbhSVdD/yPPXN1jc1uOWYHhLzWTXk5GeODgayCF5olnYOsncTFEV
 Amwj3opQ+r1Vru5TDgEHOf8Y38xLEse/DvjLps9fVMELr1Xtox95XU3dS
 1cf86yBpSozVFpBG9wElzRTWN8YXjHJY23lmoHgGqDGZuGYl1Fz8yXUfv
 Xe8v7hMCoVDGwp8fLIFJ6JsVAzcYm8Zk8yEhUsCYPKGQN4AErsyRHOkCE
 0Kzkj3WFI9AbObmz16UMlB8vvx3OOaXqYNbcDxecMnS4sx7VTcCGPiq3C g==;
IronPort-SDR: pzj/453pR6gBmMqZ0vL1XfSQ1IJrUiJfTp5HnTtVk6UTnYZQ9vXVj6GMswiAkK6IXOncwHDxUy
 kyNKjXtMOQ8MPDHTahw92YQINpFG1//swvmYceLt9LNrxOYbK7ce9LhtfbJU/5ywwuiX3p9a/K
 GhlaLiE77bqUQ8qw0QfYjSK+E941IuaM6d2qDCi8baOWZAnIowQQyxFqjQqyVjVgSkQBS1k71T
 EIZGuXdQ15cxCu0T+SYEa8zlXIXEjfi6bIQmfm8ETUGb/pKeTJ0pA0HdlyYnxfaK4MS8nBX4AJ
 H2Q=
X-IronPort-AV: E=Sophos;i="5.70,524,1574092800"; d="scan'208";a="131826267"
Received: from mail-mw2nam10lp2100.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.100])
 by ob1.hgst.iphmx.com with ESMTP; 07 Mar 2020 09:51:28 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aH0T/LUXwww3mjv5SwQmhwa++Es8uc7HU0AK3RoNfN2IWjfu6vmimOXkoxOOQ/hR8GnINTc4PcR3fLAJSsX1IDEquTOKxZsXK1THyrggAlI88IblGqMXoYaECjWiB1doIp6jawy18hIoenceQsl0mf1EmtqQcRdRlx55dnsJZHilksRQKEUhfnu/Ke9NSU3Yr/UYOB1rmPj7CkZJRIEdjnZLDmzP0sMloLtuEpnfgR/bfFQ0KYiGbTjD0iZRPjkfrkdh72U2BGdu9jgyS8/B+L8nGqU/m5vh6VqsnPQsMAoic8XrUkJ4cTzQF5qpmta7bExq96XKdSi0VTy+30o4jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=opPKXQCNEeLMvKI3ggmGdaswfHLH4Ko52sLi3XIZHNs=;
 b=eEGjAywGoA2ts7Hj4F+ONA23SK+RDZbj3DSTbpDihRA65UuDKJnJjV6wfYch6QmbT22zU7DyeLuIbRnjHlSjtVg+35YKdO/T1R8KBhh7KYQ2E1eXugnz51d7wHrX2kV9HjbK1QQWRB+AR/FKtUT84e4tlZjJuu6pJKrVFhsvN12Lzq6GBX0302nfWrbN2JNmjVxcL2Zk//JgrCneOTYkcCZPalV5rzBMhoESRyxNCZKJWlw8qSGd76JRsx9Sp0hcgRpOTyPFwTxyxMt0AbZyIl3lT+AWtJhu6nFqcRyTPbCr3zhQ4LXT6b+SmDomAysT6FF7ZF7gQHVIK2kUMvMsVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=opPKXQCNEeLMvKI3ggmGdaswfHLH4Ko52sLi3XIZHNs=;
 b=c3JcvJ/jALnqIk0f1999XDlobMTpWrXkBsOKIX15cK2u7u/9w7s9yfQDlx0crRkZtkboj+zyNmDXCOvZPaHBaCHjawzJbnHy7aK3NWfXlO7fQepEpJM1cq+qHeuRuONK+MQ8ez8ZdGK+WFrQ1xQNusoX5qgh/8DbLTq+hHQ55zE=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (2603:10b6:a02:ae::29)
 by BYAPR04MB3959.namprd04.prod.outlook.com (2603:10b6:a02:b2::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Sat, 7 Mar
 2020 01:51:27 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e%6]) with mapi id 15.20.2772.019; Sat, 7 Mar 2020
 01:51:27 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "atishp@atishpatra.org" <atishp@atishpatra.org>, Damien Le Moal
 <Damien.LeMoal@wdc.com>, "seanga2@gmail.com" <seanga2@gmail.com>
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Topic: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Index: AQHV8lslio+obJp8U0GfCDtAxB9H4qg5qKJfgAKaFACAAB5lgA==
Date: Sat, 7 Mar 2020 01:51:27 +0000
Message-ID: <38c188169a59df88bafc2ade4eb4f642dbe07582.camel@wdc.com>
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
 <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
 <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CAOnJCUJYcuvyHywV0vEzMcgUJaoUHfuLbWjp1bxDw2t-OJXOQw@mail.gmail.com>
 <c84b632a-9372-fcbf-de3d-be016d36a970@gmail.com>
In-Reply-To: <c84b632a-9372-fcbf-de3d-be016d36a970@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [98.248.240.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a1bb0a4a-21ca-4896-684d-08d7c23a0cfb
x-ms-traffictypediagnostic: BYAPR04MB3959:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB3959EA5DA729FE09DF1B1F9EFAE00@BYAPR04MB3959.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03355EE97E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(39860400002)(346002)(199004)(189003)(66556008)(36756003)(66946007)(76116006)(66476007)(66446008)(64756008)(71200400001)(86362001)(186003)(2616005)(26005)(2906002)(81166006)(110136005)(54906003)(316002)(6486002)(81156014)(8676002)(8936002)(53546011)(5660300002)(478600001)(4326008)(6506007)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3959;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pk3ylE8C4HhYCV37nomAvm9kZMZsFlxnn154s60q4FYyb/Wkq0PNt/lPqn5dXffL5fR/CRUlWJY3ure3/UmYjV27jguRJ0VNa0yn6UUT/PlcKGeFVJExfO5IMUWMSVUIF3ZJ7szXm/82M0SqLfjWxglFvDFBivxGeU71OhChB6mpF9EUofzlM0+T+HBgGQO6WDMA5gzM4alBRlBOsjPBTnEZyFSvME7+zeXt7kmJooIGsX/3UlacZz8B961i6MD53tdLYNypDjlIgdr5LFBr24ImeGz+YgxZYGuOVNk3+JupS62dhlhrg8MRO1DmMmTowuZWSXqayZFZkcBi2dygxX2VzaZktQYyawqGIliVoPhQ5wo7euvtcU+CQcoTiEyBo1c1U01X3uB2RfyhtEsSsl8BpBQwHlhcRk9la/BEWTok/NcUQdtNSNFgQP5R3nXF
x-ms-exchange-antispam-messagedata: gL4NeiVNQ3WSiG/81hNCLg9NaH17AOlfI0a0esROBgs/6qChz3c+sqoO8WWlVk1p1Qeg9jZIClXSWwZQ35V2GAXxfKH70SHIyNkrN1POtx5XnK/7CdQ0aank6vx026Hv2viU+64Q1IIeAz0lqbrf4w==
Content-Type: text/plain; charset="utf-8"
Content-ID: <989E64433424B14985F88C6B2B325FA2@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1bb0a4a-21ca-4896-684d-08d7c23a0cfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2020 01:51:27.4590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fn6PUxhzqIntGJOwnrFx36gBBpDUy6Ps+rxqG2HZDD4eqX5edmAfpWSYe8Dar2XKkCrDU2QU5AoojvQVXoSt/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3959
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_175130_905238_5BFD78EB 
X-CRM114-Status: GOOD (  44.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTAzLTA2IGF0IDE5OjAyIC0wNTAwLCBTZWFuIEFuZGVyc29uIHdyb3RlOg0K
PiBPbiAzLzUvMjAgMzoxOCBBTSwgQXRpc2ggUGF0cmEgd3JvdGU6DQo+ID4gT24gV2VkLCBNYXIg
NCwgMjAyMCBhdCA5OjE0IFBNIERhbWllbiBMZSBNb2FsIDwNCj4gPiBEYW1pZW4uTGVNb2FsQHdk
Yy5jb20+IHdyb3RlOg0KPiA+ID4gT24gMjAyMC8wMy8wNSAxMzo1OCwgQW51cCBQYXRlbCB3cm90
ZToNCj4gPiA+ID4gDQo+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+
ID4gPiBGcm9tOiBQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQGRhYmJlbHQuY29tPg0KPiA+ID4gPiA+
IFNlbnQ6IDA1IE1hcmNoIDIwMjAgMDA6NTkNCj4gPiA+ID4gPiBUbzogRGFtaWVuIExlIE1vYWwg
PERhbWllbi5MZU1vYWxAd2RjLmNvbT4NCj4gPiA+ID4gPiBDYzogbGludXgtcmlzY3ZAbGlzdHMu
aW5mcmFkZWFkLm9yZzsgUGF1bCBXYWxtc2xleQ0KPiA+ID4gPiA+IDxwYXVsLndhbG1zbGV5QHNp
Zml2ZS5jb20+OyBBbnVwIFBhdGVsIDxBbnVwLlBhdGVsQHdkYy5jb20+DQo+ID4gPiA+ID4gU3Vi
amVjdDogUmU6IFtQQVRDSCAwNC8xMF0gcmlzY3Y6IEFkZCBCVUlMVElOX0RUQiBzdXBwb3J0DQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gT24gV2VkLCAxMiBGZWIgMjAyMCAwMjozNDoyNiBQU1QgKC0w
ODAwKSwgRGFtaWVuIExlIE1vYWwNCj4gPiA+ID4gPiB3cm90ZToNCj4gPiA+ID4gPiA+IEVuYWJs
ZSBhIGtlcm5lbCBidWlsdGluIGR0YiBmb3IgYm9hcmRzIG5vdCBjYXBhYmxlIG9mDQo+ID4gPiA+
ID4gPiBwcm92aWRpbmcgYQ0KPiA+ID4gPiA+ID4gZGV2aWNlIHRyZWUgdG8gdGhlIGtlcm5lbC4N
Cj4gPiA+ID4gPiANCj4gPiA+ID4gPiBJJ2QgcHJlZmVyIGlmIHdlIHBpY2tlZCBhIG1lY2hhbmlz
bSB0aGF0IGFsbG93cyBhIHNpbmdsZQ0KPiA+ID4gPiA+IGtlcm5lbCBiaW5hcnkgdG8gYmUNCj4g
PiA+ID4gPiBydW4gb24gbXVsdGlwbGUgc3lzdGVtcy4gIEkgdGhpbmsgdGhlcmUncyB0d28gdXNl
IGNhc2VzIGhlcmU6DQo+ID4gPiA+IA0KPiA+ID4gPiBJIHN0cm9uZ2x5IHN1cHBvcnQgInNpbmds
ZSBrZXJuZWwgYmluYXJ5IGZvciBtdWx0aXBsZSBzeXN0ZW1zIg0KPiA+ID4gPiBidXQgaXQncyBm
b3INCj4gPiA+ID4gZGlmZmVyZW50IHB1cnBvc2UgaGVyZS4NCj4gPiA+ID4gDQo+ID4gPiA+ID4g
KiBCb290bG9hZGVycyB0aGF0IHByb3ZpZGUgbm8gRFRCIGF0IGFsbC4NCj4gPiA+ID4gPiAqIEJv
b3Rsb2FkZXJzIHRoYXQgcHJvdmllZCBhIERUQiB0aGF0LCBmb3Igc29tZSByZWFzb24sIGlzbid0
DQo+ID4gPiA+ID4gdXNhYmxlLg0KPiA+ID4gDQo+ID4gPiBTdXJlLCBidXQgYXMgQW51cCBtZW50
aW9ucyBiZWxvdywgdGhlIGN1cnJlbnQgdXNlIGNhc2UgaXQgdG8gbm90DQo+ID4gPiBldmVuIHVz
ZSBhbnkNCj4gPiA+IGJvb3Rsb2FkZXIgYXQgYWxsIGZvciB0aGUgSzIxMCBzaW5jZSB0aGF0IGJy
aW5ncyBubyB2YWx1ZSBhdCBhbGwNCj4gPiA+IChpbiBteQ0KPiA+ID4gb3BpbmlvbikuIE1vcmUg
b24gdGhpcyBiZWxvdy4NCj4gPiA+IA0KPiA+ID4gPiA+IEdpdmVuIHRob3NlIGNvbnN0cmFpbnRz
LCBjb3VsZCB3ZSBkbyBzb21ldGhpbmcgc2ltaWxhciB0byB0aGUNCj4gPiA+ID4gPiBlYXJseSBm
aXh1cHM/DQo+ID4gPiA+ID4gSSdtIHRoaW5raW5nIHdlIGNvdWxkIGJ1aWxkIGEgbWFwcGluZyBi
ZXR3ZWVuIGEgaGFyZHdhcmUNCj4gPiA+ID4gPiBpZGVudGlmaWVyIGFuZCBhDQo+ID4gPiA+ID4g
RFRCLCB0aGVuIGxvb2sgdXAgdGhlIERUQiB3ZSB3YW50IHRvIHVzZS4gIFVzZXJzIHRoYXQgd2Fu
dCBhDQo+ID4gPiA+ID4ga2VybmVsIHRoYXQNCj4gPiA+ID4gPiBvbmx5IHJ1bnMgb24gYSBzaW5n
bGUgZGV2aWNlIGNhbiBkbyBzbyBieSBjb25maWd1cmluZyBvbmx5IGENCj4gPiA+ID4gPiBzaW5n
bGUgRFRCLCB1c2Vycw0KPiA+ID4gPiA+IHRoYXQgd2FudCBhIG1vcmUgcG9ydGFibGUga2VybmVs
IGNhbiBzZWxlY3QgYSBidW5jaCAtLSB0aGF0J3MNCj4gPiA+ID4gPiBlc3NlbnRpYWxseSB0aGUN
Cj4gPiA+ID4gPiBzYW1lIGFzIGhvdyB3ZSdyZSB0cmVhdGluZyBldmVyeXRoaW5nIGVsc2UgKGZv
ciBleGFtcGxlLCB0aGUNCj4gPiA+ID4gPiBDT05GSUdfU09DXyogc3R1ZmYpLg0KPiA+ID4gPiAN
Cj4gPiA+ID4gVGhlcmUgaXMgbm8gYm9vdGxvYWRlciBvbiBLZW5kcnl0ZSBLMjEwLiBUaGUgTGlu
dXggUklTQy1WIE5PTU1VDQo+ID4gPiA+IGtlcm5lbA0KPiA+ID4gPiBib290cyBkaXJlY3RseS4g
VGhlIEJVSUxUSU5fRFRCIGlzIG9ubHkgYXBwbGljYWJsZSB0byBjYXNlcw0KPiA+ID4gPiB3aGVy
ZSB0aGVyZSBpcw0KPiA+ID4gPiBubyBib290bG9hZGVyIGJlZm9yZSBrZXJuZWwuDQo+ID4gPiA+
IA0KPiA+ID4gPiBUaGUgTGludXggUklTQy1WIE5PTU1VIHdpbGwgdGVuZCBiZSB1c2VkIGluIGNh
c2VzIHdoZXJlOg0KPiA+ID4gPiAxLiBUaGVyZSBpcyBubyBib290bG9hZGVyIGFuZCBrZXJuZWwg
Ym9vdHMgZGlyZWN0bHkgaGVuY2Ugd2UNCj4gPiA+ID4gbmVlZA0KPiA+ID4gPiBidWlsdGluIERU
QiBmZWF0dXJlLg0KPiA+ID4gPiAyLiBUaGVyZSBpcyB2ZXJ5IGxlc3MgUkFNIHNvIHdlIHdpbGwg
aGF2ZSB0byBidWlsZCBrZXJuZWwNCj4gPiA+ID4gc3BlY2lmaWMgdG8NCj4gPiA+ID4gYSBwYXJ0
aWN1bGFyIHBsYXRmb3JtIHdpdGggYmFyZSBtaW5pbXVtIGRyaXZlcnMuIER1ZSB0byB0aGlzLA0K
PiA+ID4gPiB3ZSB3aWxsDQo+ID4gPiA+IGhhdmUgc2VwYXJhdGUgZGVmY29uZmlnIGZvciBOT01N
VSBwbGF0Zm9ybXMuDQo+ID4gPiA+IA0KPiA+ID4gPiBJIHRoaW5rIHBvaW50MSBjYW4gYmUgdGFj
a2xlZCBpZiB3ZSBlbmZvcmNlIGhhdmluZyBib290bG9hZGVyDQo+ID4gPiA+IChzdWNoIGFzIFUt
Qm9vdCkNCj4gPiA+ID4gZm9yIE5PTU1VIHN5c3RlbXMgYW5kIGRyb3AgdGhpcyBwYXRjaC4NCj4g
PiA+IA0KPiA+ID4gQnV0IHRoYXQgd291bGQgZ28gYWdhaW5zdCBwb2ludCAyIGFzIHRoYXQgd2ls
bCB1c2UgbW9yZSBtZW1vcnkuLi4NCj4gPiA+IEJ5ICJkcm9wIHRoaXMNCj4gPiA+IHBhdGNoIiwg
bWF5IGJlIHlvdSBtZWFudCB0byBzYXkgIm5vdCB1c2UgdGhpcyBjb25maWcgb3B0aW9uIiA/DQo+
ID4gPiANCj4gPiA+ID4gRm9yIHBvaW50MiBhYm92ZSwgd2UgZG9uJ3QgaGF2ZSBtdWNoIGFsdGVy
bmF0aXZlcyBvdGhlciB0aGFuDQo+ID4gPiA+IHJlZHVjaW5nDQo+ID4gPiA+IGtlcm5lbCBiaW5h
cnkgc2l6ZSBieSBkaXNhYmxpbmcgdW53YW50ZWQgZHJpdmVycy4NCj4gPiA+IA0KPiA+ID4gQW5k
IG5vdCB1c2luZyBhIGJvb3QgbG9hZGVyLiBTZWFuIGdvdCBVLWJvb3Qgd29ya2luZyB3aXRoDQo+
ID4gPiBLZW5kcnl0ZSwgc28gaXQgaXMgbm90DQo+ID4gPiB0aGF0IHdlIGNhbm5vdCBtYWtlIGl0
IHdvcmsuIEl0IGlzIG9ubHkgdGhhdCBpdCBtYXkgYmUgbGVzcw0KPiA+ID4gb3B0aW1hbCBkdWUg
dG8gdGhlDQo+ID4gPiBtZW1vcnkgdXNlZCBieSB0aGUgYm9vdCBsb2FkZXIgaXRzZWxmLiBVbmxl
c3Mgd2UgY2FuIHJlY292ZXIgaXQNCj4gPiA+IGlmIHRoZSBrZXJuZWwNCj4gPiA+IHJlbG9jYXRl
IGl0c2VsZiBvdmVyIGl0ID8gU3VyZWx5IGRvYWJsZSwgYnV0IGl0IGRvZXMgc291bmQgdG8gbWUN
Cj4gPiA+IGxpa2UgYW4NCj4gPiA+IG92ZXJraWxsIGZvciB0aGlzIHBhcnRpY3VsYXIgdXNlIGNh
c2UsIGkuZS4gYSB0aW55LCBoeXBlci0NCj4gPiA+IGVtYmVkZGVkIGJvYXJkIHdoZXJlDQo+ID4g
PiBydW5uaW5nIExpbnV4IGlzIHByb2JhYmx5IG5vdCB0aGUgYmVzdCBjaG9pY2UgaW4gdGhlIGZp
cnN0IHBsYWNlLA0KPiA+ID4gYXQgbGVhc3Qgd2hlbg0KPiA+ID4gbG9va2luZyBhdCByZWFsIGFw
cGxpY2F0aW9ucy4gVGhlIHN0b3J5IGlzIGRpZmZlcmVudCBmb3INCj4gPiA+ICJob2JieWlzdCIg
bGV2ZWwuIE15DQo+ID4gPiBvbi1nb2luZyA2IERvRiByb2JvdGljIGFybSBwcm9qZWN0IGNvbnRy
b2xsZWQgd2l0aCBMaW51eCBvbiBLMjEwDQo+ID4gPiBpcyBhIHZhbGlkIHVzZQ0KPiA+ID4gY2Fz
ZSBhZnRlciBhbGwgOikNCj4gPiA+IA0KPiA+IA0KPiA+IEp1c3QgYSB0aG91Z2h0OiBIb3cgYWJv
dXQga2VlcGluZyB0aGUgbG9hZGVyIG91dCBvZiBrZXJuZWwgYXMgYQ0KPiA+IHNlcGFyYXRlIHBy
b2plY3QgYXMgYSB0aW55bG9hZGVyID8NCj4gPiBUaGF0IHRpbnlsb2FkZXIgcHJvamVjdCBjYW4g
aG9zdCB0aGUgRFRCIGFuZCBwYXNzIGl0IHRvIGtlcm5lbCBpbg0KPiA+IGExDQo+ID4gcmVnaXN0
ZXIuIFRoaXMgdGlueWxvYWRlciBjYW4gYmUgdXNlZCBmb3INCj4gPiBhbnkgTS1tb2RlIG9ubHkg
cGxhdGZvcm1zIHdpdGggbWVtb3J5IGNvbnN0cmFpbnRzLiAgSWYgcGxhdGZvcm0gaGFzDQo+ID4g
c3VmZmljaWVudCBtZW1vcnkgYW5kIHN1cHBvcnRzIFUtYm9vdCwgdXNlcnMgY2FuIHVzZSB0aGF0
IGFzIHdlbGwuDQo+ID4gVGhhdCB3aWxsIGFsbG93IHNpbmdsZSBrZXJuZWwgaW1hZ2UgdG8gYm9v
dCBhbGwgdGhlIHBsYXRmb3JtcyBhbmQNCj4gPiB3ZQ0KPiA+IGNhbiBtYW5kYXRlIG9uZSBib290
aW5nIHByb3RvY29sIGZvciBhbGwgcGxhdGZvcm1zLg0KPiA+IE90aGVyd2lzZSwgd2UgaGF2ZSB0
byBzcGVjaWZ5IGRpZmZlcmVudCBib290aW5nIHByb3RvY29sIGZvcg0KPiA+IE0tTW9kZS9Ob01N
VSBsaW51eCBhbmQgUy1tb2RlIExpbnV4Lg0KPiA+IEluIGZ1dHVyZSwgdGhlcmUgbWF5IGJlIG1v
cmUgcGxhdGZvcm1zIHdpdGggQnVpbHRpbiBEVEIgcmVxdWVzdCBhcw0KPiA+IHdlbGwuDQo+IA0K
PiBDb3VsZG4ndCB0aGlzIHNvcnQgb2YgdGhpbmcgYmUgZG9uZSBieSBTQkk/IE9wZW5TQkkgY3Vy
cmVudGx5IGhhcyBhDQo+IHBvcnQNCj4gZm9yIHRoZSBLMjEwLiBUaGUgb25seSBpc3N1ZSB3aXRo
IFNCSSBpbiBnZW5lcmFsIGlzIHRoYXQgdGhlcmUgaXMgbm8NCj4gd2F5DQo+IHRvIHNldCB0aGUg
Vk0gbW9kZSwgc2luY2UgaXQgaXMgc3RvcmVkIGluIG1zdGF0dXMgYW5kIG5vdCBzYXRwIG9uDQo+
IG9sZGVyDQo+IHByaXYgc3BlYyB2ZXJzaW9ucy4gVGhlcmUgdXNlZCB0byBiZSBhIHByb3Bvc2Fs
IHJlbGF0ZWQgdG8gdGhpcywgYnV0DQo+IHRoZXkgY2hvc2UgdG8gY2hhbmdlIHRoZSBsb2NhdGlv
biBvZiB0aGUgVk0gbW9kZSByYXRoZXIgdGhhbiBoYXZlIFNCSQ0KPiBvcg0KPiBzb21lIG90aGVy
IGJvb3Rsb2FkZXIgc2V0IGl0LiBJIHRoaW5rIG9uZSBvZiB0aGUgaWRlYXMgd2FzIGZvciBTQkkg
dG8NCj4gc2V0IHRoZSBtb2RlIGJhc2VkIG9mZiB0aGUgbW11LXR5cGUgcHJvcGVydHkuDQo+IA0K
DQpKdXN0IHRvIGF2b2lkIGNvbmZ1c2lvbjogU0JJIGlzIHRoZSBzcGVjaWZpY2F0aW9uIGFuZCBP
cGVuU0JJIGlzIHRoZQ0KaW1wbGVtZW50YXRpb24uIEkgdGhpbmsgeW91IG1lYW50IE9wZW5TQkkg
aGVyZS4gSXQgaXMgcG9zc2libGUgYnV0IHRoZQ0KcXVlc3Rpb24gaXMgd2hldGhlciBpdCBzaG91
bGQgYmUgZG9uZSBieSBPcGVuU0JJLiBCZWNhdXNlIE9wZW5TQkkgaXMNCnN1cHBvc2VkIHRvIHBy
b3ZpZGUgdGhlIFNCSSBpbXBsZW1lbnRhdGlvbi4gQXMgTk9NTVUgTGludXggZG9lc24ndCBuZWVk
DQphbnkgb2YgdGhlIFNCSSwgSSB0aGluayBpdCB3b3VsZCBiZSB1bm5lY2Vzc2FyeSB0byBrZWVw
IHRoZSBPcGVuU0JJDQpjb2RlIHJlc2lkZW50IGFmdGVyIExpbnV4IGJvb3RzLg0KDQpJIHRoaW5r
IFUtQm9vdCBvciBhIHNlcGFyYXRlIGxvYWRlciBpcyBhbiBpZGVhbCBzb2x1dGlvbiBidXQgSSBz
ZWUNCnlvdXIgVS1Cb290IHBhdGNoZXMgbWVudGlvbiB0aGF0IGxvYWRpbmcgYW4gSW1hZ2Ugc3Rp
bGwgaXMgYW4gaXNzdWUuDQoNCkhvd2V2ZXIsIGV2ZXJ5Ym9keSBuZWVkcyB0byBhZ3JlZSB0aGF0
IGJvb3Rpbmcgc2luZ2xlIExpbnV4IGtlcm5lbA0KaW1hZ2Ugb24gYWxsIGJvYXJkcyhhdCBsZWFz
dCBzdXBwb3J0ZWQgaW4gdXBzdHJlYW0gTGludXgpDQpjYW4gYmUgZG9jdW1lbnRlZCBhcyBhIGhh
cmQgcmVxdWlyZW1lbnQgYmVmb3JlIHdlIGRpc2N1c3MgbW9yZSBvbiB0aGlzDQp0b3BpYy4gSWYg
dGhhdCBpcyBwb3NzaWJsZSwgaXQgaXMgZWFzaWVyIHRvIGVuZm9yY2UgYm9vdGluZyBwcm90b2Nv
bA0KKGEwIC0gaGFydGlkLCBhMSAtIERUQiBhbmQgbm8gYnVpbHRpbiBEVEIpIGFzIHdlbGwuIEkg
YW0gbm90IHN1cmUgaWYNCnRoYXQgaXMgdGhlIGJlc3QgYXBwcm9hY2ggYnV0IHRoYXQncyB3aGF0
IHdlIGhhdmUgY3VycmVudGx5Lg0KDQo+IC0tU2Vhbg0KPiANCg0KLS0gDQpSZWdhcmRzLA0KQXRp
c2gNCg==

