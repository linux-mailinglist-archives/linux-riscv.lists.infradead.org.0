Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF2E1AD567
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Apr 2020 06:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=8N4hfmRrPA66DzsTukxmoLdJfRmkx/VUtOPfZsmikZg=; b=KCqYGnGgrX80vemcmajf4eIqS
	Hswm75AkwwvFKZuFqOgacp0JG7vuwQcJP6XlkwzShzP8skFOe9wxD6UAPeBKv941X4amB5D+Is/bE
	PDACs6h+3dm79oi52Ymm107SEN3bo2kUX4X1qKZWGya1LF+yurZDjTeVQKEVGIqIFLyfxumucP/jy
	BrMJINXrpuAfHmT43reF4B4RyXSnKETA7Ct6agDQ6+zBsO6EvuihqU1dg3zmR68ufByOKxwlRMMUu
	29tosoway9O4NGsQw9g4V7X74YMIoSVqqb97oTcF0yLolyxgw9YUlUoYJSIkQy8qRmcIsFWZdegRA
	NxWWsWAjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPJ2d-0003JU-Sq; Fri, 17 Apr 2020 04:55:51 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPJ2Z-0003In-PS
 for linux-riscv@lists.infradead.org; Fri, 17 Apr 2020 04:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587099349; x=1618635349;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=h8fBWWTgBwogMEHTgOplxTwWlpKr/XI1j4O5TCbnzyI=;
 b=D/fojEq4NDBWkFtCa9kfcn4vJRMDUdsgxDy/ywcC7DMXDu2ccEh7Z42K
 3I1/HstTSFfJNWbYagIs3C3wWE380ZXowVGIu6MmChbHSNTWgQi78NaQ4
 sCvsrhSHOaBALTiZEtSTUpHSUwLTS5uAiqUZazlAqASUHonpZOUAE4m5r
 ZAILUjOxazopphGU4ptralzBVZTuFnlstnQjoQgAXFqmEth0DeLf0Q5fM
 pXAiVaGC3yWospXvJkejHenSJZWicejx5OMPCxU77ZOdJ38/e7dT6cFah
 YCNlLX3Wg+yRIMIkfJe4A7pU4P8FqO5WnYFS1DaWVGmp3iAUdXo7IRckk g==;
IronPort-SDR: FnQ7hXlg52/OsFgm4Ra66G5U35XdnM36GST/myrEvZxpPL+xgRN1I7Wl1+l1e9+WR6W5QxcyH+
 jBs4L6cjAXb/InZPxvII1z3j8K5EQ4sN4pOdFTbuaupwdnVYw+ukdDQpDDYl+22Y4ODj/Rmena
 QOyyOspcjM1d8DzoTjMqB5uEjS2ukYvh6jF524mZs/z5tvtX8TlA8lZGyhMbzJzg5AXKjI5C5b
 n813FZoANXU6p08oW4spwq51pXJZL+sf+QuuuKq5+UFrA2np4ZngD0FyHfC/Y7z3LZILyRT9q+
 IYY=
X-IronPort-AV: E=Sophos;i="5.72,393,1580745600"; d="scan'208";a="237964671"
Received: from mail-dm6nam12lp2171.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.171])
 by ob1.hgst.iphmx.com with ESMTP; 17 Apr 2020 12:55:46 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SEucjayUtjuX/Mnx0RPV6uVUIZPKThUVGd/NZrf5Ndkw+z+cLMYQR8IQFYIoMK6Untj5pVbG4XjG+No29gIyWIB0BH/lwVN0JIB2dXF799gaglP0OUf53iP1A7VwsxSSb0amfvs1225IhNfrhbfsHg6aoVGwouo7J0VwwmTVfHE2IAVBnlZv4Yk4IkYB1N/HRsElCxJto3BWnFcWkWq2dcuczPPBoWzSd7I7+lH/8x1GlSrpwLi+3fak/kvns9CESURMOr7bml5BqjCKkjD4E4N7nHaUPgSY3w4YbR/mi5zKTgt5O1d0Pqzdos5k5F/H4znwsNSOsRXgMjmjzbvsnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8N4hfmRrPA66DzsTukxmoLdJfRmkx/VUtOPfZsmikZg=;
 b=UalmMVTNb7A+46IVAbPdKo4TBrtGkf1JlGAgG69urVJeU1mbppPAwVYOTd7JV/Fy58To0Oc2m+y/3PqhiBXSJ2gSaFK8FY+r4wOj4Digu8nV6W6PenvgoArfe+OK4jw4fFglIaHyPueEFHwlGUJxbgDWHkbQHpSYlrZxqRBrhUDtAkH/Y7r4D3uJ8BWc9qnr2XQUnvu2BijHFU6z47ehEOBEyIUCOpRWwe1/7SMyU+xKGSddHq8TrYbWra7ofa70d2tfQvBsn1ekQrDk41h5HcXLwtnbzqdIUEW4UaVGz/DuNjaonsHPmVEGN1jRexFLj0HPFZN0ApYSQehn0xsaMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8N4hfmRrPA66DzsTukxmoLdJfRmkx/VUtOPfZsmikZg=;
 b=bPgcJqNY9ry/PmB6XnOCrkBnN7IiVs8ncfKB0bWYQINDwjy8UiNYUfPLeXjFrJR6TTOZGgW70cadjlY86kBwcp2DqF6XFTXVuJ6OmvIQxn3kV6Tj15IGrHsZbMScKmEzwp0JZ7RWlJxs09qYFmFKKq62iJ3py63LsFUHdOlNwGE=
