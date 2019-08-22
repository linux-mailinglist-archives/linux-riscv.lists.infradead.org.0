Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA2C98A46
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 06:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zv9wGmy/af/RdtvOZo7T2DvBYN/+5f3wxLvZRzSVaNY=; b=J6YWtefdsMEJCB
	mmI1qbSpXX/dMKT/4liL2F4RkNdAtqBXncZjcnRFlXsG1FUydvdubu7m/1wz2NGC1vdbA9pTFIeF4
	rUz+zz6S4AtLFGQvN2jQ+ag4wduvCIT0D6bUCm0+HiVa/f7TDeyeRy6VO6pfgnn2D9UxWafqFucCx
	EsP3ECTLEDlPZeJ7Faz63LCJYc0OXoH79aMSltluaUGmN0Kz/KOYzk6LB1mICz1ou/BH1Nuy4jiaY
	gp29RpTndmmL78QGxPHyiuG/1oEKC4cE8mPLtZfjKwnvmLAv91WdHZKieetOWmoefPgr/FyXycSH3
	mGncW5w9xNimEiHi0sNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0edN-0005si-SH; Thu, 22 Aug 2019 04:23:37 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0edK-0005sG-TB
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 04:23:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566447815; x=1597983815;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KsQBdsZVdZkqGn3Niq6LghQRRG4VS8zu6DJf7i2nbEs=;
 b=DYlmA9jE52XsuqW9pEoCOS9T/Fwl7Kbw4Z/P7QTIOgH7I7dcwSN4czkv
 IjksHpLNrOp+EL0CY+GwwTGXzgR8zQbgL3fIL1/aD287QicN8QCKt5Ha4
 bM1zOyVeCwFlocV0xICBl1hqGKRjfQixZnSxx2XeJZvNMV0n1RHx4Emak
 AsjA0zDc0vOYoNJRcmKyKjgs0BM8vh0sTuXn/Lnn/InFCX9CspqGTdH7K
 ax0k0yg52gcC30K4IHXkAGpr1CTf63HRP+dEuX+Ns94U04UED1TlX+yoy
 LFmvIpXIevQ29HoLtN30vPxfjZGep9TXBSpSyEc8xPt+NuNMtDL/9A87H g==;
IronPort-SDR: h4cNZEzE3B2sdCqJOTFAA1C9dHPt5UgKZyRNxtsHjanlHLitQ7HMYOLXAuoVHRTxDZAAD2v3ef
 xzdUX4RJB2rwLGBC2vJRvZ/9JkHZTzFZ+FH3OW8hsYc2K/uYUA9vxFKArZhG93gq64++AbIcYF
 HuSlpj2ynzhW2vO6OsciMZvjLEXhmauVboeK9rM8KWxcQlwlWDTooZps/n24gre9IjXGHccMdH
 OegGdZAqGPf2r3yCJQuOLw7BLIAvgV0e9TCDdd2vCYr0xhfCrs2uxsqK3ni2Jo6HP/srWEnwvF
 zB4=
X-IronPort-AV: E=Sophos;i="5.64,415,1559491200"; d="scan'208";a="116385153"
Received: from mail-sn1nam01lp2057.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.57])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 12:23:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FKaJ7kSjlrhKKGOs8jUqtA4/pBwIavw/0cthYAxxkhQ2+wow6+WH6nsYum+DaFfJdbOOAJrtiBJo5s03IlQXAJIOyWDprArUCU5/KJVZMIL2pURO2PwjWdceAfF6C4nQE3KlKS/LnOFqvOuPJvWmW/VuGuIKSgjWuEqaDZ3UWr+ClGTtuX6N7D5WBbQJakcF32yG/XrO3YHt5MEUg7UwWfAovooIV0EBsUTokJyJWqjkNarBjbK1vNCmK2Rh6WDr+MjgW+FTo2km4+p4OOmWLCWZ/+3VksQUiRpjoWAWlo6I3yZFuss3lKhX2KrOgSOUiQweN7OP4sEuqAilcxE+JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsQBdsZVdZkqGn3Niq6LghQRRG4VS8zu6DJf7i2nbEs=;
 b=iE3r2b1I9VvQWo16C14YkPTzfUp7K6rnutGm8Y6tNN2U5XZiaN99iBoHbUS9ssxISri8h8WbPe/6o6TTkwGwpo9/egshKPxkvpyw+lx2f8uf+OT2419DaxePyQkBGDAVzQrSpgDlinQ34cK6dmTlYdeETs/pAupq9uWM6EHFrKZ6JDsB2VLnzGrsatzW0BDpnXpBT/+1kJ/y5R70+2hXnSPDJSa3S5gTYsRkUuZdQBaU5fRb5gsFEHFIybbMZ6Pz2NgfLzJuWk8tI4kfdAiFLLML96/C6THGH+m9zDpFC4JeTl9RxA9VTGnWQSn4jHHWX7CTCos9lCmGnSG+gIpCcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsQBdsZVdZkqGn3Niq6LghQRRG4VS8zu6DJf7i2nbEs=;
 b=jc49Lt3oj3Mr+QQ4jyd5RMtHCht/cDNhfwRKmnMU0vMMnJH71G6LrIn5dv/GwH8IOyzlCukF6y4IP2l3sUMrEyvfjXtlnpzPfe7o7fZg/JHolEENX4GszjMCoN/CkzhtGVWgr7md9eZFWJgZX1DQu0GU0Jg5tWRxQVGOxI7Sp3g=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5589.namprd04.prod.outlook.com (20.178.207.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 04:23:23 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Thu, 22 Aug 2019
 04:23:23 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH v3 3/3] RISC-V: Do not invoke SBI call if cpumask is empty
