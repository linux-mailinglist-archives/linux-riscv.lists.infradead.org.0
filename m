Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261DE9F29D
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 20:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwRy8WJBRe9Wgap/oQ6QSnlvaNGJQ6RH5OS7narqZKE=; b=qzRvMBjyGQTMRj
	hj2glqmO7bQdHZEaZNY4gItJ40LSsEQ96Sge24N7rNixr36a0Rb3AuzZt37Lzi2y9Drmu2RXHlDKw
	0bMUspsZFNCucz/nlbY6WtdvCGnnslgs5JA5XIjMB3cUlHtcr70i0Rr4qz1gc8Jgjge60ACYOoKES
	BmN/hrR54gmhVHtGrG89MwWgOL8LFlXHJXwudu1mpP6Av3JYBmwJk04evyQWePdxjZWDbpqjpSmAb
	rSpB+DfMLqNWi86ZfaU0nwY7UQYMwQ/5usliLJZhBGP0z1H5PzN5WrqhgL+C8VT2L39Qhn16HlN7U
	TlFdFL+2qhuIE4HHXw7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2gVz-0007s1-NX; Tue, 27 Aug 2019 18:48:23 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2gVx-0007rf-Au
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 18:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566931702; x=1598467702;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ViiTHMMS8MAH0lwa+uhVZA7Ybm4ABxN5XcYuIzeXLBo=;
 b=INwnRMFEtwmvGYGaBjwX2mE9Z2VxGYK0TrO52V1Xz65MVYmhNB8igytS
 ffyy4wKG4ZK0DadzmieV3V57a6FZMompHLKqZKY/CwwveXEBHJ7iVZxmJ
 WLCIZDn0FwBqfBkXd9YDtAMmOtvMczYOXk0yiSa6qey525HEVty2LV/MD
 iHgQCCMHM4drfWm/2IdimVN2xbQqGKAejleHmMFFXdsdsXZk+78BtzC7j
 Jf4fJ/L+lx96svMIdNSMRvnA4gReBOb6DBoZ0YE+gDM6LXOOl4e/Dcqn3
 U7l5iBLRWR1SnEbMrQiYtff9SXHnsW4Pvk8goBBaD6Z7qX+RW5FJVb6YB A==;
IronPort-SDR: wVT450f6+X5c6U1qq3ohYuXTHzXfElVK39UJKBHnPHwJzME9j/CXeag1b5vTHa1fvX33H9XFIx
 VZUKoGGAJPrd2/EIl3Q6iVzASPSfpSwHuN/IGtxnXadYt6ZRQcJ4qSpbZnwaT7hMGgEhhExEo4
 5s7KnjXX05KkpIjQXLVEZiEFuP5UTbSVUjYOojqaxyihLaV7uVJ1iWg/5HSSLEB/VIe6dTx0HG
 ksP3rgTkSA3qSo3KancSM7ttqVBxIl1IM2kUTpsipFa1dhdqlxmbKsOI2UWbOmFAWcXGAvBLfc
 cC8=
X-IronPort-AV: E=Sophos;i="5.64,438,1559491200"; d="scan'208";a="118389595"
Received: from mail-bn3nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.52])
 by ob1.hgst.iphmx.com with ESMTP; 28 Aug 2019 02:48:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mv+l1I67MFYo7n/dr3L/98hbkGybamwUgxUS5RT3iZ2mQn4y7UBvtUcEMhKmvtQUH5mOQREoXF9Hon35CeJD9g7v+Fh1E3ozbhUvI312MF48LGPBMgtmBO4+yHZWhVAPKSd7rq7hie3PBWvEZYw1bo3cZuPdscSX7Pod/qDyjUWTi9RBcftlT5QOb6r4BxFdCIRNDjobXzW5Z2YAYyYcdN231fL9gr3mpXvhodd8P15fgnOfrVX0YU8cptI3wziVagJ2pWK3Wi4EJI4zQ1kKVx0RXJQW5yjsWvP+29vT+a8FPKBmqln3EjOMLvdVRb4yS76wj/UoCws8ZGpzIzt/ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ViiTHMMS8MAH0lwa+uhVZA7Ybm4ABxN5XcYuIzeXLBo=;
 b=BlrvdKWtpC3eOR1Tr+AP7EGXQsSME8usqfhQchBSbS/oLiUcj1IK0BX2PAfLmYmZCeHg7+ECHVOC88knQT4yFiG9WLE7XQdFI6qxQw9SnvKWoiOZCRuQ+Cin3L/RSIMFhEsTz5G1yZeBPtED6g54lNOcJDszRqmevjkmuvoiQbYb3JVkL1NXSRVHpkx0/LS9Cz9u23oUn22pKWpygUL3lEdqmnDKlTcP/ELCu11pZnvyUqKdqPMkggqPcUpayw+3dp49KGMyJPbmAPjWNAfE9xhXwbEf+WppXrZI9RhGzeLYmyStXxShpsMHAjWzrPEBxFhA3nYElZFGs+6DgPFGsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ViiTHMMS8MAH0lwa+uhVZA7Ybm4ABxN5XcYuIzeXLBo=;
 b=WiyJnGD43uE4WOrNVJ/XZPrtQxT/aBMwDfBU9tx5Tj9VpMx3J0P4zzgqrLGOiRXn6N/YK+1iXxg//wlw8fVj2wz/KTwXtHAX6cwJj7wkDbKVIQAUWQsOnT4eed/wj5ydY53k6s92b8V5rlRmuXc1ouad7vVjLNBHhnySDo+X4ik=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB3847.namprd04.prod.outlook.com (52.135.214.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 18:48:19 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Tue, 27 Aug 2019
 18:48:19 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH 3/6] riscv: optimize send_ipi_single
