Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D82104E15
	for <lists+linux-riscv@lfdr.de>; Thu, 21 Nov 2019 09:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xO5QgUPoGOsRj1y8sCgLPoM8d3dGNHwo/pigjpPrdUQ=; b=RrNwj4piKye68b
	bZylr7NUT+tup5tZwjQG/tNq2E+y4AqYZ58yiL7snNQsdKvE1gSpnZrtDITxbyOd5UHTlDMLHQQoP
	0tyAPBhvrkXZf4W4O5uMSP0CXB7D6YLaQUXzQxh/eLvFBAJFaP7rCZXyBbR/N/cychSN/xhHzQ1Qh
	E76OnrggVnP0/GKR5GOGvxOOLvpuvKsk+afdXKLpyQBI3AfMwDpuQwz+8Kosq2wGSbnT2ValwXsSN
	He3W2f4iIK91LRbviWSN+gW/q2iH78NNWIeG/JdkIZjJBJdTv//k11azFK7hd4RBx27jZ78lpca5w
	1gXRkZfEm/OFdrx3HVEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXhwN-0004RI-LY; Thu, 21 Nov 2019 08:35:51 +0000
Received: from mail-eopbgr720063.outbound.protection.outlook.com
 ([40.107.72.63] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXhwJ-0004Qw-Kl
 for linux-riscv@lists.infradead.org; Thu, 21 Nov 2019 08:35:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TIdUGLVAHG57CKy4bSX0+pLFaeJRZq/yuASMJqwGeHNi/G4E2dG+Pbu2dkiu6QfIiFce8RFuc1pmBxABnIQYQtdaLXeTAyQi2ugX3KKXhu1BCedwQLG9LRQAYY2IG0Vy3T32ehT12dxknigLDz3UPNeNDjm3j+9taUVXoL7jecT3JKCBtnHtVHMbmi9SfeqP82liUblMcpsjlsBo+tScxouKPcv7ZOGQidIMB7wdo5EPMk1aSRAknyW4+knwjhDwBLA1IRfnRD1OLfK4bSSThu7qVn/YZI0FuePem1F1g0WT78w4YW0NvLDHbu2nBdleWGwyYwSrYSWwxAe39dwIfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Sn0OSbRmZMqOfWAigYtrtVnYBqlhloFuzpBZkCY7os=;
 b=EI3TcoAdREbqyQzZ+reVLJbkAz6UrdRlZvMW3c77EVTPPg53JbirAThRg9GSqkdAHQEctJQC3wTcqasEv2zxMWcUdZsSAemrNGQ/0Ip2yOFm2yWXFUZ4puik55D8yutNhxK+YIsjemDZwEhAkVbxEFwjylcbqOjjwTbNOBh4Efd7ldY3+M7vlwPWjm56rM5cUQxKs4HZbycrsBcK1ksWNTisUUYqL/5DQrz4YPO2MmwG3hodR+KAjDwRSynpBTR31WpTVk1LTbc/Fhvs3trn1zsK793TugbLHi9StJG0XVgakgFIKzMkqKAEQXEv/v79s84FIK+eyNcWGP0R70xbaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Sn0OSbRmZMqOfWAigYtrtVnYBqlhloFuzpBZkCY7os=;
 b=GNQ+AUled/o9fM5I7VfBKGjQt4S06aui+fc3m8qwOiXL+Uzst0noXKbPsBX+Jlgv/uZc5B7Muoozfy9RwFu4T8CJG16fbOZ8BmKEhAOyaBI66LQW9psNLB5uqPiVKTgf/2kMfl6NOjQYeKSs4C3Yr6AUj4EpE19KnCQE8SERTug=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3701.namprd13.prod.outlook.com (20.180.14.200) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.8; Thu, 21 Nov 2019 08:35:45 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2474.018; Thu, 21 Nov 2019
 08:35:45 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH v2 1/5] genirq: introduce irq_domain_translate_onecell
Thread-Topic: [PATCH v2 1/5] genirq: introduce irq_domain_translate_onecell
Thread-Index: AQHVn3AJHBiRD+wuIUSzxWzN0+e/fqeT3o6AgAFvDhA=
Date: Thu, 21 Nov 2019 08:35:44 +0000
Message-ID: <CH2PR13MB33682B1E7B40DC5C2FD1094C8C4E0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
 <1574233128-28114-2-git-send-email-yash.shah@sifive.com>
 <5ec51559d8b4cd3b8e80943788b52926@www.loen.fr>
