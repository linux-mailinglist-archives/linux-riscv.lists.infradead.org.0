Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E66B2991
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 06:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0fJHGcJoZ1G8/AiDysRcH2kASfj3xvAWdwar6RhEi8=; b=BChqZIIAaCfNAz
	Md1bbAe1L/fo6MlKg83nJZHdAzUvyc8xpLe7NIly79OvfXk3l/iK/BTqgm+vRkG9k4+V9PeKWeom9
	iwg/9gpTWvwlO40uvzBzXzpzrZq6iGny2WUhoGR9W5r9PG1J3+U3nIlRJtbzTTMmi8UokXaSfO95T
	1bfOHIaeP8mz+HEhzhFGRQV7jkCtQ716YD71P7bmWKEKEtZdVmZ1p/2qC8tFQfpB+5r60Cs1hyzjg
	p1xL+U5p2FbHu3zqVBr93PqbfV11IXp7TlV2jBk1MkmX8MvZTlxbGVEvm63RrbA1fzumQXvi3sftb
	XZu0UayBk4KARarL9RWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8zKy-00005c-DZ; Sat, 14 Sep 2019 04:07:04 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8zKu-000059-9c
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 04:07:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1568434021; x=1599970021;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=NaGTZnCq2pcbYilAz5Zd6E3nLw6YZ0LWVEq7rUBhT9M=;
 b=KdPXWJbRzpUDltXXMGshmL7Ut0/lqbUpjXKJO9Rl11/zL6GGNLwsA0sj
 jgyzt3Z2XbhPQ8nS/hVoRQG5eATfifqGHvX3Cu9BE33dKTIdiK9ytB2Uj
 Q91hGnqLBz+zhCUhb9cntmOINnKm8IaaqRuovSL0HNo5J2zbpxC8gekpw
 iPYHUOfJ+5D+Ui7ZFAjYqrDWJEW4UYEG9PDZ7fZzocz2Sk/efnOBc9FYJ
 k0hwb7+xVcni48T6d9q6qzLCL9U1VS8fDlKJXeXvqXUQFiKFnpeYW+0jM
 H5rSp54my0H7kcOTdM1DK1LScXPS9G6/sgVfvsmz8WW3YT/rVxIqNZ0Tj A==;
IronPort-SDR: 0kHipnvHo6TZ4llYcwIJkEo0uCmQ5ytyK/wjggDFtw1tyJATOzpWNuJl6ftfRx2JyuDSElhQqG
 t99GLIKwIUNbsqIO48LFE2HblmNcnB6YXlu7l9szxuM2JNx0o8yGtnl/bCQTQd+c/jqY57sc+q
 PIeeJQwg7Z7CZ/o85m4tO70HurzBvjbJAn1ReFZP0ynDziQMO9M9pN5LvG8BeNxa5T8xwZiXEd
 jh5LqUYWY05pdsPX2c5ZEAGMYIa91yOLopNl9APGQkF0DsKxTKRKwyZ5AvQNUJ/bmCoa6v7nB9
 6Fs=
X-IronPort-AV: E=Sophos;i="5.64,503,1559491200"; d="scan'208";a="119804527"
Received: from mail-co1nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.54])
 by ob1.hgst.iphmx.com with ESMTP; 14 Sep 2019 12:06:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oIBpUT0j8oVSuJgMMXdSwI2ceCVGodqFXK8RUSTbf8JZ4bUw+fu6i0wMWo4tzcJQ5H+1LtEw3rM+MeYAvF0Kue+1j7OZvv3kDLlm/OCskMU1ToAjOavizC3XHLqnmEZMxXmEQmTL12emQZxVe64KaSEGeeROyzZqkhJPEhV6vZle5eYDv6P23VcjHMeCqUoNn7ory7LqZvPLFEJc/JBvznUuSEcM8rq3nQnDpsJLs3Pi3EcbTf9yO2iKlvVc30jrTk1HugZOQZ3Qx+vlmu+fZRI3eSGCkiDidw1ML6iqTrNiJSLR1HcPyHzPHXwtoVgSyYjOS7sfNVpHwZGIZ/KFSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NaGTZnCq2pcbYilAz5Zd6E3nLw6YZ0LWVEq7rUBhT9M=;
 b=EZXIDNpy071oqJlmbVB3ERyFdsv0K1cZD5GCxmP06n6SDtGxdExwU06atW4OjgQCSPJeksZ5WMLztmvTfKQvZHurKbN9lJR1GmeggfxMGiXGK8y+vU2XgFlCuoRM3nH7EC/TQuIb348ZD+GVildQ+0BdtAI3nwhtnqEMU8lORc7SZK92g0CWxHgHMaOiOI0g528jAPRDtMhxZrFprESwORAYkPEuxKFhX7CE64KuWOdccIeVe9qbEib9zhwhNK3NSqP7ilbvT1PgSwKcuF69aMKyCnCKxbLKUkWgiqFwk71phHKvslyVIG6Bz4smTfgnwfWElhVCqsQZw7yyPwYmrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NaGTZnCq2pcbYilAz5Zd6E3nLw6YZ0LWVEq7rUBhT9M=;
 b=vQ8AKJ2SONm5a/xnnMZsQfnDeTzfZIiRVoQ23T5MCaesr7Wm7OAN5JlCBQGBmbDw8aSRErSe5nDuthGkHMHpGzacGAkXNzYi2aGGqf1qJdLjvraXgubRxSj4fqhQf86ZojlUS32iAogJ/UtxxpjOn4zhkVNBmLSIF/ZiSxJGt9Y=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4357.namprd04.prod.outlook.com (20.176.252.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Sat, 14 Sep 2019 04:06:57 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2263.021; Sat, 14 Sep 2019
 04:06:56 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 0/4] Documentation: riscv: Image cleanups
