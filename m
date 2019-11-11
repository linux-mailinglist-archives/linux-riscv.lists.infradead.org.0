Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D825BF7642
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 15:21:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbNMfYOleH0rWsN+XOBpjFAxlFFjDTgMMVS8ZysMKT8=; b=CUAIc0CF/2aNwz
	yKTJwAvQR6fY9j0N1L4IB3MTSS+R98QGV8UeMP+ZHIu12WRMbG+/mbYMCqYn6DqM+0wMKLiXRUV76
	hvw0jjSiYIqYffq8qTN/RLoD5HOyUVwywhMyE1L4GPE+IxQBY00TNnNUIdjmowzYtdzRfm0XjAown
	WfgiLZh+BBepKq3GoH4/xqaIyFkbDYsdEd3LaW7O9h/XzHXAaeRr7j3kwl5rjwfQzYvyQgUC0Aggr
	ZmBAa3apGUr7LTBY3G6PPROTRQakAWLiVSk1lyegmGW5Pek9Wqqro5QlRJo+shuncoBE3LSfmQ4Bp
	V3gfSxgi0Jq776pTynTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAZI-00008X-I9; Mon, 11 Nov 2019 14:21:24 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAZF-00007n-JV
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 14:21:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1573482081; x=1605018081;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H9zX0Z03m1/s45FOzq/NRRoefdvEnMBmZj3HEXgbN2Q=;
 b=SlyXYX6JBaKUP0eQLwuUNcUacTbQ/NWkrDRdJt0Fz9Fo94GhpFGuwtwl
 yD4bxOhWJmdi0CVrltluIyW5IAPbWQlBDdsls45T5HjbTPhWqyh72pYW+
 2VK798ndM8bRT6efL9vJjSudQxnAh831Vf2kLSs/CPjqC6YDaB3x3adXO
 9eDKs8Cc2hHx4ZPzwIye5rFVJCwrI4e1ocGitVQasgWBxMFzLhRoYddST
 tCycJUqHadA1NUTXnn4AiGMUBZDS76daWVs9s2qHBCRoZHT0Mfrxzd0uZ
 kH/khPa+Jg2qZkIRVu2IDyGWyHM2UlDvhRYkn3QmZ+OV7C31abTB2z02K A==;
IronPort-SDR: xNKDda+GjchRMYRybDIrsUQGU4PVGS05hCXvZL3CRwPcN8o0omyCZ6dE/k30IivuqYH7h3fA+j
 J0fIGucO9gVC87o/U5v2Qhho4IXNGjiq3HT+150R7z16Zy0cS76BjzxKQdk2Pi/jBEWqbYxIct
 2M5MLqdS4MjZJSkSqoV7ghvuhM13ptS5UhY/fAMbQuqNAOcCUnE1Vk0SoOMeOqFIhRxK/m5aIb
 K80wr4ln0ed1ZasEznF/Pcv1QTrUDjltM3mdycg2KUyoD3TwrM1x3Wr9cqR7j5BQHYpHFdBVCs
 QBE=
X-IronPort-AV: E=Sophos;i="5.68,293,1569254400"; d="scan'208";a="124272872"
Received: from mail-bn3nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.56])
 by ob1.hgst.iphmx.com with ESMTP; 11 Nov 2019 22:21:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ba0VdEZefxUcjfbEQ51Z2HJvFxFOpV6dRIj4s4/d1ZRpne71j4Rzk7BPLkDPHVsBAU8QyrXzPFgVDMIjfQYBDeLXktbUXowxtKWBJ8iGEbAgBj44PUeJlEC2GVTFC9z1nkQDGdZM3shdOxsljsxtjssFT/fNhf0EjmsDb/Nn9E81q0yfCH3RO0+0zQdyN8SSUBz0XDqBjdRLzBB6vcc3zy7poYKGn3qJ2KRY1Sfr9qRx9z8NoDWdg0Z2wWHd9PmQ+oqYJtNfKb8+tTGgBhWvTCdX5OZsQrCRHtnIXe4pO4Db0t+4/0fjkW+MnyhtyZxXYgVoNgYeGpgcuco5XPfU8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LG77yiC/4u7GNqYrkuJiaeYUIHkbzkmZtGiXbOOzqOY=;
 b=gaP52lpejkKxPfK3trAd10NBpIPvJNXNeTw5bx/VB7ktgnq2FEiHKVdtrCXBYkvZagLTLZO5tuSqFjJr8DtdoCIhahL7+tmvXIYU8u8WH20mlRhqw8U++wEqyMv8HXtOl635pZrjHetKjA3wEzw/ZOYA37EC4dR28h0V5WxBXdWvkmlhFuhyqGt77GTsAj2FhnbuYWsPyT1ReFRdQGih0ol42k4qZQA15IFuxB+BX8FoILoisurkCd7Ji/HYvOKOFBGatHAN3ACxvMxl9MDyTdgpUA/EOuvEkIGvoBK+pogYEz/Hc4nKjmn5urKDordIbCd8Z4W5yfsN40QWbkTgeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LG77yiC/4u7GNqYrkuJiaeYUIHkbzkmZtGiXbOOzqOY=;
 b=0JCD0jWR9Wr0fkXDl03rjbAvVqqovF/CSF104tiqB8z49PGklbKcg0H1okWHGWf7GItA2pYaB7eOTvDgtBLJgQdq04UhbLaXFTzvifdqdn149vf8ey7LXfJaCe8QEuzOJctT/FhHdXDSfqzKqkasys8RkoK4yrrJJtUf24gMtzc=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6207.namprd04.prod.outlook.com (20.178.247.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Mon, 11 Nov 2019 14:21:17 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::ac5b:8360:b7a7:f8fd]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::ac5b:8360:b7a7:f8fd%6]) with mapi id 15.20.2430.023; Mon, 11 Nov 2019
 14:21:17 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Andreas Schwab <schwab@suse.de>
