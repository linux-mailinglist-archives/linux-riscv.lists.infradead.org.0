Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FB898A21
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 06:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pd4U7DfSw1UqosJ0WdyZqmb3zL470nUroOS7MOTW1M=; b=Z6QJFrrNPbFi9n
	ZPKwODuauHStRl+NkrHfdjJwwiAVIZnwCVFK3yMe8h5idefI9jkZaSlvTzw29UHEXczF1wRcAu1tb
	ASxFXdSfjdxtolXHP48P+ebULx69aplTzPAsGSFWztGIzIUXwYd7cREg6uPLckPTh5wC7tMX2pi0x
	8ECJrozYrR0KC9vqOc0sJ4Hggl+86yIBePylI5evw/Zk3+YfFlq2FrT6qKUiFBd16aOVcgs/aWKax
	h9BQo6YVDfvKf03G1WMZTaNt4QWBFUMgkfmg9eIO9oIyn02OvxSymuksswyIRoHV961mX/LRD110C
	0FGNllfSpKIpMRUgZQkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0eJ9-0007a7-Ul; Thu, 22 Aug 2019 04:02:43 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0eJ6-0007ZE-IM
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 04:02:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566446561; x=1597982561;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ND1nGQ8bqpkMIG0pvJdhmSnmm9KRShiJey+RKhXNddg=;
 b=fClD4UktCaiqsrqRTQg6n5aARhgwjOEFK6pkCB8ghpgEKxpf2YNmhNqZ
 Jno7BFACPeWccl2XoSUQqiQJztqQxbY0ZVbau/jvdaaP0pj69nfrEX8EM
 u57RXdMBlh7CY+3EG4EC+xg1Rc9RYKv5I2zSWEAbCAUcm0+cxGuPsxVbX
 ly/Jq23auo4ByCk8hps9al88s7awFHt5DpqXrRRpS4jCK9A8+8FWCrDq3
 YE8hTXMM6Hcr2ML7BLuWwXWPC+JX6FECBvNqiBktxJQWw6ASN4H5aCgDH
 Ly7Sa9pf1MLZYGoInAPXUDzF5kQtMRq4ZCoq52RforhuCc5+9JHzaLtCD w==;
IronPort-SDR: aWZ3kVPGkGe8UxUvAhTq0y/+wHCzLSgJ7T8NrCTIoYhvTGbNLXB4Ya7dUuxngHjYebI9IaSKo9
 B0eABniUwjhuZMQZTyAcr7gsgVN9LEQF5a6R+oc2WaGUqBlH57Xa5oSvh2gEU80Qa5mg8D0BRS
 zmevCBIdbfkqvySVkfyKt3rUll8Cbw4iFhl4UW/9QmWzLdG3TiDihXKMExhdmQAhbvyX9ub/rc
 AVDIbxTzqm/leU7xLwZ9HdfCfEA8tTIZWY6fR85/Nx5E1h2XrzIqv2NnYrf+l8Z2z/oGwwLFNW
 Itk=
X-IronPort-AV: E=Sophos;i="5.64,415,1559491200"; d="scan'208";a="117983718"
Received: from mail-by2nam05lp2050.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.50])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 12:02:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cBOWKlwNrCTfK5GDfk+OYdBOoiOXSLkgnjnszGn4ka5FOHwretMLxsIPdx4O7th045g7XG3QZCcgdK3iSNpk31OFf//6nK0C+2WLEjbF+xl2eKKYbIL4tHv9fzxA6CVOfz2ekn8MRRZWUV8rOO2rrFbQMWMpLr2mLKkggfX/KT+7IDVZSxICC6bj84Qnc3tXPE+DJrZqgCCROMjhmXzMO6yFSTX/Oy4Y6iQyqrryAggpgK6hiwGkZJuKiMH9S2tffWYwIavryM0yRCOEnDEsuMEUlxP9ASIy8yivVRM/Y8fOKS2FT4Ihhx26q+UowPumhqDcMFuRKwb3yl/A4r1Bkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ND1nGQ8bqpkMIG0pvJdhmSnmm9KRShiJey+RKhXNddg=;
 b=QlGpQVoaGyOAjuoh29lzPsg5IyT6aFsWGRtAFBBfnG1VdoFuETpK/neK3htzwUBZCRT+OHOqfdtszJo6PNblVUXq07Iix7tqQ9JoKK30Jd5uvMd7F68F9GWgSBlvv/tz37xdlSoAFpsFMlI4LZXZ3NFcZ2OkJkX+GSAYbE0qmvyuLYwjDdTsJ6Q2TIG6kHNNKspw5EIksVbJ3eHzLsWK1oQqIerlbEXd9UNn5pqQ/ufCAVhBpn3oveX3prVof3tUK+yX/qVAVW332qinTh1GP66AZ2xbhlf/F4MRU1rj8wmpX5QA7UcIsonx73H98YZg+wUN/duhaxwCaXefBVh8gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ND1nGQ8bqpkMIG0pvJdhmSnmm9KRShiJey+RKhXNddg=;
 b=i29054aYh44dNc4wVx7+luqomc6GOqEY5DQUzJoT5iYZB1/wvAJFZtGPJLcR9DKiCnzlSIL9D/OmCGeQQ3+BUs3LZXHCEccozIDfONY3FSt00XVCEOojf72W0IqQsWy220ryeXoYUfXaoCKhKWBUWVqmRIfmQJwXRQIlmhIK1hs=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4327.namprd04.prod.outlook.com (20.176.251.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 04:02:37 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Thu, 22 Aug 2019
 04:02:37 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH v3 2/3] RISC-V: Issue a tlb page flush if possible