Thread-Topic: [PATCH 0/4] Documentation: riscv: Image cleanups
Thread-Index: AQHVamlS6zKuFZvlGEe/gZIY1Tibg6cqjt0A
Date: Sat, 14 Sep 2019 04:06:56 +0000
Message-ID: <35cf744a10713a5621ddac3774cc269d259d6dca.camel@wdc.com>
References: <20190913192433.4316-1-palmer@sifive.com>
In-Reply-To: <20190913192433.4316-1-palmer@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [122.171.172.160]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b037128-677d-410e-df06-08d738c8fc0a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4357; 
x-ms-traffictypediagnostic: BYAPR04MB4357:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB43576C271ECDC78A3897E72CFAB20@BYAPR04MB4357.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01604FB62B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(396003)(376002)(366004)(39860400002)(189003)(199004)(7736002)(229853002)(305945005)(6436002)(6306002)(6486002)(6512007)(6246003)(53936002)(71190400001)(71200400001)(118296001)(5660300002)(76116006)(4744005)(36756003)(91956017)(486006)(86362001)(66476007)(64756008)(66446008)(66946007)(66556008)(476003)(2616005)(11346002)(446003)(6506007)(14454004)(25786009)(76176011)(966005)(99286004)(102836004)(26005)(186003)(2501003)(14444005)(256004)(3846002)(6116002)(316002)(2906002)(110136005)(81156014)(81166006)(8676002)(8936002)(66066001)(478600001)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4357;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BP3xsbJ/GBiTvtFYOX8+00Zkp/a6dmQx7vRL+cKKI670Feefv3YbbH2CLWLLptuukVTrGvJPoMxzBbZKa2FT2bQYFIRo60PBE+0GusbB7zbfanuQqu2vNRmMkDdMI5svtqNk0WiJ0LvnwZTiy39HKhPeo1mpnhIhI1ZU7nq2+YcZxZF0gs+Yv/f2zAz3FFHFsIL/3cCaKj1JlIgGLr5M1CXzlA/n4WWQuv0WdIdLEWdHe7j+eWa10okTcdL+aON0viX1VwWdhpLjbmYa/EAyc71OzxrEjM7lkk8z4nR7UNS2u7Lh2+DnYJCCqiGNFeC+2ICZYFN7quwVAi3fdXlPtGWZ0AdgJ6f9RTf0f7ubH6xv2y0V/mqmaCoTifQ43sBCdl+EY4WVOpV9mKuItNJ8gXatnssA+pbyd4FgGMbLy0I=
x-ms-exchange-transport-forked: True
Content-ID: <02CEE9ACE2B2634990A2CB12D3F34EBA@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b037128-677d-410e-df06-08d738c8fc0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2019 04:06:56.7001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IHjwrE+zkYly6Hlz3jj06TlIqjr3h/wADpUBJz3SVNfxOQM3Xe190SzZl9TBWrlB9nCccPYna+mz0cZo22Z6xA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4357
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_210700_376772_1B87F380 
X-CRM114-Status: GOOD (  12.07  )
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
Cc: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-09-13 at 12:24 -0700, Palmer Dabbelt wrote:
> There were a handful of issues with our image format documentation
> that
> I noticed when reading it.  Nominally they're all independent, but
> since
> it's text they'll all conflict so I've sent them in order.
> 
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

As I replied in Paul's patch

There is a patch already queued that changed the format to ReST. You
need to rebase the series accordingly

https://lkml.org/lkml/2019/7/26/1321

It would also be good if you combine your documentation typo fixes with
paul's so that all of them can be merged together.

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
