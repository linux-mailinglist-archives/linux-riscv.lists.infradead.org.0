Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6187B7B9EE
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 08:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLMFAnaHjDlKFRpiSuCC4Sh6qfSG9ymmLZY+h56GEBs=; b=A0PVIAdEvVsmH3
	+KSoyHIxNJhyJqqJhgnSeDObjrc+MngaCS93jbpf1rQnMgAj997HJwrRRnvJXc44WhTYxjc6PeDHr
	KtuQ0xi+u1nhTOk63A29/SBvjXlL1rAXoBYT3Uve66KkLANxYY37zw3u9kYyWtDNskR7Q2QWJsk5N
	UVpfxpKBuO7V/XS8KzxkhzRDmRyYGgtqabR+Wl/JK/qiuOSgpoWfYUXtbNR6jS2FOr6+B+jUTVDtE
	++1yTacmU/4EWhBpbEr2UJH2Dp0iuEBRObe3BGgEAYIWNrZEMsoGFGuvJ5VTkpI+WDEvgntLbuc9p
	0RP1JWnQBvAgW9uvd+TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiPP-0002Df-QM; Wed, 31 Jul 2019 06:48:23 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsiPF-00027C-9i
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 06:48:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564555694; x=1596091694;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=DqzRA87y3mLS5kFXCAMPLt42MP6chmLXh2Wy37YwmYk=;
 b=DBgCAU9lySn5cziUz26O0ter722IUsqj5h4QTFt2IEFgOgG7Lpflhkss
 +FOTIoP4ilFPqfq/pL3wHB/JnumPQKsg+Oe0tpx5hhSqrAVIf5UaIy4K8
 f5fzLcgYnCD80AEFcclLWFsmvqvHbmUNnbmoNd3TvwGRcQGfgpXtEVheT
 XKSl0ZV4TBukju3EtlZ2icjWs6C5hX5TN8lSvzGL9Qdtp/d70uCKG4N0O
 +UlsDaKc15skPsWWX/C8fnKMOPzpi8aszKcxQk5AHK5suUitV80VAJXNm
 on5KJnagwWDDJ8Tst26rWAM5jjUtCHf3NMUtipWo6j0mIaDzU7yI3618j g==;
IronPort-SDR: 2revpG5fqT4VUqhBzZomq+fedJlAJJEvJUUqV7+8qS1zF7MMH1lVtYB8uKuMDQHKvT/bjK9Etm
 QAfG1VxLmTAaCWu539vR3Fio/3eVtb7n+XprV8p1/f8WewiYYANtJuN4z47WjGnkvG+x3JOKNu
 pH3uCza1JepIenPrbbfLHxXZq1Oxfh/VO/Q+55xF4lvufUkNy9bIqruJybynj/9hP4zucDH+Vt
 Tx89mau0YaAWpISY97NOt5ZCrRmGovXI0I8Yj5P+wMfLO6hRma5SmOqE/0aFMUpGSStT66AbZN
 Pic=
