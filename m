Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BB617DD50
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 11:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hyzU+BLSMC7MVZO7z5hQ4OSBFTbSO6WIsug6ED0l3M0=; b=anGSKuPUH0wSh/1XhGlQDXshq
	9iylLE7IqzsP/L2g9injgvNseREu3Qe6ojiJ4yQhFF/5HcYSA2k+ds+TW0obOuZcsuV6OqPBWRXWV
	YRC/aNDsOesbhGK+HMsMaInvunbaXsB3xznpKZlMyeVCsYF1QiLGJKD8znjAxk34OXS7XbEka8BEQ
	bIf2vrFBSgo7xOgP1HzUYJF6/odTL4Jhl9PGEjw2T/84xVH1snu/R90bzSOq5gzRk0B3HQjmo3Cwq
	KjetN/y2Z1NNxUTOH3/9S869zY2ChqKQwadacUylz4K1LawP561y0XdwMHH7A1q44j5khuvLPSw75
	2kmKo4jKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBFa2-00034y-AO; Mon, 09 Mar 2020 10:24:14 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBFZy-000349-Iv
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 10:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583749451; x=1615285451;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Lg19x9aKHv9k3W90Uad+/9F/36b23WJTpSWPAo2xdrc=;
 b=GWr3gAg0o0kfrv2nn+0Ye4yQxp5fa1G4u5Yj5MLrpAFs1LthDFikKDDF
 5jEjAXeXINQvQo6KBzAEDUdBWdU7W0IgqelPwqaY00u+BUHPnacaFP8xK
 jFicTD/RzwxZoPyhgSnqbjhns5+QF7VsILzMuXjxy+R/TJIA5l6NMQowu
 pWdUp2zopP5AampXjUIXW0l1DGQCF8X0IGL3+McAwr3EZvNUJAWkzaYuD
 YFKHl8f5ITxQ+ZksGujPMgyT8WC190M0MfEfTxPSXA4E1xJhCTNHMrLCJ
 Ya5QVVZ0FuRTiRNkOLqTTRHA9eFD2dYVDybZZuemWrL+EoNK68vWVqO5h A==;
IronPort-SDR: dUHK008LvMLsFORnP733+Ssn2Ln9LF4v/49SQc58eiNJyTzRr3XeRJ/R99IJnQ277TsrKRr5rk
 11Vy9GdtAYwNTrjZJk7woIXilthcx+jGDsZJGMkeEMSWB1zfwZyWBgTE34/hiM5U2VIGkv875N
 XsKF8cRyKq2m5fPNtyzida6Oh3tSfxWW4MH5cVh3cS4Khmhu+v9uP4i6OPlEFDa0NhFohfMHKa
 F3jrd0i0iU6/GeSHqdpKZMPU8AYYIQMBdetnvasGg0JurUg668ziOiV0Blg/vasGQ4jHMNHJUR
 M/M=
