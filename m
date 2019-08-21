Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB82D9816A
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 19:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4Vo9ons/Vli0xLFNblUJKiJzIe3P2gPyfPOm6srxi4=; b=Y5ZnPxl/jeCxm2
	Tc7tQq1XredU+xS7uzAhl9pGm7H50Ys/ug3bGi7/dmsOm7+QdsrKuvlvPdj9KDhk0k9fqS46fJk2F
	PI4ibjccqjODNIEH+EKabxUAsBlNdBAWQMVDEBrsqu0dU+yZkhzMwSiXE4Si0RJxzSvuSDN+VbkQi
	Wmdz4E8EwX+psPEDjTvKoh/ikhH+5MJ1BfI3jjt9JgFJ/or3Req4TxXXs3vLmj1uXxaeRp1lh1Q9V
	/uKvApvODEpzAHj3D7i8ymDC0cV0bDINWgfsLO0lrLRGz98mRYyk87cdR6ME4EyzEkxoMzvFHxoj9
	Iv0QN0JoKM4NsZsszN9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0UXP-0003iF-PS; Wed, 21 Aug 2019 17:36:47 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0UXM-0003hV-7c
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 17:36:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566409004; x=1597945004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=B+0NsIVRJ2doDRYMsxNuGKhsZan7npRyH3nPkIOHjTc=;
 b=eNz9goSMVk64Xq9fNRssLokIbmXhAjmDOrZLJcxJ8TkYvGgqFhcmwEPT
 yvJZBAbcbcf4tLTztfSXAIGyHD0zxJirGOrOOWvsMtv7ryngxN0kMmvV7
 WVlJey3q3DLRcL94jSexL1ZP++nBHhClvwiKxek60DucQg59ogiaK6h7U
 UGfGTiL4f/aY3LNC1Oy5E4MxLuS8oEVyOZZGfwbeAaRnsQe+IbK+QpN2u
 N+M1FpRDOlWOE0SpF5UZZwARkWE7HaKgyhLywjQwO++TCCt2KX4oxLlPP
 ZtAeetFv/KrdpJnh/G2mp5UTAXox10dyUofwyg7dpLlJfi0M+78i/CJE6 g==;
IronPort-SDR: JW2giqcwh7gMKYkXGRkG+iYD4dHicyUBti1quWMxRTDzzLh8lcaQ5590uFSiOa2xfeTSOsnu1A
 qyx62ym6IiKriRNk2dAl7XywifrIqJvfZmigqD1RuvPDqiKoLHCNFPeHDCb9gOVxct8/Z75w42
 ovhV5YG/nWO5CKcjd02SMsyfTXMpENiRxzAIjWMAXl1wUDfdugY/6am9AnuVwPw6TK5SlOSV8Q
 +sDQW+71Wo3gR8gz2GZhtHTmzLMVfMHRGE2q+HDAleyXy8ydISaUOhs3k234cbPM0vVnz+Ba0Y
 1WY=