X-IronPort-AV: E=Sophos;i="5.64,329,1559491200"; d="scan'208";a="119236236"
Received: from mail-sn1nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.59])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 14:48:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nat2JnQtkG+1r3XY+Txd9MhISWp782Mo/cz7ojyDWJV125sfa9rCxPd+n7H2Fd/7fpm+djO8Gw9TCr4ar1vltTh3y+tNpElUs/u8OoWUXYcS/cHYeD0HhytfKiqGR21oHjfXz+T3P/Fikhq/yg2mU56slRxzKefhZ9rxgj3wwkLbsbu22be48kUbx3vR3832kebtO6IlcImgPz3riXr3nHk9z6E7zooTP9Fy6B7GT6zsJIA2ZphpbOcMnS3IzYFtCuybgvxTTSGhYY/fW06Q1vx6HLxzALSj1DFmmHlZZ78OTwynXhq7IVRBrkitWuDuOWphLT2uxy1oVtp8YLUvXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DqzRA87y3mLS5kFXCAMPLt42MP6chmLXh2Wy37YwmYk=;
 b=mU5fWWS93Me5Ohbyi3WnF+/4gB4BhyU9070xt344YxhoBcmPS81L+fZMObGm5+3L/6sPshXmLWZDiK6iMzxLwZeLoR19jDKBubm2FDe1g13mhGZb0X9w/Ib27oH6IGp5g3DAaBZV9b1bdPPlw/2uU6T/SCurZ0mFwSPGhvCgn8quLF2D5r8FhdMQk6x8TR337aVsPhmrrJ9IXsvVdzVvfS0YJJYaMUtbkhXoFWnrTe5n8wCLNHJP9n3R1iEKIDYIlrpUUqo/eaQIT/6aSpQ3dWc2Kuq9vlJY4XQGgH+6dKWkHXRvWJydbNjrZPQN4h1oATRO0EyZ4pXjQUbvO50lBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DqzRA87y3mLS5kFXCAMPLt42MP6chmLXh2Wy37YwmYk=;
 b=be3pd9jlnUCOWQTmJxwn7NUIUdb75kF4aSbvXbdMYDtVIoS/i4HN88J0vo43sVMKF9+Z6QZRIZI4G9tOMkuHvwZTXU7z1H9WXljk7MU8uBtpYHY7L+13D3CgilpDuoQ1iF35cnMTFWqbIs54YLRFwoZRFCgZRxdDgm9OaDefDh0=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5687.namprd04.prod.outlook.com (20.179.57.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Wed, 31 Jul 2019 06:48:08 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 06:48:08 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: Andreas Schwab <schwab@suse.de>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>
Subject: Re: 5.3-rc2: Found incompatible CPU
Thread-Topic: 5.3-rc2: Found incompatible CPU
Thread-Index: AQHVRtWMB9syWAZHQU+mHz2vBJvsiKbj1M4A
Date: Wed, 31 Jul 2019 06:48:08 +0000
Message-ID: <37DB11CB-89AE-42C3-8DA2-7A65F6338A4B@wdc.com>
References: <mvm4l33adof.fsf@suse.de>
In-Reply-To: <mvm4l33adof.fsf@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:e4f3:9b1f:f663:964b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a678f84-a65b-40a7-84a4-08d715830c47
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5687; 
x-ms-traffictypediagnostic: BYAPR04MB5687:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB5687D99ED376248909BD1BBCFADF0@BYAPR04MB5687.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39860400002)(396003)(346002)(376002)(136003)(199004)(189003)(46003)(53936002)(66476007)(66556008)(64756008)(66446008)(4744005)(486006)(99286004)(186003)(446003)(7736002)(102836004)(6306002)(6512007)(71200400001)(478600001)(5660300002)(86362001)(68736007)(76116006)(36756003)(71190400001)(14454004)(66946007)(966005)(25786009)(6116002)(81166006)(81156014)(33656002)(110136005)(316002)(8676002)(2501003)(2616005)(476003)(11346002)(229853002)(2906002)(6486002)(6246003)(14444005)(8936002)(76176011)(256004)(6436002)(305945005)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5687;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eSoD5wwmdLYTh7UARQ7xPWTz9McCiF7oxXSrP/4ZPTPugqnmCHSAntI0lcGUD0uDSo4r2yGJAgj2DzVg8FDceesSt6HI3sIPiSfiECTwU3G9nvGywjmFjQN9mmfa/35HGS47yxZmLCH8G0uc7dyeNwW3dr3B7rsxYJo4WAWpUy3U/VNEGPFlBWKe0mQaQDZTiUFUhGwH1ysDJAPQmK3lfhesZVGMPqaMuozfcFQHvCUza42tJErSWP6BEXgJFZF73wjoUx+7lk6RMCtEVB62m5Ia7T3IwBVv6xFyD9xvvVvn4Nm+b+xBRrQdixMzgmAYkoxFBGUIRU7L9rSFEeKRqi9vvIvWcDD8T7QACMLYf9JNXevzNDPqLDn8iBtZr4ZkF1SOTNnu+pJSBE16GfQDiHcZ9JUM7Mq8ZkVCbJMK1cU=
Content-ID: <D1303D6AFEEEEE4EB0B66EB84602BB11@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a678f84-a65b-40a7-84a4-08d715830c47
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 06:48:08.6807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5687
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_234813_721865_08CA85EF 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDcvMzAvMTksIDU6NTEgQU0sICJsaW51eC1yaXNjdiBvbiBiZWhhbGYgb2YgQW5k
cmVhcyBTY2h3YWIiIDxsaW51eC1yaXNjdi1ib3VuY2VzQGxpc3RzLmluZnJhZGVhZC5vcmcgb24g
YmVoYWxmIG9mIHNjaHdhYkBzdXNlLmRlPiB3cm90ZToNCg0KICAgIFRyeWluZyB0byBib290IDUu
My1yYzIgb24gdGhlIEhpRml2ZSBJJ20gZ2V0dGluZyAiRm91bmQgaW5jb21wYXRpYmxlDQogICAg
Q1BVIiBmb3IgZWFjaCBjcHUsIHdoaWNoIG1lYW5zIHRoYXQgb2ZfZGV2aWNlX2lzX2NvbXBhdGli
bGUobm9kZSwNCiAgICAicmlzY3YiKSBpcyBmYWlsaW5nLiAgQW55IGlkZWE/DQogICAgDQpQcm9i
YWJseSB3cm9uZyBEVCA/IElmIHlvdSBhcmUgdXNpbmcgT3BlblNCSSwgeW91IG5lZWQgdG8gcG9p
bnQgdG8gdGhlIGNvcnJlY3QgRFQgYnVpbHQgYnkga2VybmVsIGJ5IHVzaW5nIEZXX1BBWUxPQURf
RkRUX1BBVEguDQoNClRoZSBkb2N1bWVudGF0aW9uIGlzIGFscmVhZHkgdXBkYXRlZC4gWW91IGNh
biBmaW5kIGl0IGhlcmUuDQpodHRwczovL2dpdGh1Yi5jb20vcmlzY3Yvb3BlbnNiaS9ibG9iL21h
c3Rlci9kb2NzL3BsYXRmb3JtL3NpZml2ZV9mdTU0MC5tZA0KDQpZb3UgY2FuIGR1bXAgdGhlIERU
IGluIFUtQm9vdCBwcm9tcHQgYW5kIHZlcmlmeSBhcyB3ZWxsLg0KDQpSZWdhcmRzLA0KQXRpc2gN
CiAgICBBbmRyZWFzLg0KICAgIA0KICAgIC0tIA0KICAgIEFuZHJlYXMgU2Nod2FiLCBTVVNFIExh
YnMsIHNjaHdhYkBzdXNlLmRlDQogICAgR1BHIEtleSBmaW5nZXJwcmludCA9IDAxOTYgQkFEOCAx
Q0U5IDE5NzAgRjRCRSAgMTc0OCBFNEQ0IDg4RTMgMEVFQSBCOUQ3DQogICAgIkFuZCBub3cgZm9y
IHNvbWV0aGluZyBjb21wbGV0ZWx5IGRpZmZlcmVudC4iDQogICAgDQogICAgX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCiAgICBsaW51eC1yaXNjdiBtYWls
aW5nIGxpc3QNCiAgICBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnDQogICAgaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdg0KICAgIA0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1y
aXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
