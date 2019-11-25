Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8356410880D
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 05:55:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mN0iYr0pcv+UI+SSFBD5p9kveop0Wh7HaRzKk5gWvsU=; b=cw2v/j/YA+Ezw5
	8j7kX+zCC7qcbZrzb/HeFWkklyN6SZWtZFVyarbzPKwMf2iT/89p72F5Wesi/60wYcTvaNiaQH5pR
	xiLKKiwsUD2VO24rXCUYzrD0pmqwF1k3KTGhj7K7uy/1CMp2CPqfnlV4pFsgVdqBeg2beXq4ohnBP
	IPzaXuxIjh+sv1/lMvwcoCfaBPG1O446u/VCKl2i3DTusSsFreMdFA8IjwaE4cdHP/eBO3FbWS2gE
	sDZ19lcYuSARp6WX4xXwD+nW3D2g+BE5cAYcdmNVHw+BBiai4CHmFjKJIBoEf5y/iTxfvP3QeQT3p
	5xeEaGcLNy75xM5QqUHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ6Of-0002Pu-VH; Mon, 25 Nov 2019 04:54:49 +0000
Received: from mail-dm3nam03on060f.outbound.protection.outlook.com
 ([2a01:111:f400:fe49::60f]
 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ6Ob-0002P6-CC
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 04:54:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZxULW7MUhn3eQQlAc3mMuyEmYCS+7jipmg1+a9bWCJsYWieWedqBke4+3HL+7uDhoRmbv1c7AFeQ7XandwyIzygoUK9axXD8ff3KQHZYViRau79CEKbTpAybnmg+cIY0HxD44raQfJCE0liYghR0TGHzF4gfntBVH28a4ULM1Wi16MzeI2BHClC5vFzTknrLUg4+hPSJXtC70z9aNv950GNCpUNFDhWqjEaXTWpy1TVvyKQb2L3Xi2ljtgWA893wwFBjH1etEpYjEoQlk9U86yA/QlCpZmRSNGHYCcftPk6sFEMoIVLjKoO/ElQ0hJkxRsFibF3CFeV22MEnoyhUgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xbh+RcJB6i9jKg1jxT3zjZ2njxc2OleQflFYuIRZXNA=;
 b=T6j8fdMUgHIlqS15RJM1vkZEefNsQLeGjYrPHg+AO6FvLPz4zzg+SnZCoqZLZOa1S1D+QKVWFaL6CmT0oHkLph7JGygIl1506pi6NegibKBcexJhvYlVMRdN+u0mhvrOxo904HOCAwYNYdytrIAe1R5VDsVQgBN+Xqc6UZ4No3ww0QXXIj2UkTla5VX3z/f4lY7bitbZ4rMsYv2xLTZ6KIV9pzEaXg/Ksf7+KN9/4+1fa9DoceNLqZMClA+a6nyDUc5S762E8hIr5QmrsuEGcZc87YMHVDYeKzHhuXPG6zghmJLamMp/ZvWVYbRJOw3EmtzJeNIstVSHICjLJnsKVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xbh+RcJB6i9jKg1jxT3zjZ2njxc2OleQflFYuIRZXNA=;
 b=sPtm9Z1m9V5WXb9Y0r/fiFv/RHQOvJS1cU6+Oapq6BMw8sFT+i9Ju7+r4+jtlyM7R5wRVNZ2UN0ODxncikxJpwX3Vd7XDz9KLCMcEyX6U9mwCakb4bPExEHuHDGbb3xbx9CfqhTNiJo9tLhT7v+3fgNjoQJEp31J8dDPdqzgkkY=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3608.namprd13.prod.outlook.com (52.132.247.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.13; Mon, 25 Nov 2019 04:54:40 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2474.018; Mon, 25 Nov 2019
 04:54:40 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <bgolaszewski@baylibre.com>
Subject: RE: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
Thread-Topic: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
Thread-Index: AQHVmVJqQXFGHo/64k2Vkr22HauCBaeJFM0AgAeCbnCAACgzgIAB4sYAgAAbo4CABHAgAIAEN9wg
Date: Mon, 25 Nov 2019 04:54:40 +0000
Message-ID: <CH2PR13MB3368B3660A55C509272CE1238C4A0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-4-git-send-email-yash.shah@sifive.com>
 <CAMpxmJWcuV7goPWxOWv_Og9GwzGrioF62SfS1LCiHf9eDX=vdw@mail.gmail.com>
 <CH2PR13MB33680443C101511E66ECADF08C4D0@CH2PR13MB3368.namprd13.prod.outlook.com>
 <CAMpxmJU+P=nWe9fpp45Jw=GwX3+V0sVVshRcE7AD1Kyz_F0qJQ@mail.gmail.com>
 <CACRpkdb9KKPsu7dkjVmHbgQcdo1Zx9uC_jtd6HFwM+RO2EA4nw@mail.gmail.com>
 <CAMpxmJXFK4VLgJU+P0ZMNkduGfFxAeQ_NguRHtedf7cRPav7LQ@mail.gmail.com>
 <CACRpkdaDmd+0809wmiNwSRbsdHaDNzpbOaxCcx6bEfYuyzPNQg@mail.gmail.com>
In-Reply-To: <CACRpkdaDmd+0809wmiNwSRbsdHaDNzpbOaxCcx6bEfYuyzPNQg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 813c438a-3704-4fbb-1252-08d771639493
x-ms-traffictypediagnostic: CH2PR13MB3608:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3608778720876525FCE426D88C4A0@CH2PR13MB3608.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(376002)(346002)(136003)(396003)(39850400004)(366004)(199004)(189003)(13464003)(55016002)(54906003)(86362001)(4326008)(446003)(11346002)(44832011)(76176011)(186003)(478600001)(7696005)(2906002)(305945005)(102836004)(25786009)(74316002)(26005)(6116002)(3846002)(7416002)(107886003)(53546011)(6506007)(6246003)(110136005)(7736002)(9686003)(6436002)(316002)(14454004)(66946007)(66066001)(5660300002)(66476007)(66556008)(64756008)(66446008)(76116006)(52536014)(256004)(14444005)(8676002)(71190400001)(71200400001)(99286004)(229853002)(33656002)(81156014)(81166006)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3608;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?utf-8?B?dUJEV1lBZzVHNDJMaFBPWXNLMFlmcGk0T2lWLzNIMGVvUkVLUFhhQllVbVdM?=
 =?utf-8?B?UmhGa3l0Y1NIUUJxb2d3NmM2Q1RzUk1aeHVoR2tDRzl4bkRLWGNLVWMxOUho?=
 =?utf-8?B?U3Z0RjFQcmtpVE93RktGSGRvcE5ZVGZSd1lGYmI3WnR5cHdzQnNoREtsVk1u?=
 =?utf-8?B?aHhYV0JyQVR3U1VES2dVc1JFcHdQNEZNQUNoSDRRbWk1UUZWbU9xN00xVUg1?=
 =?utf-8?B?VVFMSjJnVHJQaDU0Y2tEYXNwb2RlZ0ZPN3BaTkE4T1NuTlpXWERJUC9Bb0s5?=
 =?utf-8?B?SlRNTVFySDVDSTZ0blF0UmxFY1Y0eUxIZnUvdnpQNVA4OFpUL1VFcnV2S0RO?=
 =?utf-8?B?M3VxRkcyeUpXTTF1S0NNWkNNNzlmRW04VmZpTkpsU2xxZ1ZvUEVaOUROa2JH?=
 =?utf-8?B?V1oyVjJNQUR4NHVBRW1NLzhFL2d6NzNYd1UrV2VNWHo5WDltWkwrcjFiL25t?=
 =?utf-8?B?N1RHV3RiNEw5eFAyVkV0czdubzIzWnpGNzIvK3hyYlV6WUNVQWcvZWdqUVEx?=
 =?utf-8?B?RWcveGJOQVhDeDhzZmhGWlQrMlRseElkNjFwY0dnN1VHQWtaMG5KOEtZOGJB?=
 =?utf-8?B?TUlsVVdhMFFiaWgxODB0VUh3bmo3SUs4OTJPWGhWSzkwSFFPQytiREFFdjhh?=
 =?utf-8?B?bHBHL2E0bFNuMVhtL01zTThxbmVZMmhGSDR5MzNBeU9NVUtzYmZ3b0VacWVs?=
 =?utf-8?B?ZG1CK01icnpZWFhrTERHMTF4RkRTbXhERVFaZCszendCZXM5ZmhyVGFRellW?=
 =?utf-8?B?OHlOUGNBdUNxVGFBM0pid0RLMGYwSnZ6U3pBZW95NGZOeWZMTDlWaTJsYUp1?=
 =?utf-8?B?c1FROGNNc2NpZnkrNTIwTWp5TVNxNmI3SkNIcUxhazg0UnJYUUc0Z1RUS1kz?=
 =?utf-8?B?SDBDMWQ2ZVRNM2J5c2d3ejdCTUNrU1dXaE0wa0lwbXBTNGRMMml3YUhkOVNX?=
 =?utf-8?B?RUl5RGxyQWw5NWJDS2ZuZnJtSEZLT3YxaTlZSTJkNHBKYzNrMzlMaFVsYk03?=
 =?utf-8?B?N2QvT2pRVXJxSkJlK3UxNURpUFFPN2ZJWEdOd09pSkdOSzlCQzFOT24vdnd4?=
 =?utf-8?B?VUFXWS9ZdDhsU1R1TkgyTUlSRWtSbW5UdEdlUDVwZm1VN293YnhuMHFkNmVS?=
 =?utf-8?B?c3g2RTh0S09VbmpOVFFGSENpQTA4eFc4SFFSdnFEanlaaEROVUVXK3pwVGg2?=
 =?utf-8?B?YU0xbVJnMXBFMGEvd1BGZkpiY1dINCtyWjZzcTlqQmNyTG9acmRtdTZQZWs4?=
 =?utf-8?B?Z3NueStTZ2NwWDZJM1BCRnU3dXRhbllHNWNlV01zaXNsemY4ekVQWE9Oejhi?=
 =?utf-8?B?QysxUTd6bFlEMndzNUZuTFhOTmF5Mm5RZWYyNjN4aFBWbXYzeElFbGkzRnNq?=
 =?utf-8?B?QUI1N0V6bEw1WWduNm5nRUhVOGlTRWtaQnhkcW0rS1RwdHR5c1BXTTYvM3Rt?=
 =?utf-8?B?V05DOHNkWWlrY0dnelhWSEVsT2txMEp4Mi9CR2N4bktPcGFuenZKTU9uOGpC?=
 =?utf-8?B?SWdYa1JMWXhya1gzNHdHdXFOWjQ4bUgxUlhLZGQzMHBXUHVkd1UzVGFBeVBG?=
 =?utf-8?B?WTVSV1VvMVR2azduZTA5MzdEM2lwQ1M2a1NZa2YwQzdNcFNSUVJ0aERLMHJG?=
 =?utf-8?B?NVRxUkdObGlqMlg2Qm1Pa2JuU0Jpa3lYYkR6QllKUFpZRXRLTnAwZFE0YnVB?=
 =?utf-8?B?Y3Q2Zm02K2dKTWNQRE5XMmJpZFdQZE1ycFNlQmhCQmN4K256aWpHaHpOQjQv?=
 =?utf-8?B?eUFBZ0JEbXp1aGdnYUdzQXdCZ2pEdGZaSGVXSTBpUUl0Ty8rTEZQRmsxeWJ1?=
 =?utf-8?B?QzMrSGo5aGtRY0Nzdld4c2FoZk9yV2RjSHJxVU1zUlBXcDZLMHUvNFpVckRm?=
 =?utf-8?B?ZlZyOVBHN3ArbmNFeC8rZE82Z3Uwby9iRndGSnRIOG02MGtxWEk3UFp1UVFx?=
 =?utf-8?B?QUhKZ2F2YjF2Z01YeHp1ZUpaWFN3cDVrT1NCek42bGtZbC9LZEJlN1lpbjRH?=
 =?utf-8?B?Yit0THkydEtuOSsrTHI0VVdWb2gyZnRhS3pJNGx2Qk9JM1p2c1lKUlNQZk5z?=
 =?utf-8?B?cWpKc2htSTIrb0tiTEgvTm1TY2JyTERXaVVRcEZqTGxqc2ozZnFUSHdOOTFN?=
 =?utf-8?B?cHBUWGdBZmRaaEFFTGl4a1ByUXpvcDFNYnFzSHJLWW1sZUhLNVVvbGxLSlRZ?=
 =?utf-8?B?SXZncHFTMnl1TTVVa0lFRlJBMTVMOE94Wll5aUwvL3ArRThyQnk3bTNTMG1t?=
 =?utf-8?B?elNzNWNMTmlhaDN6emdvS0lidFlTVDZjcUJhZkc2VUtkS2RIZjBzRUswTkZu?=
 =?utf-8?B?MzA5TE4vLzlvTjBETzlEUVAwUTNaSEtpZVVrK2Vydk1EQjliUkFWMGVFMXY5?=
 =?utf-8?B?N2UyU1htRFFlbXNON0ljTDBnQURUalFKSm9ZS2dMMzgzQnNCMkMxbkpBQWtx?=
 =?utf-8?B?NGhDM1FBUHFrR2tWSDNQa0xremhabzNXVVc4Ri9uZExya2dmVDJSSmZNMnJp?=
 =?utf-8?Q?Ceii4Ku2iBX?=
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 813c438a-3704-4fbb-1252-08d771639493
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 04:54:40.2443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: khQ8+9UbXFpyNHmliWeaHa359r1Vsf9OHWoKswJGqlX6stPP1QZuF5Efc24TwCtWJUHzvg+ch4YWxBjulJR6Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3608
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_205445_483349_35E1971B 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe49:0:0:0:60f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>, "Paul
 Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMaW51cyBXYWxsZWlqIDxsaW51
cy53YWxsZWlqQGxpbmFyby5vcmc+DQo+IFNlbnQ6IDIyIE5vdmVtYmVyIDIwMTkgMTc6NTgNCj4g
VG86IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+DQo+IENj
OiBZYXNoIFNoYWggPHlhc2guc2hhaEBzaWZpdmUuY29tPjsgcm9iaCtkdEBrZXJuZWwub3JnOw0K
PiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgcGFsbWVyQGRhYmJlbHQuY29tOyBQYXVsIFdhbG1zbGV5
ICggU2lmaXZlKQ0KPiA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29tPjsgYW91QGVlY3MuYmVya2Vs
ZXkuZWR1OyB0Z2x4QGxpbnV0cm9uaXguZGU7DQo+IGphc29uQGxha2VkYWVtb24ubmV0OyBtYXpA
a2VybmVsLm9yZzsgYm1lbmcuY25AZ21haWwuY29tOw0KPiBhdGlzaC5wYXRyYUB3ZGMuY29tOyBT
YWdhciBLYWRhbSA8c2FnYXIua2FkYW1Ac2lmaXZlLmNvbT47IGxpbnV4LQ0KPiBncGlvQHZnZXIu
a2VybmVsLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LQ0KPiByaXNjdkBs
aXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBTYWNoaW4g
R2hhZGkNCj4gPHNhY2hpbi5naGFkaUBzaWZpdmUuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENI
IDMvNF0gZ3Bpbzogc2lmaXZlOiBBZGQgR1BJTyBkcml2ZXIgZm9yIFNpRml2ZSBTb0NzDQo+IA0K
PiBPbiBUdWUsIE5vdiAxOSwgMjAxOSBhdCA1OjQyIFBNIEJhcnRvc3ogR29sYXN6ZXdza2kNCj4g
PGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+IHdyb3RlOg0KPiA+IHd0LiwgMTkgbGlzIDIwMTkg
byAxNjowMyBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+IG5hcGlzYcWC
KGEpOg0KPiA+ID4gT24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMTE6MTUgQU0gQmFydG9zeiBHb2xh
c3pld3NraQ0KPiA+ID4gPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+IHdyb3RlOg0KPiANCj4g
PiA+ID4gcG9uLiwgMTggbGlzIDIwMTkgbyAxMTowMyBZYXNoIFNoYWggPHlhc2guc2hhaEBzaWZp
dmUuY29tPiBuYXBpc2HFgihhKToNCj4gPiA+IElzIGl0IHJlYWxseSBzbz8gVGhlIGJncGlvX2xv
Y2sgZG9lcyBwcm90ZWN0IHRoZSByZWdpc3RlcnMgdXNlZCBieQ0KPiA+ID4gcmVnbWFwLW1taW8g
YnV0IHVubGVzcyB0aGUgaW50ZXJydXB0IGNvZGUgaXMgYWxzbyB1c2luZyB0aGUgc2FtZQ0KPiA+
ID4gcmVnaXN0ZXJzIGl0IGlzIGZpbmUgdG8gaGF2ZSBhIGRpZmZlcmVudCBsb2NrIGZvciB0aG9z
ZS4NCj4gPiA+DQo+ID4gPiBJcyB0aGUgaW50ZXJydXB0IGNvZGUgcmVhbGx5IHBva2luZyBpbnRv
IHRoZSB2ZXJ5IHNhbWUgcmVnaXN0ZXJzIGFzDQo+ID4gPiBwYXNzZWQgdG8gYmdwaW9faW5pdCgp
Pw0KPiA+ID4NCj4gPiA+IE9mIGNvdXJzZSBpdCBjb3VsZCBiZSBzZWVuIGFzIGEgYml0IGRpcnR5
IHRvIHBva2UgYXJvdW5kIGluIHRoZSBzYW1lDQo+ID4gPiBtZW1vcnkgc3BhY2Ugd2l0aCByZWdt
YXAgYW5kIHRoZSBiZ3Bpb18qIGFjY2Vzc29ycyBidXQgaW4gcHJhY3RpY2UNCj4gPiA+IGl0J3Mg
bm8gcHJvYmxlbSBpZiB0aGV5IG5ldmVyIHRvdWNoIHRoZSBzYW1lIHRoaW5ncy4NCj4gPiA+DQo+
ID4gPiBZb3VycywNCj4gPiA+IExpbnVzIFdhbGxlaWoNCj4gPg0KPiA+IEknbSB3b25kZXJpbmcg
aWYgaXQgd29uJ3QgY2F1c2UgYW55IGluY29uc2lzdGVuY2llcyB3aGVuIGZvciBleGFtcGxlDQo+
ID4gaW50ZXJydXB0cyBhcmUgYmVpbmcgdHJpZ2dlcmVkIG9uIGlucHV0IGxpbmVzIHdoaWxlIHdl
J3JlIGFsc28gcmVhZGluZw0KPiA+IHRoZWlyIHZhbHVlcz8gU2VlbXMgdG8gbWUgaXQncyBqdXN0
IG1vcmUgY2xlYXIgdG8gdXNlIGEgc2luZ2xlIGxvY2sNCj4gPiBmb3IgYSByZWdpc3RlciByYW5n
ZS4gTW9zdCBkcml2ZXJzIHVzaW5nIGdwaW8tbW1pbyBkbyBqdXN0IHRoYXQgaW4NCj4gPiB0aGVp
ciBpcnEtcmVsYXRlZCByb3V0aW5lcy4NCj4gDQo+IE9LIGdvb2QgcG9pbnQuIEp1c3Qgb25lIGxv
Y2sgZm9yIHRoZSB3aG9sZSB0aGluZyBpcyBsaWtlbHkgbW9yZSBtYWludGFpbmFibGUNCj4gZXZl
biBpZiBpdCB3b3JrcyB3aXRoIHR3byBkaWZmZXJlbnQgbG9ja3MuDQo+IA0KPiA+IEFueXdheTog
ZXZlbiB3aXRob3V0IHVzaW5nIGJncGlvX2xvY2sgdGhpcyBjb2RlIGlzIGluY29uc2lzdGVudDog
aWYNCj4gPiB3ZSdyZSB1c2luZyByZWdtYXAgZm9yIGludGVycnVwdCByZWdpc3RlcnMsIHdlIHNo
b3VsZCBlaXRoZXIgZGVjaWRlIHRvDQo+ID4gcmVseSBvbiBsb2NraW5nIHByb3ZpZGVkIGJ5IHJl
Z21hcCBvciBkaXNhYmxlIGl0IGFuZCB1c2UgYSBsb2NhbGx5DQo+ID4gZGVmaW5lZCBsb2NrLg0K
PiANCj4gT0sgbWFrZXMgc2Vuc2UsIGxldCdzIHNheSB3ZSB1c2UgdGhlIGJncGlvX2xvY2sgZXZl
cnl3aGVyZSBmb3IgdGhpcy4NCj4gDQo+IFlhc2g6IGFyZSB5b3UgT0sgd2l0aCB0aGlzPyAoSGF2
ZW4ndCByZWFkIHRoZSBuZXcgcGF0Y2ggc2V0IHlldCwgbWF5YmUgaXQgaXMNCj4gYWxyZWFkeSBm
aXhlZC4uLikNCg0KWWVzLCBJIGFtIG9rIHdpdGggdGhpcy4gSSB3aWxsIGJlIHNlbmRpbmcgdjMg
c29vbiB3aXRoIHRoaXMgY2hhbmdlLg0KDQotIFlhc2gNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4
LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