In-Reply-To: <5ec51559d8b4cd3b8e80943788b52926@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 401f03cb-132e-4d51-f171-08d76e5dcd35
x-ms-traffictypediagnostic: CH2PR13MB3701:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3701A082B564FE78E21731848C4E0@CH2PR13MB3701.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0228DDDDD7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39840400004)(396003)(346002)(376002)(366004)(136003)(13464003)(189003)(199004)(446003)(76116006)(229853002)(52536014)(6116002)(256004)(14444005)(305945005)(186003)(7736002)(26005)(3846002)(74316002)(66066001)(8676002)(81166006)(11346002)(4326008)(76176011)(8936002)(86362001)(25786009)(53546011)(102836004)(81156014)(6506007)(7696005)(44832011)(71200400001)(4001150100001)(33656002)(54906003)(5660300002)(6246003)(107886003)(2906002)(478600001)(55016002)(64756008)(316002)(14454004)(9686003)(66476007)(66556008)(71190400001)(66446008)(99286004)(7416002)(6916009)(66946007)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3701;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /HcBd7ADO5gnTAHnfOjeQEtjACQtFbmNT+WE7w2P6nmQqNRLAkM/IQ00j7qX+WjIxZGysYL3joXGp5IgjRHC0W9ICCrPps6qoR51bTRyj5an0gtNHSYJududOCAYxBor9cw3UCACXY84batAZ0wunzEcCaLvXHZoHttpVuAX1r3vA8OFH23XckF5sqnv4mB8jYmHiFRo84XPcwOcWzKk4sYdcLXTo4XQEuvA4zNDY442cxDg8vP1u/jfRt7/HwdmdkenzVM8MLahrdOM+cIUD3XnNw99FUvZCMjrUV7nVTquKrndKT0FxsOBRRVE8mdHg2vKm9XfifXDIUT5/f7Meh7t6AsMlLk1OEhHw62CI8eIbX/5lSj/fXDvIP66SEX/mfySjqpNpEgIvM7vrE4Dyrv2hkdKQwcLZQDJuFSavgwDaEQvRyOGVU8jesAefcuc
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 401f03cb-132e-4d51-f171-08d76e5dcd35
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2019 08:35:44.8443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h46K2nORX+uV8wxgeIzakpLGfcIlOW2nKvbpYh0MpYOjVSaEZhsTe7JLwe4bVVQv6YeyzMtcZ0simxoQfVad7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3701
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_003547_683461_727844EF 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Marc Zyngier <maz@kernel.org>
> Sent: 20 November 2019 16:09
> To: Yash Shah <yash.shah@sifive.com>
> Cc: linus.walleij@linaro.org; bgolaszewski@baylibre.com;
> robh+dt@kernel.org; mark.rutland@arm.com; palmer@dabbelt.com; Paul
> Walmsley ( Sifive) <paul.walmsley@sifive.com>; aou@eecs.berkeley.edu;
> tglx@linutronix.de; jason@lakedaemon.net; bmeng.cn@gmail.com;
> atish.patra@wdc.com; Sagar Kadam <sagar.kadam@sifive.com>; linux-
> gpio@vger.kernel.org; devicetree@vger.kernel.org; linux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Sachin Ghadi
> <sachin.ghadi@sifive.com>
> Subject: Re: [PATCH v2 1/5] genirq: introduce irq_domain_translate_onecell
> 
> On 2019-11-20 06:59, Yash Shah wrote:
> > Add a new function irq_domain_translate_onecell() that is to be used
> > as the translate function in struct irq_domain_ops for the v2 IRQ API.
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
[...]
> >
> >  /**
> > + * irq_domain_translate_onecell() - Generic translate for direct one
> > cell
> > + * bindings
> > + *
> > + * Device Tree IRQ specifier translation function which works with
> > one cell
> 
> nit: the whole point of the 'new' translate function is that they are
> firmware-agnostic. Just drop the DT reference here.

Ok sure.

> 
> > + * bindings where the cell values map directly to the hwirq number.
> > + */
> > +int irq_domain_translate_onecell(struct irq_domain *d,
> > +				 struct irq_fwspec *fwspec,
> > +				 unsigned long *out_hwirq,
> > +				 unsigned int *out_type)
> > +{
> > +	if (WARN_ON(fwspec->param_count < 1))
> > +		return -EINVAL;
> > +	*out_hwirq = fwspec->param[0];
> > +	*out_type = IRQ_TYPE_NONE;
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(irq_domain_translate_onecell);
> > +
> > +/**
> >   * irq_domain_translate_twocell() - Generic translate for direct two
> > cell
> >   * bindings
> >   *
> 
> Can you please also update (potentially in a separate patch) the
> potential
> users of this? I mentioned the nvic driver last time...
> 

Ok, I will separate out this patch from the patchset and send it individually along with potential users of it.
Thanks for your comments

- Yash

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
