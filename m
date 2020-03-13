Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EFD1840BC
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 07:03:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3walBZMtsMuImfJYoHGRfANXf1L7lmgZvKNGQhx5CFo=; b=jJyRsGeD1YfGcKZpSMxs1TKdA
	NMGy6JBzpdqnJnqOsehOwndxr86ZsHoHt3CM5F+IGIiaMu4+FMi7cHXiZp6bcPMr2TGb0EfbeSD9+
	+a2PWivNbV7r+ZeYMAYvC9mV/74Zt3smK7DT+apIqnb9WzC5UYdsBYX0z0/UMgosrKuvC8YOj80lF
	RewRpyt7arvJ04hUqvenTKH+jP2aUUz8FM9kIq+OSsKKkRruqmnsaIUy98IRI3Mlx/oKMZOP3Hv5e
	N3Jkzk6v2vRGAz9vMZTupAKuv/TdkxYzq/rt93RSGmIOHRw64V66F0oInbSouua/T7qu64hf7Qg2U
	E3n7F5i5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdQ7-0001aB-Ul; Fri, 13 Mar 2020 06:03:43 +0000
Received: from mail-dm6nam11on2066.outbound.protection.outlook.com
 ([40.107.223.66] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdQ3-0001Wb-M6
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 06:03:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mPiMu5RREhHdvBFtwJBY4OKp51ImdsWYdp6VRwgZubnevjN4ug2bUujZYYEYep0xaeHI7Zmo1h2bwzwUTQ6xBLGRbWUE7hR1JwPT/ua3njqEt57dUax82Uikk5+RDUfjN0xz0/BV//TOLMRc7NgI1absOeGIof+GXqCPaUQDNzMQq+IuDMNVyc1H6YFCBLpTNqxwVN3V4QMLJsE/2jTVQmDU5oR/2yAufNZrtBJybImd3H5CwjNIYfqKMyAaBzMcvAOUKKtPMDot9jjQm9DMRkfn/0ISlKCXjX/Knx2b2tbOV/lJ0X+/iZv+9sr2bW5s2iWv7l+z9sGjV1IHodyKaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3walBZMtsMuImfJYoHGRfANXf1L7lmgZvKNGQhx5CFo=;
 b=Tfh0GoT0HKSIZKlLNhxlkDDIngbx4QBokHCrrXFk8l7RwOaBOd4nRIG79tOBfZdNLTPEpfqdRZm25HO5cgCH57+tFDu0ByJDjlci1louJrl7cs8j/JI6HUC8DW7K98hrQ8LFZAaQWTPbQWASZ2RJTMwIV+33irCwLVYxyDiQJnSi3m834OpKeZBnf90aDQyqUB2IkgWqLgunauVi80m0rt7ch386IbcHAKMFQGU2eBls1l+Dw78YTv3boAHkSnltPK1UBirMaMdUMSOoAR3AOzEI4InA0TCFkPevuNN9lrlfg7oecXUh4Rq/Q6lgEsvBlKHvamk7cJmUbLCg++Vqrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3walBZMtsMuImfJYoHGRfANXf1L7lmgZvKNGQhx5CFo=;
 b=cwKDEo4l4PnMKx3Lqd/3vt51HKjBL7nX9kA01f9IuJs0pTv/ING0y62N5KXT6oN8NwK5MXSJNYj9x7MQbHaED0GkAmYvoIKNaZxaR5HRODZC1nDlLrh6eyhMazBl71azYaVMK0cNzIMXAB6kiTbWxTvkZLu42WC8AD8jMNc5mvQ=
Received: from MN2PR13MB3552.namprd13.prod.outlook.com (2603:10b6:208:16f::22)
 by MN2PR13MB2814.namprd13.prod.outlook.com (2603:10b6:208:f5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.9; Fri, 13 Mar
 2020 06:03:37 +0000
Received: from MN2PR13MB3552.namprd13.prod.outlook.com
 ([fe80::c8a2:5e5e:9769:6a8a]) by MN2PR13MB3552.namprd13.prod.outlook.com
 ([fe80::c8a2:5e5e:9769:6a8a%7]) with mapi id 15.20.2835.003; Fri, 13 Mar 2020
 06:03:37 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "palmer@dabbelt.com" <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>
Subject: RE: [PATCH v5 0/2] cacheinfo support to read no. of L2 cache ways
 enabled
Thread-Topic: [PATCH v5 0/2] cacheinfo support to read no. of L2 cache ways
 enabled
Thread-Index: AQHV56zMBsn2T2H8dE+TYqjF1YFIfKhGKqMw
Date: Fri, 13 Mar 2020 06:03:36 +0000
Message-ID: <MN2PR13MB3552ADB09621545F67A914E28CFA0@MN2PR13MB3552.namprd13.prod.outlook.com>
References: <1582175719-7401-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1582175719-7401-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [120.138.124.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9b5d3a46-20f6-4ea3-1efa-08d7c714452e
x-ms-traffictypediagnostic: MN2PR13MB2814:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR13MB28144008C5C122272CE1FF1E8CFA0@MN2PR13MB2814.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(366004)(39840400004)(396003)(199004)(8676002)(6636002)(19627235002)(7696005)(316002)(966005)(110136005)(186003)(44832011)(26005)(54906003)(52536014)(64756008)(66556008)(478600001)(9686003)(33656002)(55016002)(86362001)(6506007)(71200400001)(4326008)(53546011)(8936002)(81166006)(66946007)(66446008)(81156014)(76116006)(5660300002)(66476007)(107886003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR13MB2814;
 H:MN2PR13MB3552.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VbG4pyzsfDSEU79EQyzB+6obtAuS+MGzbFgMdmWKBTtulkvp5uI+vQwbMSldut+RMHZJO4SKH5t3n6udo8lEELSZ5IX71LIg6y9wvFSLL1tiuJhwHRs6JqqZumBX5Hh5QjJ4u76FGcPG4BCDe5+WC6ww+Pdmw2SzgteqrQX0kCkms4dUjmJhFfWU6/oNSHBCicibfXulh/SqgFSs4CmszY9kH3sxAL9l/lML6aZO+Pwztb/c1DI338Igb+y4RPSrNbgvVji7vSJ1IYfdDwaXNJqOzX+IMxrkedDjtnECzihE05HBUavS3BOuxgGfqCu3ar5ZZNvEgKHSYONcx/t42/E3vI3iQv2XsoJGt0AhvGSuPDVe6gnLBhpXE4sraWlr5PS+vNpxpg2HajTzdGHK8xhAbpqU14eA3WSdfvZxLMzSvNxmCjH8ioYDGahd4ZFL7+/rJx1SVVKA3z3i4+ipmzFYLSYMhtwXmrgpMfDqD9ifyvMFNkQroHZEXQDSdR1EPv8tbE19g4/BmTnp0DSGGw==
x-ms-exchange-antispam-messagedata: Zo2QwQCCR9JS5w4DXVtUpikww45zTV6v7DhBQ1rt0YQqzWK/nFxoIgnoM/+hxk+YEb/C0OBJ5cfgWebuYt1M5UyQYXXMTRwFdAt5hCRPblq3mI5m15xqJXjpfCqS0Q9DU+vLZ7VlhLZWiMKTBvi/uA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b5d3a46-20f6-4ea3-1efa-08d7c714452e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 06:03:36.8319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zAN4kTb6qhBGP9uOdfwmUqKmrGenAD1143LR7nEGLUC4lZO8sCr7KjQbEB3/WmSSlzCz2la8D8XPoSeVpFwjFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB2814
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_230340_050381_7B86D56F 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "bp@suse.de" <bp@suse.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Any comments or updates on this series?

- Yash

> -----Original Message-----
> From: Yash Shah <yash.shah@sifive.com>
> Sent: 20 February 2020 10:45
> To: palmer@dabbelt.com; Paul Walmsley ( Sifive)
> <paul.walmsley@sifive.com>
> Cc: aou@eecs.berkeley.edu; anup@brainfault.org;
> gregkh@linuxfoundation.org; alexios.zavras@intel.com; tglx@linutronix.de;
> bp@suse.de; linux-riscv@lists.infradead.org; linux-kernel@vger.kernel.org=
;
> Sachin Ghadi <sachin.ghadi@sifive.com>; Yash Shah
> <yash.shah@sifive.com>
> Subject: [PATCH v5 0/2] cacheinfo support to read no. of L2 cache ways
> enabled
>=20
> The patchset includes 2 patches. Patch 1 implements cache_get_priv_group
> which make use of a generic ops structure to return a private attribute g=
roup
> for custom cacheinfo. Patch 2 implements a private attribute named
> "number_of_ways_enabled" in the cacheinfo framework. Reading this
> attribute returns the number of L2 cache ways enabled at runtime,
>=20
> This patchset is based on Linux v5.6-rc2 and tested on HiFive Unleashed
> board.
>=20
> v5:
> - Since WayEnable is 8bits, mask out and return only the last 8 bit in
>   l2_largest_wayenabled()
> - Rebased on Linux v5.6-rc2
>=20
> v4:
> - Rename "sifive_l2_largest_wayenabled" to "l2_largest_wayenabled" and
>   make it a static function
>=20
> v3:
> - As per Anup Patel's suggestion[0], implement a new approach which uses
>   generic ops structure. Hence addition of patch 1 to this series and
>   corresponding changes to patch 2.
> - Dropped "riscv: dts: Add DT support for SiFive L2 cache controller"
>   patch since it is already merged
> - Rebased on Linux v5.5-rc6
>=20
> Changes in v2:
> - Rebase the series on v5.5-rc3
> - Remove the reserved-memory node from DT
>=20
> [0]: https://lore.kernel.org/linux-
> riscv/CAAhSdy0CXde5s_ya=3D4YvmA4UQ5f5gLU-
> Z_FaOr8LPni+s_615Q@mail.gmail.com/
>=20
> Yash Shah (2):
>   riscv: cacheinfo: Implement cache_get_priv_group with a generic ops
>     structure
>   riscv: Add support to determine no. of L2 cache way enabled
>=20
>  arch/riscv/include/asm/cacheinfo.h   | 15 ++++++++++++++
>  arch/riscv/kernel/cacheinfo.c        | 17 ++++++++++++++++
>  drivers/soc/sifive/sifive_l2_cache.c | 38
> ++++++++++++++++++++++++++++++++++++
>  3 files changed, 70 insertions(+)
>  create mode 100644 arch/riscv/include/asm/cacheinfo.h
>=20
> --
> 2.7.4