X-IronPort-AV: E=Sophos;i="5.64,412,1559491200"; d="scan'208";a="117952154"
Received: from mail-sn1nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.56])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 01:36:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=adFkrXdZKpwOwQaLVueRHc45kpimiMUkZVCuarcKX68GZ/ivurt7Egum10mMOQT2tyItGnF5Jx547Cb8bZJfPST5+RVQf/qhD1CGInVi2YDjgiUYIO4PR6VYHlFVkr2agicqPEn3YNxbs7EO1WQdgOnMtL9UAjcEYauun2Sr3AWxE52S70BgO1oVOHkQN4U87T8Jl/YVjE18OWnI6RgJhrYnXYyNZ6V0Yo5Qgva8F8CA8GjOSru5+LdUW9mSaJ1fE1kDDb5ehpm4NvfEbfaCJN3q8A6BfTOPKK3VoonySAqj8hE0Mir0b+ngDVrFwZbOYlDyilXRwHEPJFePZeD77w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+0NsIVRJ2doDRYMsxNuGKhsZan7npRyH3nPkIOHjTc=;
 b=V6Ay0L+704ETIvnaPpjKPKeEc9Vy7HBuYU/ehbUFPOcx0syoHAEC4PfkSWsvpLZ72GGEaw6aKiJ7rCVh0a1LIPnnztnGvnP3R0HU6oq6Bu8gKdgl6h2WR7HEaTVlrGHgWrxDsTUO9bX0YMo7F1KTAZL13yOvzF+n4wVlgpzFP09sfP0HcM919AIVJW1yXIwWy2mWREm9IK5ZptYH1isjViUp8WtcfvVFoB+LcKeGev8QGuj7HWn5oi47xzuQOBBoiRpDRqrCFohy48KVG27Qwt+lzg6LjEZUIc/wGpR2V/A+MAfZHrY/X2kKSul59X7XyLzaqAGNcaAUck5ZFMkI4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+0NsIVRJ2doDRYMsxNuGKhsZan7npRyH3nPkIOHjTc=;
 b=lltjjhyPpWQtvh7IMLM/a/XzrTJWmzX3qyzq3mOmb4I1MG79wcOq403YxE1kt0TfiKakkTos1VRZuaza3xezn8/ZGhdKOX1qEjdux4dge8wNIMafbpQ+d0jgVAIuEYJa4/tqAppZP+9+YxiAYDEFEGyeeV9fnp5LPgHkG6aBcyw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5575.namprd04.prod.outlook.com (20.178.232.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 17:36:42 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 17:36:42 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Topic: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Index: AQHVVvDfUBJCIAOoL0y7jXfLdcYugacFsGAAgAAvuoA=
Date: Wed, 21 Aug 2019 17:36:41 +0000
Message-ID: <fc023b76c2d7685c067660d298613379c95b27e3.camel@wdc.com>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <20190821144552.GB4925@infradead.org>
In-Reply-To: <20190821144552.GB4925@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 164c4931-1993-4450-0c7e-08d7265e2126
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5575; 
x-ms-traffictypediagnostic: BYAPR04MB5575:
x-microsoft-antispam-prvs: <BYAPR04MB55752AC02FD0DFFA43457819FAAA0@BYAPR04MB5575.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(199004)(189003)(36756003)(476003)(66066001)(3846002)(25786009)(186003)(6486002)(6916009)(1730700003)(256004)(11346002)(6506007)(2616005)(2351001)(81156014)(86362001)(8676002)(446003)(53936002)(71200400001)(486006)(81166006)(478600001)(102836004)(4326008)(316002)(2906002)(26005)(71190400001)(66556008)(6512007)(305945005)(8936002)(4744005)(7736002)(6116002)(6246003)(99286004)(76176011)(14454004)(76116006)(66946007)(5640700003)(66446008)(64756008)(66476007)(54906003)(118296001)(6436002)(229853002)(2501003)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5575;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8DzVnHzqhdzLs+q4oHnRFj+A9teR1HXgCmhHl1BivXOjCi0DI7FJctkuMXezbZiztzBfkK04lqTgh/TVv4Z0kQ7UzqyRVxGW5DZBKET9JPMkJdxkNVKXXX89uLbwt6486AbEu7cN1X8tudxtC3IYmuZX5jKMntztbkdUMe75bG3sO3xumak4ouhY0ay+lOPFln/h+bT3X3apIbXCfEpDje/JmnX+yReAf8IDFOCp8oZVsM0WmU43IMxWjR3gxdCoWRQyWxhgr91XQaTS5VLvuH6B+1Xt+WSUkx3aENRUyETKOiu/GI/Kr/izn3XM8E9AyLFcaUKrsejaTLRcYfg2fke0Ot5DEh3kyqCHEh6Vk2v9coIZnlio1hPcIaCL2OoxlBn8PZ3//MDG+tgz0tcjNgnwrVZudgGKb3PdLIrM6os=
x-ms-exchange-transport-forked: True
Content-ID: <446A4B7D7611124C9F33A40FA32D4225@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 164c4931-1993-4450-0c7e-08d7265e2126
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 17:36:41.9748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jqcqpCiYyfOAnIyfXzgFgR9Jw8PxFfoyz7LWx26tuCVrhnuSRV6rHHXooNVeGlDG4pTMzM+Mgprrny5L0Xvogw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5575
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_103644_315505_E1D554E9 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-08-21 at 07:45 -0700, hch@infradead.org wrote:
> Btw, for the next version it also might make sense to do one
> optimization at a time.  E.g. the empty cpumask one as the
> first patch, the local cpu directly one next, and the threshold
> based full flush as a third.

ok sure. I will refactor my optimization patch and remove the base
patch(moving the functions from header to tlbflush.c) as you have
already sent it out.

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
