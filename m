Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7091CEDDE
	for <lists+linux-riscv@lfdr.de>; Tue, 12 May 2020 09:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VPWdSXfnsfe2H+gOjKZguoOzM9XcQhYJWAYbyYnGYoY=; b=URfY5zigilnzuh3wilT3ts0RR
	WFVNPFvofCkeejbVZ6KIEwDigyrzaxo1Wsurp+V6OYcDYq/zlEB5LveIAx3h/QBSGFwBLzIBCq/ku
	gj1ju3iAtap0igV+FWCN74iQxxoqDagmItPwcve5KWWszOf6O0zDIeLG4CKVLur9YHjwPEGnr+GfB
	PBni1PhcpLFCLou9VEvPQxS0Bbt7OIPXpEsidCcU12l4WlekOzo7GEG4wSmbvUI9vi3fJFNQGhgp9
	897qW+rdvcvHkMqepnNYOIEWuyOk2GPGvo7frvwDxgrM8oMOZemeBjvnqIP+T4u79+lAeSgQwDjLV
	ERbCAaiXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYP7D-000882-Si; Tue, 12 May 2020 07:14:11 +0000
Received: from mail-mw2nam10on2077.outbound.protection.outlook.com
 ([40.107.94.77] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYP79-000857-Gs
 for linux-riscv@lists.infradead.org; Tue, 12 May 2020 07:14:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iULbymmpKXpOPETZaaJMqTU07DCrSvA5KDlB5nZ0kw+toKP7ZMnBqCPGmH2wpZ9vhzFusZBylN4Z4pRt/clD5RtPyYmFwOjQ63EuSD+1JlRObPycJeS7cRGCgUulodMKqoYPLyoLU0tZ8OH/Wt76q16JUkq0vCbhL+2tYuxVABe3wLG7VEqJlywBHK0vCk8tGtqxEeLvnPLoMVN7OpW6JTveuV1L5vXqH96nD0FbW1cXDa94QHF12m+iMP9O838fz2sMXITx6r99EAZz6Z4JQCDXDXFxAr0ID++jCNbk9jC8HKQ6arhAlkcQMsJx6vWVMy/SfbqBby8w/I2Isb7KPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VPWdSXfnsfe2H+gOjKZguoOzM9XcQhYJWAYbyYnGYoY=;
 b=QLRACDEuBJ6SIhLInAmTGlPOHuafrFvIb6+wwliI/VBn5/ZVCzdlCxVnIYjzDtbNQkbztecZLGHP4TkXVC39zJ1n/d6XSMKeue9gW2yCRaFB/DuNeQr8KOqbAdBmG8pggQxFcXpdFoC6X/5+suO9dhyB5Hpaz1R9aixPMdOxpuGIKmYvOOz1Q36/4UZO/5BRmzzthv/ImIqA5IZaGoxXRNbpcEPLnMR5Hy02TKgNd7Nr7/yuUitC+xt3fAU8xnva+EBKgrGX5bjGw58Thgl6NRwQoQEY75/EKFZY8zUiV3Li5drGMr20lBEiTCIIwALYPYBGHG+7Go0KrijaZSKDcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VPWdSXfnsfe2H+gOjKZguoOzM9XcQhYJWAYbyYnGYoY=;
 b=nejanEoiRmtM6csyyL2WaA+BeWeFY9ak6Dcf2erGrj1KXRJV0r2+fZDNWPB72Ww+NgzFqBk2pFi2hy35wpvw2L/iznb7Ad6tcAB1eqUKjslWmN3KbvLqJ3eoSsGmqWJONEp0/WOZQSQicApEgNMbuxe4Kc+vGLg7SfOKWLn5IjM=
Received: from BYAPR13MB2614.namprd13.prod.outlook.com (2603:10b6:a03:b4::12)
 by BYAPR13MB2280.namprd13.prod.outlook.com (2603:10b6:a02:ca::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.12; Tue, 12 May
 2020 07:14:05 +0000
Received: from BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6]) by BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6%7]) with mapi id 15.20.3000.013; Tue, 12 May 2020
 07:14:04 +0000
From: Sagar Kadam <sagar.kadam@sifive.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [RFC PATCH 4/4] dt-bindings: net: phy: extend dt binding for
 VSC8541 ethernet-phy
Thread-Topic: [RFC PATCH 4/4] dt-bindings: net: phy: extend dt binding for
 VSC8541 ethernet-phy
Thread-Index: AQHWHU6PhAi/mddOO0+ZyvrzPnD5f6ijytgAgABSCNA=
Date: Tue, 12 May 2020 07:14:04 +0000
Message-ID: <BYAPR13MB261430FAAEB02E9926EEB93F99BE0@BYAPR13MB2614.namprd13.prod.outlook.com>
References: <1588072608-7747-1-git-send-email-sagar.kadam@sifive.com>
 <1588072608-7747-5-git-send-email-sagar.kadam@sifive.com>
 <20200512021204.GA12999@bogus>