Received: from BY5PR04MB6900.namprd04.prod.outlook.com (2603:10b6:a03:229::20)
 by BY5PR04MB7076.namprd04.prod.outlook.com (2603:10b6:a03:222::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Fri, 17 Apr
 2020 04:55:43 +0000
Received: from BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606]) by BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606%6]) with mapi id 15.20.2921.027; Fri, 17 Apr 2020
 04:55:43 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>
Subject: Re: More K210 Support
Thread-Topic: More K210 Support
Thread-Index: AQHWDcb76GCscyiYn0akBatA+Yggcg==
Date: Fri, 17 Apr 2020 04:55:43 +0000
Message-ID: <BY5PR04MB690073E4F2C6849EA8415A87E7D90@BY5PR04MB6900.namprd04.prod.outlook.com>
References: <20200408165802.167546-1-palmer@dabbelt.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2aa2d942-dece-4c69-3945-08d7e28b95bc
x-ms-traffictypediagnostic: BY5PR04MB7076:
x-microsoft-antispam-prvs: <BY5PR04MB70761A31F889F6C70C471C8EE7D90@BY5PR04MB7076.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0376ECF4DD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6900.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(366004)(39860400002)(136003)(346002)(376002)(396003)(316002)(33656002)(7696005)(55016002)(71200400001)(9686003)(8936002)(66476007)(186003)(66556008)(76116006)(81156014)(64756008)(66946007)(66446008)(86362001)(52536014)(110136005)(5660300002)(8676002)(7116003)(26005)(53546011)(6506007)(2906002)(478600001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NY+Ag8rfdXF2UsXBt/x8K/36CnKmh6Zdpa1k3TVWIUtuFxcGp3sYLk8pUqNTqNmvehgIqOcM9GOJbP5iL51mo+znfLVR+yTK2d1IHlg5u8LpbmeQp5SkkbVUTZZ6Z6eG4e1EJJVfeL2jqp13Vh8kU9hhkEoGh4RjWWbE0x5V6JnOHymBmfSDzE+GEN6wQYkkov1sN2ho+IEk95M1pUnQpRGlS/YTS1BvgWWmp507j/1t5f45YZ9fQv4EjdCEXHNrQ/rnInq413mRTqptz7tFjKk+IyuwHIKhxApDNeyHl1iGhMpjX2zqQZbSTBDwSuIt+HwaBm3TZ1e2nevgtpbz+fbCe+vJBZb0NBzywg9E6pzLXPqxW336PNTR5MPSyPTRS9viXAwXTgYxddOm0S8WMYR6bGCypN2D+cq+ho9BYh4XYxTypRXAdH82OsZfEfBI
x-ms-exchange-antispam-messagedata: fvbarNIzeEbfeCqEQk0B74hoAgP5PPpvdoZpaze3EIRNT2+ZScQZyhotW9GhlS356fafEYEw278ok3G0h1PoBdgKdnk/cQR04J1YP19rJWAwzNRPVXVQl5+OhOxB3J3HWTFS7YGg62LQ58Lft4KCaQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aa2d942-dece-4c69-3945-08d7e28b95bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2020 04:55:43.5372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TBurzCvrgOBPkoY/YL2o6EOhCKpaoU6fD6CrQl+NE9BmS1kQSH001Kq6ABxTgcK59Epc6AsdHgE1AhIhu5i2Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB7076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_215547_919835_D2B45BCF 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kernel-team@android.com" <kernel-team@android.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/04/09 1:58, Palmer Dabbelt wrote:=0A=
> * Builds a table of device trees, keyed by mvendorid/marchid/mimpid.  Thi=
s=0A=
>   allows multiple device trees to be built into the kernel.  I don't real=
ly=0A=
>   like maintaining the two lists (one in C and one in assembly) or having=
 that=0A=
>   function in the table, but it's the best I could come up with.=0A=
> * "handles" PMP traps by just skipping the PMP setup phase.=0A=
> =0A=
> I don't actually have a K210 so I can't test any of this.  I also couldn'=
t find=0A=
> the K210 identifiers listed anywhere online, so someone will have to dig =
them=0A=
> out of the board.=0A=
> =0A=
> I also didn't spend any time thinking through how we free these device tr=
ees,=0A=
> but given that .dtb.init.rodata already exists as a section I'm just gues=
sing=0A=
> that's were we're supposed to put them.=0A=
> =0A=
> =0A=
> =0A=
=0A=
(replying to your original post instead of my update since infradead does n=
ot=0A=
send me back my posts).=0A=
=0A=
Palmer, have you had a chance to review the updated patches I sent for the=
=0A=
builtin dtb ?=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

