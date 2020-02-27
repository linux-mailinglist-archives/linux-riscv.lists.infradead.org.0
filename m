Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1014170E54
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 03:18:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=0P/5/2qZkRPA0r3+CUX92kk3TtVlVy7JyqkDT2JfA2c=; b=tMn0PW7dtjyrI2UlAvUedJqbu
	ZB7Mpkhpj12YmdlBJOkJLUyTCGk9rfGJFgnMRXtEh08ZRxZLTUP+gWq3wKROyRbnuUhlXUdRekuaD
	LIZD4FdslC7NRmFkU0AxRMti86ISe8f2PUASrMQDMOjY7MjsLWx09gD66gChKtPgiRCfkqkvJWhJ4
	P9BPGfeIWesze3u0K3q6A0fF2xRCixxBZkpbyUI6ZhgxWBwF7VJysgRmtNEAIeSsVS9VRWKHZv1iD
	90XtrJ+oaiJNLYTjeT6DA560OisQw1/fe4nfeiLNjlWupORjA4B6HevWQGaPb+9tENiuS+37dpBUA
	wuvnA9yPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j78l0-0007sf-Ul; Thu, 27 Feb 2020 02:18:34 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j78kw-0007sD-PB
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 02:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582769910; x=1614305910;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=0P/5/2qZkRPA0r3+CUX92kk3TtVlVy7JyqkDT2JfA2c=;
 b=W/04HQ50/PFroVcBaLNtuuu6CfZvrQmrGj01L66FHyDFWfh/Gxj0jqfp
 1yi84NmXZCDzClGuf7c0zRUHMnlqz0HjWwwufATdM0h14wYoHLCDFha5r
 V3566AvEI8ifJL6Ti6/7+f0+Ou5omMoybXz6fViFNc0OpUaRWrq3LGKxr
 ETUN7WjrOwX+fxsPkGtrlZucuKybjuG2+feZxHVI7/o4/mj0j6mWPtb8X
 kkTEv/GaoCW6/baBAWTa7b/UOIkqvFjA2swevHNkaO3OpY8VCYtE07Xjd
 Y5WrsGEho/mxVjAOPPRGZ8IwZzJuT99gf9Tis0uNCaHGrSeoOyzXz1SRg A==;
IronPort-SDR: THh6v7UiSxUcq/Sh8Qre9U4J5CfkyCebz6s7x1OQdcMKjsvoLAyYnidJv7laOc576kenMgkKrD
 RqB4O3eabhcgEOMoKA8RAfcAoftr+JR8uKokGMOd0jPWz5O/NAy0gimCgscrQhwqISYLwIgh0o
 u67J7F2WKzKaWUmDRgZ0FeVG3sBXndCkpDFKIuM4BKdXrgKic2Y8Dvo8PWS7BCUjAtBeeRTKKO
 l951yucAvSJuETgOBE2Ity//uHIDKIQw3Xc927/idXvrbAHkaE3ZeHJv332Z1d5l/PDTT1p9Dl
 ZDE=