X-IronPort-AV: E=Sophos;i="5.70,532,1574092800"; d="scan'208";a="132429350"
Received: from mail-bn8nam11lp2172.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.172])
 by ob1.hgst.iphmx.com with ESMTP; 09 Mar 2020 18:24:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kGXnxYPzUBckc5kF9UPlBSKmJI5nxL8bV8abd0kirEStKHCCIC3Snk1T1nbNrwgKdv7PjgxW1IzMqOkEzbfe+KV8+u7zIpF03YH7EC1mWu5Q4pDfPwM+2aOOFZKvutyzw9GLnhdDfknTwz2WEmD19B6OTIeKRXvkTKRovkHvLxDHXxeVuQmI7FS/e+fC9sLOWAMK7hlPSyS6wfbA5RIIOtxf9ZVsLwmIuN6xCPcQyjvIFKbmqa0U3kCi5XcsRzpOg5RY38+O7r5g6KOEohNA2eXT5otH5VH8gztC7CfmFrLMNFaPMhxsnrsBckjq8beMizugKWmLMOJG2bzTHmWr3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hyzU+BLSMC7MVZO7z5hQ4OSBFTbSO6WIsug6ED0l3M0=;
 b=LsEiQ7aEPyxKhs9dxZA9c/pFMxA4fwxHx25UZrwRTfg7EZcnHWkQbLpCAwF0rFzZnSrdgI45ZlwpKeEqHyNUZQGmNBzQSYiznsLMDRdo8rWx0FNRyHXifBMeozIWd14hVGoCTwSuiSmet9yjemUEOw2pk5r5dLcOH11Lzvnpj5fmIPRM8tDOeap0WWsNeyo0Com/Ku7U8dkDdbJzKPJWcyTXwsjc60/dPM4egU/lnx28whj9Wy3Ey9lnI+GQNB1UT+fkBklvbDtcEcCajHR5LclLvsJ50ipJQJ7zA+XLaChB/V7RIEnTCctG1Y4z73pQorkG8NhuV7LJMnxk4G5miA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hyzU+BLSMC7MVZO7z5hQ4OSBFTbSO6WIsug6ED0l3M0=;
 b=eNfjGMbQu9Fwj/alL406ULhe0cAGGNLAFJy4GuVz2kVY4ezrPrxobQsW6CmVIuqS6ea/tsbr/X+yfnDnZ81m9NFqoAZAslANziUORdXnxWUaX5VZ4xzsoreJ4pfdZQK/uUXjJEado5P5StFYPeiiZLkyiXVtqsqfY/2Ihz6mqOo=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6944.namprd04.prod.outlook.com (2603:10b6:208:1ed::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Mon, 9 Mar
 2020 10:24:05 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 10:24:05 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Andreas Schwab <schwab@suse.de>
Subject: RE: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
Thread-Topic: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
Thread-Index: AQHVo5NfR7JNI4Hx2ku+Z33hWlX+RahArzFlgAADBuA=
Date: Mon, 9 Mar 2020 10:24:05 +0000
Message-ID: <MN2PR04MB60611C6CE40C024E336C8ADC8DFE0@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20191125132147.97111-1-anup.patel@wdc.com>
 <20191125132147.97111-2-anup.patel@wdc.com> <mvmh7yx4z2u.fsf@suse.de>
In-Reply-To: <mvmh7yx4z2u.fsf@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [106.51.22.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6e9592fc-5b00-4963-8fd8-08d7c413feb3
x-ms-traffictypediagnostic: MN2PR04MB6944:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB694448FB7D781B9332A4D6D68DFE0@MN2PR04MB6944.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(189003)(199004)(55016002)(4744005)(478600001)(5660300002)(316002)(52536014)(55236004)(53546011)(71200400001)(76116006)(66476007)(33656002)(86362001)(66556008)(54906003)(6506007)(66946007)(64756008)(66446008)(9686003)(2906002)(186003)(7696005)(6916009)(4326008)(26005)(81156014)(8676002)(8936002)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6944;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 77zq14nN2+dtAQSWVvMOkvNGdMbY3XpiM3255k2JDZ8jJI4/HSlxGqcOJDIftvzNQAP1o4UKAyfkjdYlkAmkzkhKFAxgNr50K8/LWpdoCx4HxQ8UJd3k7lb2n1y+AGbdDTeewtY1Vt8nnhy/3D6o08Qm3lcbKWG4S51D+NqP/rcDpFrdFnGD0R7pBCpRR2+dr0UaiGeNonzo3rsdl5Ol+bqeLBYUmMHeBqPE9UpSh+2AVydcTCnrcD0Yl+DBHRT47LEaYdS4nd5uepXnhqBumSgQAQ3xaFWtoui+WKt92Aa432M0R13MtcXVtkawwvezT+ueDkwUDv/NfiGvg9GuAs7zzU0FzSYUfTsL57JRmuXQ/vTjnP4D7USEytgCaBmFsSxYrnBvNTWH5gsN7jIGLPfBWWWE+f5BNnKK31HMvDUbH4XxO9aj3NLg42S7uqxM
x-ms-exchange-antispam-messagedata: YRGKQJMDMzK55E5d6uAPNq7AQdPX7ff3VjLnAytHETZwqF/z6NtIx6uL8M2fZHaj/+lbE73SzKcEe/YJ7oSwclDYMtaCxs2XCOr1cEpsR+G3oGbh7/0CoxtmQAtB1rOlBgtKtmpwSr7MXrsl9FUc6g==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e9592fc-5b00-4963-8fd8-08d7c413feb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 10:24:05.1808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kQ+PvqGVjXiNSUyFWwMA+EteIR1+S0Ew5EAomiLao+6CZ5le4HckLzoxS6F/3XVUzjNMpB9FTzowzrEdkKipdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_032410_700061_BEFEBD72 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.22.61 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Andreas Schwab <schwab@suse.de>
> Sent: 09 March 2020 15:42
> To: Anup Patel <Anup.Patel@wdc.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>; Paul Walmsley
> <paul.walmsley@sifive.com>; Albert Ou <aou@eecs.berkeley.edu>; Atish
> Patra <Atish.Patra@wdc.com>; Alistair Francis <Alistair.Francis@wdc.com>;
> Christoph Hellwig <hch@lst.de>; Anup Patel <anup@brainfault.org>; linux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
>=20
> WARNING: unmet direct dependencies detected for DRM_VIRTIO_GPU
>   Depends on [m]: HAS_IOMEM [=3Dy] && DRM [=3Dm] && VIRTIO [=3Dy] && MMU
> [=3Dy]
>   Selected by [y]:
>   - SOC_VIRT [=3Dy]
>=20
> WARNING: unmet direct dependencies detected for NET_9P_VIRTIO
>   Depends on [m]: NET [=3Dy] && NET_9P [=3Dm] && VIRTIO [=3Dy]
>   Selected by [y]:
>   - SOC_VIRT [=3Dy]

We don't see this warning with rv32_defconfig and defconfig.

Perhaps selecting DRM and NET_9P from SOC_VIRT will help. Can you
try and send patch ?

Regards,
Anup