Thread-Topic: [PATCH 3/6] riscv: optimize send_ipi_single
Thread-Index: AQHVWDDxfnbVTe5iuEuvupmU0K/L86cJdL6AgAPd9YCAAgzmAA==
Date: Tue, 27 Aug 2019 18:48:19 +0000
Message-ID: <787bcfefcbd5eacc04dd6681ccbfc034a7e6507d.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-4-hch@lst.de>
 <570f358ed76092a4072b5acedd4ddb34c318ff9b.camel@wdc.com>
 <20190826112937.GB15002@lst.de>
In-Reply-To: <20190826112937.GB15002@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f3518be-0051-4992-f38e-08d72b1f20f0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB3847; 
x-ms-traffictypediagnostic: BYAPR04MB3847:
x-microsoft-antispam-prvs: <BYAPR04MB3847EB66C08EDA6A9248EEDBFAA00@BYAPR04MB3847.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(376002)(346002)(396003)(199004)(189003)(3846002)(25786009)(2616005)(26005)(102836004)(446003)(2906002)(76176011)(486006)(6246003)(66476007)(316002)(53936002)(256004)(476003)(4326008)(99286004)(11346002)(229853002)(305945005)(14454004)(6916009)(54906003)(66946007)(6116002)(64756008)(66556008)(118296001)(71200400001)(66066001)(7736002)(478600001)(71190400001)(8676002)(5640700003)(5660300002)(1730700003)(81166006)(81156014)(186003)(6512007)(86362001)(2351001)(2501003)(4744005)(66446008)(36756003)(76116006)(6436002)(6506007)(6486002)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3847;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KDgM2NW3pylDTKPFXOq6jUPPSU6+ZqEZWOGrUn1gCoF0Mr5JMb2dHHj2EiK60W/m1IHUInyUIEihOhtMWZFV29UWjTiLNX9KHgHbcVA4zSgdj+q1MkNrl9XhWLzk3rwf7yH7dQNpwemCyQLT3UnlDc9pw+rCiuzS7leXAhX4ygL0F2XkZG+IRYV3TDX0y5kX1kt2WKqOxN9htWALWM7Rds7Jdg1OLE12gC+fLvfbnFmjKM8NS7Jsv/YDVOzvWOnBsQ3B7X9uNIdzwkCbVhmvVW8eljGFtGhL1bNilYtTn/bO8S7Hpb+cME5QdF36e5EfqI/fcuLZ5voRnRNLK8lny+W7hV4Acppi8KnN58HoWwr+/KQFXTV3Kt5lrvgxWH6AboY6Vy4bcwEp4Eeu0AcgSbo5nBcWaSKrYvQph6YdbeM=
x-ms-exchange-transport-forked: True
Content-ID: <72A4BDB83436F644AE10E4AF30DE6237@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f3518be-0051-4992-f38e-08d72b1f20f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 18:48:19.1048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sRc92m8ajWcP8ejCHeGntr47v3nJx4WwJPmYcmnsv1TSCP7FBkhtI9ZcdC2WCsWYfWKQVZf355l32FlmSMzkLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_114821_414016_A51C6F6E 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-26 at 13:29 +0200, hch@lst.de wrote:
> On Sat, Aug 24, 2019 at 12:26:26AM +0000, Atish Patra wrote:
> > >  static void send_ipi_single(int cpu, enum ipi_message_type op)
> > >  {
> > > -	send_ipi_mask(cpumask_of(cpu), op);
> > > +	int hartid = cpuid_to_hartid_map(cpu);
> > > +
> > > +	smp_mb__before_atomic();
> > > +	set_bit(op, &ipi_data[cpu].bits);
> > > +	smp_mb__after_atomic();
> > > +
> > > +	sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
> > 
> > The only cost save I see is you don't have to cpumask_clear
> > anymore.
> > Is there any other cost save ? If not is it worth duplicating the
> > code
> > ?
> > 
> > May be I am being too pedantic here.. :) :)
> 
> It avoids the additional potentially huge cpumask, and generally
> makes
> the code a lot more obvious.  This might not really be needed, but
> helps with sharing the code nicely with the native IPI path.

ok.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