In-Reply-To: <20200512021204.GA12999@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=sifive.com;
x-originating-ip: [116.74.152.191]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29e8fc81-1ff0-40e4-2685-08d7f6440dfb
x-ms-traffictypediagnostic: BYAPR13MB2280:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR13MB2280C788C4F4D03555EDDB9099BE0@BYAPR13MB2280.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0401647B7F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR13MB2614.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(136003)(396003)(346002)(366004)(376002)(33430700001)(66946007)(52536014)(55236004)(2906002)(44832011)(5660300002)(6506007)(4326008)(186003)(53546011)(26005)(76116006)(66556008)(66476007)(9686003)(8676002)(64756008)(71200400001)(7696005)(33440700001)(66446008)(316002)(55016002)(6916009)(86362001)(33656002)(54906003)(478600001)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KeHNW28ghvY0b1Q9v7xqlJIDkdrbAlTTb9zMT0x2I0fPo3QAhrvugQJAPZWEleT5ukvONU9J3ZyNCMtR2h/d1Sn9zGvnHpTo65BD2M1stWj8MfMfotYhTFbzVL5OGATBYLioHL/anBFRFv23B8PJZdijiqxyH3SqBkQ+YH7lTTXmFYcjNPNXukvj744lrCVnbmVd7tXA2ZAcQ73iC6x6mnUxcybNZm8zOxes/ePp3/lCFmDGN/Dmd6VK/WDBjSjxvJDSC1vrs3J+Rfe7n06+32nGsk/NPF4I+ByTJefScYv+iRbh4/XBtpdBzf0NV5Y8Bc908LSHcbCz9nXRfZ5BYgUCJRCh8KU5Synw3TvYLSH344saDpMiizVFy64S8yoW0cpo2sihj6mxeKPwXUS3HQaEyiEfFdX3GmQkR6uqL0plpQJspgJfdQ4SzaGwKzClJJRgKsryPdbkgTyYpWAgR6v7aX3Tmz2FokCQGvwIVDGGEhIoZGCivvlwoonm1o7Ok3ay2dQFU6Zlm+uGbROo6g==
x-ms-exchange-antispam-messagedata: 6VRxsUFD3q+6yg+vQDPIOaen684lEy7ZAEN+aFZHOfr2aXJyzm6H8Y+VOK19we/ek0+6IeBJSbei5Pe23SLYlNy3Ohbqwt+HU+kFDnP8U3STxuhDWhYtp1iLy8qnlj9OWmAmMrimhmIshMRQRRwEdpqTRFwJyH/TZfHDPjhWN7f1ZghwN93B/3dj65Tj0zMhMJAR4Q+Dpo91egNsiqfU2VVJk9y8s/aVwVIpHWOAIYLGlcnV+JbLnCzndpLbk6L3TcsVpn8YLb49HPqx0kxtjXKOxpYmYmsRsAwz0dI8L93v1Zzifk7hb/uN+WWaiID1dCTJf+lNeJKFuAlt9pwSHmluxd9MkDTdT4ZENvch5LuJXq+d1mO7V8Dd0yoGsRc0cBoNFwIqPkQ08zGoVDBTbgtb0LnJY9qSbYG75SJBE9L2YFJOGu9AWVVKgqc5Xq9rPZuddQGhKpzYdx5r7xVIatoE8lrfP8H7+ktH8J3OznUeeyMtdlmRndep7U+o/yxo
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29e8fc81-1ff0-40e4-2685-08d7f6440dfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 07:14:04.7907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ed2TfHun4hzMi6+3mNvordfTM/ICrV6IeWgcj3tHf9uNJFX/+VjPD2idZBpkZ9fzqNQrKNeaoza6Vj7XLuYOOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2280
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_001407_652640_CFDFD760 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.77 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Rob,

> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Tuesday, May 12, 2020 7:42 AM
> To: Sagar Kadam <sagar.kadam@sifive.com>
> Cc: linux-kernel@vger.kernel.org; linux-riscv@lists.infradead.org;
> palmer@dabbelt.com; Paul Walmsley <paul.walmsley@sifive.com>;
> atish.patra@wdc.com; devicetree@vger.kernel.org
> Subject: Re: [RFC PATCH 4/4] dt-bindings: net: phy: extend dt binding for
> VSC8541 ethernet-phy
>=20
> [External Email] Do not click links or attachments unless you recognize t=
he
> sender and know the content is safe
>=20
> On Tue, Apr 28, 2020 at 04:16:48AM -0700, Sagar Shrikant Kadam wrote:
> > Adding a OUI (Organizationally Unique Identifier) for VSC8541-01
> > device to dt node requires a corresponding dt-binding entry as well
> > so that checkpatch doesn't complain with a warning:
> >
> > DT compatible string "ethernet-phy-id0007.0771" appears un-documented
> >
> > Here extend the existing dt binding of VSC8531 device to include
> > VSC8541 device example.
>=20
> Checkpatch.pl is just dumb here and can be ignored. We have the regex
> that documents this compatible. We don't need every VID/PID listed.
>
Thank you for the information.=20
We can then drop this patch to handle un-documented warning.

BR,
Sagar Kadam
=20
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
> b/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
> > index 5ff37c6..774448a 100644
> > --- a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
> > +++ b/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
> > @@ -68,3 +68,6 @@ Example:
> >                  vsc8531,led-0-mode   =3D <LINK_1000_ACTIVITY>;
> >                  vsc8531,led-1-mode   =3D <LINK_100_ACTIVITY>;
> >          };
> > +        vsc8541_0: ethernet-phy@0 {
> > +                compatible =3D "ethernet-phy-id0007.0771";
> > +     };
> > --
> > 2.7.4
> >