X-IronPort-AV: E=Sophos;i="5.70,490,1574092800"; d="scan'208";a="239003280"
Received: from mail-bn8nam12lp2174.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.174])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 10:18:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+Tgq8C0QxE7OSEv9TxrjoRfJriH16wLwadHkjrqylgBnBdfZWhmrJvK5JIC0+ipT+j/AH616KEoT5PVg9Niw6JiqvvzHKdAlDU4NX3XBQY1DrCONkdnvv0uaAXcpcwRN2uQYjOd7cFHWazVLbKihow58jFlB/z4IVhydmZpTc7rWhwmfeTHu9iBq7VauXmMIk8jOvq3v9+npGiecOR71RmgLhPl4m9oFLmq63dFyj06kjPFcOaHXaol7qgmc8+p6+lx7JdEtLpHPNLjjMHODVA+29AFjslk6iRGmbrRQ1F2l00LPQWwxazpgeaoLSTiFEb06xYh6HruOcqyPehNRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0P/5/2qZkRPA0r3+CUX92kk3TtVlVy7JyqkDT2JfA2c=;
 b=odX/KzgZDecANPEju9YB+HFsRUBIDn9OfA9xM2ZB8WTZyN1Ae8t3DvbYGuhGY88gXKf++Q2oyMp9zEP75cJtxFRfuPmI/NYdX03nWTcSbqW5M9MOqib73opOIdW99jf+l1HVuxptQIJn/TAFeQ8bat7N/rMs2Ul3Hm9Kyf2n0f9fbhlFgO9nPGivI8ZqRK7jFlxHXoaFAMbDyiH6pyfqp34L8OoYq7MxrHlwNYlOUck4MsnDlycGnBUI0+Kr/BWbvKBPy4nVuTxoGi0GOTF8kMMJKuLCmV+CzJNXKZpK5+Gkeper2UPbyaFpVGy6t4f0BY13Uq6pYA9SqXWVfeIbWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0P/5/2qZkRPA0r3+CUX92kk3TtVlVy7JyqkDT2JfA2c=;
 b=G8Ljcw/EY1cx8gZGLEpaBrohAhpXPt9VscbuxyteZL5jSWQ1pgXEqLJC1dAJQsaPXjH+2Byf8cNsPaE/qv4OPej30YF21ohcGr1zhWilitX2Hd6co6raGPhsXpPBoBizMRLyMvMqoRensIYc2+2AoGMqPyVdjj03HujlWkrTF78=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB4645.namprd04.prod.outlook.com (2603:10b6:a03:5a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Thu, 27 Feb
 2020 02:18:24 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.012; Thu, 27 Feb 2020
 02:18:24 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Carlos Eduardo de Paula <me@carlosedp.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV40hM46/VURUiUEOLVfw+FTteGg==
Date: Thu, 27 Feb 2020 02:18:24 +0000
Message-ID: <BYAPR04MB5816960E1675EDE1B0D2A0DAE7EB0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <CADnnUqcFbmspQ0fcggoyPTE4mckoGahHmaNdcJeC7GJD7C16uA@mail.gmail.com>
 <BYAPR04MB5816C1EADCEF92F1F1DE60E0E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqeWqL4+_ZTKBWW_wh=pqOn1DdgOr=P3iw4hJzEjYCxCeA@mail.gmail.com>
 <CADnnUqfQCc_-M0Ga-u7swRoZyxVRz08JMYxDCFZha8tA=MaJZw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [60.117.181.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c6b0089d-428d-4622-ed1d-08d7bb2b5314
x-ms-traffictypediagnostic: BYAPR04MB4645:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB464532B623A48D49F568E5F7E7EB0@BYAPR04MB4645.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(39860400002)(376002)(366004)(396003)(189003)(199004)(71200400001)(5660300002)(91956017)(55016002)(76116006)(316002)(33656002)(9686003)(66556008)(64756008)(7696005)(52536014)(4744005)(66446008)(8936002)(53546011)(81156014)(66476007)(6916009)(2906002)(86362001)(81166006)(478600001)(966005)(4326008)(8676002)(54906003)(66946007)(26005)(186003)(45080400002)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4645;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: STlkIkNCZuZKH3LpAoRtlMiQFgbvbGuI5H80hsSMYQcTZytIxBq0HSHY7wHnxb9nPMVG4/qRQKg63S7NRQxTFrgB+NaajwKDmiJnQlADHtI8OE5otO35zRgSTxs9rpEo546IDTnKqCtEWNfZb9LZyLclgNdvG7Wg9nAciCWQqHx0C+zTDcLrgjsqOL8CVFFJMfwUpgl7/R1XqhEgSLwQb/uyat/v0yasV1xLc2z7stmjVYrJR6NE858+Q3Le03p1EnPnHM1vxbPL3hIt6SwB9FyJ9DldI0ImnC0QY9KykdxwmUiNCJUa1FJ/hzkwecJn5ltraC00YX+dbHkEuTCmbh7enq4BPE3UgZ4Qx8/NwSEwVWxdcoCRBcDticpJJuqWA+jmobTpXaat64lFJsFNWPO+pKUuNHfMiGhZbZwifDplnf58dvnQTf/y5H71qwF/ssBId+R57akF5ySSEsNr79ZKSiBi6Kkw6jUl8iornmprtJxm9hL3IWhbcVWAiL3THdlGFVF+mtNhaLVDhKgi+w==
x-ms-exchange-antispam-messagedata: WqyLVmGYf7tE8pDafCMnqzUoFhV7+7lZN1I0z+BFh+M4yMJuRwCgF1XZqNieDsLjlA/7dDSnIdz8vQuO+lCYT4hjRn6nSFMbM/YDaZc8L5EexQLIJEVNnov9r4mrggwPVIvdGXn+9KStPWJi/pTVsw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6b0089d-428d-4622-ed1d-08d7bb2b5314
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 02:18:24.6673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2vGPIRT30UgYnJymhDc2r6enNEjcjFybGqom4Uu/pVMHRs5fcJqgC9+r1lCkk13ZGpf+dkPkCZUR9epBwVVPKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4645
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_181830_833861_769EE65F 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/02/27 6:32, Carlos Eduardo de Paula wrote:=0A=
>>>=0A=
>>>>=0A=
>>>> Thanks.=0A=
>>>>=0A=
>>>=0A=
>>>=0A=
>>> --=0A=
>>> Damien Le Moal=0A=
>>> Western Digital Research=0A=
>>=0A=
> =0A=
> I've integrated all required changes into a buildroot fork from your=0A=
> repo where it's possible to build the complete image (Kernel + Patches=0A=
> + Busybox iniramfs) in a single place and there is no need to place=0A=
> the toolchain outside, build the kernel and etc.=0A=
> =0A=
> The changes are in https://github.com/carlosedp/riscv64-nommu-buildroot.=
=0A=
> =0A=
> @Damien Le Moal I can send you a PR if you want.=0A=
=0A=
Yes, please do ! I need to prepare a v2 of the patchset. I can integrate th=
e v2=0A=
patches with your fixes for everybody to test.=0A=
=0A=
Thanks !=0A=
=0A=
> =0A=
> Carlos=0A=
> =0A=
> --=0A=
> ________________________________________=0A=
> Carlos Eduardo de Paula=0A=
> me@carlosedp.com=0A=
> http://carlosedp.com=0A=
> http://twitter.com/carlosedp=0A=
> Linkedin=0A=
> ________________________________________=0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