Subject: RE: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
Thread-Topic: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
Thread-Index: AQHVmJTPyH8iXg4fS0aBJhwN0J4ATaeGAc8PgAADVaA=
Date: Mon, 11 Nov 2019 14:21:17 +0000
Message-ID: <MN2PR04MB60616625B9BEFF634FA680728D740@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20191111133421.14390-1-anup.patel@wdc.com>
 <mvmv9rqcxpq.fsf@suse.de>
In-Reply-To: <mvmv9rqcxpq.fsf@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [49.207.51.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fa30377c-904e-4af0-4254-08d766b26adb
x-ms-traffictypediagnostic: MN2PR04MB6207:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB62076D6611D57A95651455358D740@MN2PR04MB6207.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(199004)(189003)(13464003)(54906003)(478600001)(74316002)(486006)(64756008)(66446008)(66946007)(76116006)(6116002)(3846002)(4326008)(55016002)(9686003)(66556008)(66476007)(6246003)(6436002)(6916009)(33656002)(316002)(86362001)(14454004)(11346002)(102836004)(7736002)(305945005)(81156014)(2906002)(81166006)(52536014)(26005)(76176011)(71200400001)(71190400001)(53546011)(446003)(6506007)(4744005)(66066001)(5660300002)(55236004)(186003)(8676002)(99286004)(8936002)(25786009)(476003)(256004)(7696005)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6207;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h/rHSEA0DEeUxxiXF4WUbfFgMFD80dJrXwPzI/tupQXPAcJy+ZjzIQmdHCGNvFjYQxzcMy/d645eJzovg+41sXn/wLcaQ/QcfR7cxnkiqDHBjm0U/O3hFmDvRFisT2dY9ZebMshV5BuJev4k2QQtJOMe70Wja5JPdEHnD2uua3YQfZssXq+N1fXtBBa+0CLucTiu3zaKWlw4HFnRjO9+x9XYM0gEpmx9pBDJcZ1cjowqn/CaU/42aVfyd3z4mFSB7BCcP+UvsJNrjX+EY8Y1L9puR3mVAuShmV8+3Onb7mEBEUQpt8sEqqZqb4BFU5ljHM8mCIYAUXpdqFUt+D3giq8CvD8tty50y7JW6RX7HmwYnTR/areZtuW2DyS/PnNJsdZh0yZ9f+wjLBjZF8OhS6tZ3mNjDpgBFoO2CwpOUQ6c5kaWHS7UN5ujjrwmmo6M
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa30377c-904e-4af0-4254-08d766b26adb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 14:21:17.8021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HiVAtZZQIuUpc3PBxLSEiGxc7dGk5SqquTS8J79zH61gOojOm7YbP/4k+xq//SQgf991YNPPv/VwMbfjrvOOrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_062121_687062_99AFD0D3 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Andreas Schwab <schwab@suse.de>
> Sent: Monday, November 11, 2019 7:38 PM
> To: Anup Patel <Anup.Patel@wdc.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>; Paul Walmsley
> <paul.walmsley@sifive.com>; Atish Patra <Atish.Patra@wdc.com>; Alistair
> Francis <Alistair.Francis@wdc.com>; Christoph Hellwig <hch@lst.de>; Anup
> Patel <anup@brainfault.org>; linux-riscv@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
> 
> On Nov 11 2019, Anup Patel wrote:
> 
> > We can use SYSCON reboot and poweroff drivers for the SiFive test
> > device found on QEMU virt machine and SiFive SOCs.
> 
> I don't see any syscon-reboot compatible in the device tree.

I have sent patch to QEMU as well for generating SYSCON DT nodes.

Regards,
Anup

> 
> Andreas.
> 
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de GPG Key fingerprint = 0196
> BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7 "And now for something
> completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