Thread-Topic: [PATCH v3 2/3] RISC-V: Issue a tlb page flush if possible
Thread-Index: AQHVWIMWqGgK8YbL3kacpUgQ7SWAx6cGZuqAgAAk7AA=
Date: Thu, 22 Aug 2019 04:02:37 +0000
Message-ID: <410fd58810a91a62869c639bed38fdd671eec5a6.camel@wdc.com>
References: <20190822004644.25829-1-atish.patra@wdc.com>
 <20190822004644.25829-3-atish.patra@wdc.com>
 <20190822015027.GB11922@lst.de>
In-Reply-To: <20190822015027.GB11922@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69b22063-aa4b-468d-d816-08d726b59201
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4327; 
x-ms-traffictypediagnostic: BYAPR04MB4327:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB4327BDB255B3A6546EA1C8B9FAA50@BYAPR04MB4327.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(346002)(376002)(396003)(189003)(199004)(6916009)(6486002)(46003)(2616005)(66556008)(305945005)(7736002)(66946007)(6512007)(4744005)(6506007)(5660300002)(66446008)(64756008)(476003)(6436002)(5640700003)(446003)(11346002)(76116006)(486006)(36756003)(66476007)(102836004)(118296001)(316002)(186003)(53936002)(229853002)(8936002)(76176011)(86362001)(2351001)(6246003)(4326008)(1730700003)(81166006)(81156014)(25786009)(99286004)(8676002)(478600001)(256004)(71200400001)(54906003)(2906002)(14454004)(71190400001)(6116002)(2501003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4327;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Li3ciGRtyPi2FXmhKS9VS+z/DWDuB5dsLwIYRipiifKKu9xE3w1FEVl8p9jiLopkubMVbryL2AgnIcIXzrSXjd6A+5I3j7Vso62wgeLvVhVMq3lUeVY7Y4bYRJdcC4sVp9p/js8MLuVUq+4s9EQjaUNuYkb/pPpTzgvQAqzkjVbSSvhRm/Dha8FsqAnYxkSnEYwyQE5ByqYxSb5bD1lftv59kO3KMUeH4ZNVKhjKTRI06LAJatsf+2P1LOHkQwVjYHz1lCEos3RHg03V+wwK9Kuf/CERa08p4Mh07GQEzfcCCUJaFJ3jWcPCKPNx1ARApL6brR7E7Rd2X/htgsZFGGOclz/pU4pafA58F4pWr5q74wQC8ZKWp6UwLjPMwUnlfKwL+upa7CLU4616JqMauRMr8yz9uhDyT2DHeYHKmPA=
Content-ID: <E457A02CA41D4D4780412E445645B654@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69b22063-aa4b-468d-d816-08d726b59201
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 04:02:37.5325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vJq7gGyIWTK8RBrdMhMi/QUTh4QrHTNbdTXYQ0GPsVKTpXB2VlbH9rt8DVjMirO1LUdMAYzbvjC2ctd2ldCPpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4327
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_210240_651254_CE668192 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: Anup Patel <Anup.Patel@wdc.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 03:50 +0200, Christoph Hellwig wrote:
> On Wed, Aug 21, 2019 at 05:46:43PM -0700, Atish Patra wrote:
> > +		if (size <= PAGE_SIZE && size != -1)
> > +			local_flush_tlb_page(start);
> > +		else
> > +			local_flush_tlb_all();
> 
> As Andreas pointed out (unsigned long)-1 is actually larger than
> PAGE_SIZE, so we don't need the extra check.

Ahh yes. Sorry I missed his comment in the earlier email. Fixed it.

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
