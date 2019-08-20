Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B376996A81
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 22:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8el1ktgNGNiswviDIVlF5iFhfqrkqQTF9X0CiYi91o=; b=aCxgQ5nbbl6aX/
	Cshnjly5mU/1BldXH3kEyp+cEF4KXhNACDSl9FM7Xg7GNfGv6eJxj9BEYSGzfoxoZ+6BNs8dTgiqF
	buiGPgwhmqgpIqlQ+lsxoHv4K87Vy/6e7ELKFctVUtTQ9X7ggQ2wqjgmDVepqKbJgIpyJcdaOF9MX
	+XNe8kzzZEwKa8h80zsHM16b+AaQwfv4GMkodg9RFqp8BOLNtbpANU7pyrRZp0XKorfhWJ8obxUYb
	IITxufXKrEO0A5pX2Yd+X6uFhX33uH5VQwJOWTxQ1hTba0YjUKree9WlQwaChJZ7ifE7zd72gmc8e
	DwIgZKf9iWaNpIhkdXUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0AkH-0004zi-5A; Tue, 20 Aug 2019 20:28:45 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0AkD-0004yq-JF
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 20:28:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566332922; x=1597868922;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vXFbIxfXHxY6V6vbwEVERjWGb8ao8+gvkUXsX9msfgk=;
 b=eUjkeNEK2YLxlO7hdbwqptK0loHCsGUXAM41kyDpePgUOtgCJlPbFqVT
 6ow8Yfm53AotDvq7wvBBKy4mPd96hHE0/EbLxQ0Z9/HbDWL+0/lUfVl8z
 6P56DwquDh2jAVeb6A0Z/PglRQDxgDAMY3KFgn0MDtrLAUaeVFzXMLCW5
 S3m6fb5Xmg6i02EwtA9c6zOez+LmphT9jnz6DcpUkRU4WOCMRAj3DnScc
 jRbu+nxNCcWZ4tPUdOPem3Nzk23t4WG3YwWxFuAuw8OFKrp6NQOxRp56c
 h901wyi6+xIoN8LR/NUMBtTMSwPJWy+KvvnYGzcCU1LLf5gc01eJeczvj g==;
IronPort-SDR: nYK9g8F/C/aIozDRL6a8K3XTEThFLb95Kz1t/JahcEBgRHQOrph0GEQa+r3Yjk4KZrzn+DdeWQ
 7TZjy/Q+21n1JFYW4FGsA5HX9BSWLLOIgUopgP0pMrIGNcYcxIbiZQq5IviaN3w/PXqFe8eexT
 9PpYTqn8Y80AYqcf5XYj3odSqZXrhRqFvNod0BZlb5zrL+g9ZgxwmLBPZwJvf7hqTj17CwR5lj
 x8iJjr3k9+wfb6YInkH8Jp0AiyyrwsExxtRp7IZDY/ByZCLEXJVfxWZTXjf5op+HSNHLXxnmSV
 8rA=
X-IronPort-AV: E=Sophos;i="5.64,410,1559491200"; d="scan'208";a="117212158"
Received: from mail-co1nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.54])
 by ob1.hgst.iphmx.com with ESMTP; 21 Aug 2019 04:28:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gI2Y28iZM7glFZpcfTxb/mGawnwfuFh25Aywdj74+ZWqn3gYMmiDEEkJfX2xciXyV6f8CS0HJbHN3q8NLKFaOenuxQxqnqPFeEox81TqFsMdv4kOwFIU2fmYllgQ53cEie/oGEcNzpRGjwaGLBNW5koRyBZI6ZOmRrngYgDDdA3vTIKRAkQj7r1+SRcvTSOAKv4zRivP300wz5uIr2g9DtwU59LO9wdRiWod9ZbW2WT4IUHney4GR6bQZIDcJ0Zo7zcbf80h77H7Mk3UR3XQwQEWFL+X5+dkXLAzDHbLCg+Wlx/JOnPRJhkfFjyqfhqKyS4SGw1fx0p6si2yasYeGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vXFbIxfXHxY6V6vbwEVERjWGb8ao8+gvkUXsX9msfgk=;
 b=CRCXEvz4x/DuuKQIctWH9wc65srXVf6TfsiTvpGF6s1OcRJeAfVciPN9H6qXaoG5JyHZcxl1DHsF4Ad9G6m/abC4bZ/jF7cvlJK2FzsLOG4CyEWI0M8RCdIYIlo9cw1fxb9XWaDkWiVjrDnLjDMsJzfL5qjnkF9iELKGx0/8GSk3xqKpf0XxfZJn5Yg6VTHd795Z0jsGRCyy4IZB/MpTNZuG2fFzrphHdAthdvWrzle4wmQtH1LNmZqhugYq1SnEfIFSh/wJlf/epzQhWCTsjcH7OJaat6pnAExkWL1XO6nKT6E19q4xIHnO4Ub8HdO3A1G7UyD6QHoPZV0Mh4LhPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vXFbIxfXHxY6V6vbwEVERjWGb8ao8+gvkUXsX9msfgk=;
 b=Gp/3UlfavxrWBsY/Jmor4rtH4VmBGw++f8L2rCxB0Z+7ADuDU9C9Z7f+DTRTubGfKSG//FuCyhJdInEAA0eAlMesWysl4Xmjth8Bn0/IQ++dXU60RtMs998k/hHDLYdMFds2h7WxeOtVXtwu19QWVmUj/EPfUlj9i+ctSOWNDVo=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5864.namprd04.prod.outlook.com (20.179.59.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 20:28:36 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 20:28:36 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Topic: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Index: AQHVVvDfUBJCIAOoL0y7jXfLdcYugacDqN07gAAPmgCAAAsggIAAujWA