Thread-Topic: [PATCH v3 3/3] RISC-V: Do not invoke SBI call if cpumask is empty
Thread-Index: AQHVWIMXlvjJf/OWIEKZ9ZEntF6ZhqcGZyGAgAAqgwA=
Date: Thu, 22 Aug 2019 04:23:23 +0000
Message-ID: <bfec8818b825fd791f7e170ba913860971c18067.camel@wdc.com>
References: <20190822004644.25829-1-atish.patra@wdc.com>
 <20190822004644.25829-4-atish.patra@wdc.com>
 <20190822015113.GC11922@lst.de>
In-Reply-To: <20190822015113.GC11922@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8317b479-de61-4755-1ee5-08d726b87883
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5589; 
x-ms-traffictypediagnostic: BYAPR04MB5589:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB55892468BF04A55CF8C93A27FAA50@BYAPR04MB5589.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(346002)(376002)(136003)(366004)(189003)(199004)(51914003)(4326008)(6436002)(229853002)(36756003)(14454004)(256004)(4744005)(8936002)(7736002)(118296001)(86362001)(305945005)(81156014)(5660300002)(478600001)(81166006)(8676002)(1730700003)(5640700003)(6486002)(25786009)(6512007)(6246003)(2351001)(76116006)(53936002)(2616005)(71200400001)(446003)(71190400001)(46003)(11346002)(186003)(6506007)(66556008)(102836004)(476003)(66476007)(66946007)(6916009)(64756008)(66446008)(54906003)(2906002)(76176011)(486006)(316002)(99286004)(6116002)(2501003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5589;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0aD5a+VHA9tGNWBY+92B6o0rI++hTwN1A8WfbHowhDcZmNulB8pRQQH8C1xHdMrOz5jptmhx1pPN47b3nEq266lGXyrDl8ErbmcSM9RMAkdVjKEg4/NBvDMzpy9+aoh97eCWdNuSKZtfK8CSIqPZqdWEN7Ck26+f/qt+jqIb1JxlxcjUrdtPehWS1c5ZxK7Sey53tS+npOarlEYP/fT7pZffclllmqo4dQuxjoxZrfnUnwtFxRqvlzA4tMMmf31CLeNnF1M85qd4mLR3TcwujNCObIH1iWj0pXcEUdBo1wQfE3IDh9QG29cosem2xYaGVBzO6NqQMOXD6+PD7mDSDIgrze40bLUErqJ7n5lMUQCBuQhwGbWt0XVXus2AuJcvYQQiO8ShLeUI4T54C59pjIt3iQ+veDF0P4ot89j3DOQ=
Content-ID: <3BC2817F55A796469B7FE9926ABAC989@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8317b479-de61-4755-1ee5-08d726b87883
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 04:23:23.2072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wfou3K4ci+2+RQ/G5pwR7WF5YtbhHJeCWsZycBmxr61aAzUFTEZxf71TMJHKDJsdIiKJGklBOk0oink/TOJK9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5589
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_212334_978555_9E6007BC 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

On Thu, 2019-08-22 at 03:51 +0200, Christoph Hellwig wrote:
> On Wed, Aug 21, 2019 at 05:46:44PM -0700, Atish Patra wrote:
> > SBI calls are expensive. If cpumask is empty, there is no need to
> > trap via SBI as no remote tlb flushing is required.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/mm/tlbflush.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
> > index 9f58b3790baa..2bd3c418d769 100644
> > --- a/arch/riscv/mm/tlbflush.c
> > +++ b/arch/riscv/mm/tlbflush.c
> > @@ -21,6 +21,9 @@ static void __sbi_tlb_flush_range(struct cpumask
> > *cmask, unsigned long start,
> >  		goto issue_sfence;
> >  	}
> >  
> > +	if (cpumask_empty(cmask))
> > +		goto done;
> 
> I think this can even be done before the get_cpu to optimize it a
> little
> further.

Yeah. I can just return directly in this case and call get_cpu after
this. Thanks for the suggestion.


-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