Date: Tue, 20 Aug 2019 20:28:36 +0000
Message-ID: <76467815b464709f4c899444c957d921ebac87db.camel@wdc.com>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <mvmh86cl1o3.fsf@linux-m68k.org>
 <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
 <20190820092207.GA26271@infradead.org>
In-Reply-To: <20190820092207.GA26271@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95748c52-16ef-42cf-669c-08d725acfa88
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5864; 
x-ms-traffictypediagnostic: BYAPR04MB5864:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB58645E999DEBA94537155289FAAB0@BYAPR04MB5864.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(199004)(189003)(25786009)(966005)(476003)(2616005)(81166006)(2351001)(6246003)(2501003)(1730700003)(76176011)(6916009)(81156014)(14454004)(4326008)(229853002)(8936002)(99286004)(3846002)(316002)(2906002)(54906003)(305945005)(6116002)(71200400001)(71190400001)(66556008)(66476007)(26005)(86362001)(64756008)(76116006)(486006)(66946007)(6436002)(66066001)(186003)(478600001)(446003)(5660300002)(7736002)(11346002)(53936002)(118296001)(6486002)(102836004)(6306002)(5640700003)(6512007)(6506007)(36756003)(256004)(66446008)(8676002)(562404015);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5864;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VuoDyGS73IpbDrAgZyopH5oNqOF38w6fnjWfyZofEJo1+alCVUlf112XRugovfoyKky6MFfUFfxUa7NXzr1gzmiznEk2MEc0VCIlhFMi3189iNjPXSjyc4lfm/50+qtTcBN5bgPINN4PYfc2JjrbbdoCdsCpb11MQEYhn1+ZdLmWa2ImUigp7sRgcv/5XM1/6Uy6O9RsfD/vQmvq1BUtOz85Y20VuOQ+SqfIRRDS3QIE1GKXV4mK8JZBSRbeCjbH19nT5yVUjVpXwt3WyPiSpvVeGhQDhetBfCsxeld01w/KEFXT9wZqcj2XpRXwfaQs1cVOI1w0xRAa+DRquzM5zZACOrxn8cU6Efiuhp2rdFKYrJJXSDLVXTtAKTbGNTzlnI2hYVdReXzogCcH6ZY6vNPW1X+3FB15PgfOrC9OtQw=
x-ms-exchange-transport-forked: True
Content-ID: <7D822BBE7C813344882B138958EBA68F@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95748c52-16ef-42cf-669c-08d725acfa88
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 20:28:36.3510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nQIphuMEkt5TFD98gQhYlVrNBSZmwbC7FbW2uQzma5TVJ424F0gYSYgKXpqXcnuSYyYSRxwrselvtdGdOGcRNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5864
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132841_826762_7648891C 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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

On Tue, 2019-08-20 at 02:22 -0700, hch@infradead.org wrote:
> On Tue, Aug 20, 2019 at 08:42:19AM +0000, Atish Patra wrote:
> > cmask NULL is pretty common case and we would  be unnecessarily
> > executing bunch of instructions everytime while not saving much.
> > Kernel
> > still have to make an SBI call and OpenSBI is doing a local flush
> > anyways.
> > 
> > Looking at the code again, I think we can just use cpumask_weight
> > and
> > do local tlb flush only if local cpu is the only cpu present. 
> > 
> > Otherwise, it will just fall through and call
> > sbi_remote_sfence_vma().
> 
> Maybe it is just time to split the different cases at a higher level.
> The idea to multiple everything onto a single function always seemed
> odd to me.
> 
> FYI, here is what I do for the IPI based tlbflush for the native S-
> mode
> clint prototype, which seems much easier to understand:
> 
> http://git.infradead.org/users/hch/riscv.git/commitdiff/ea4067ae61e20fcfcf46a6f6bd1cc25710ce3afe

This does seem a lot cleaner to me. We can reuse some of the code for
this patch as well. Based on NATIVE_CLINT configuration, it will send
an IPI or SBI call.

I can rebase my patch on top of yours and I can send it together or you
can include in your series.

Let me know your preference.

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
