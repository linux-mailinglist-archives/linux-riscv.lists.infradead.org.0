Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066B39F297
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 20:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QoEvrGy6cMapCs1U/neSD27yI0VZtAg+6IR8cfoG6q8=; b=YBKXPwYIt6lLSN
	rCSNuAJnLG+G8uCaCOyHC0fwUvfipt+Ok9QSgNPYf2V6xE6c8fL52NG+0al2c1enFo45O7RZUJsqw
	qAhnQCQjlC7IHQ81QnWDS0+4CN5A7/XowK+OK/TE+kQcp0/2j+UEcTS9D+hwOBH4yk24skSDv/Lxv
	iR6lFNEZQI/DDRIMTJEhM49V3yQB1aCw3KhviGdP35clFut/TT9Ol7ddEB3GpXnodM/qHt2trwbqC
	oPwOlKo3flm7dQFtZkHnqP1NXx5G0ECUHPQjC6BhwhHla/iPOgPGr6M9eJ61pw8MMOQXweUrYXhsq
	IDRLXDoH/wMhKF3WfEJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2gTC-0007k8-Fv; Tue, 27 Aug 2019 18:45:30 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2gT9-0007jX-Fx
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 18:45:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566931528; x=1598467528;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SQcwwImm4N72j9PLeS89EJT59CvY9N2nFACeEp0i+KQ=;
 b=AXAjiwggMIKQvSDStcrLJhAyWlyc+HcIFen0RoDOS9LQmn4pu9OePtMi
 gZsyA60JJ9VrJoB3BIafCiD2N5k+011jaa67iKMrrQNjKxmI3CAqY3Ksq
 j8KEWS08hIPNUQA68KGnZoJK1WXW9S/z0uJ8mR0oBJKX0xPIjMuRg2A7v
 wXT8J8wzZTVmuaw800YUPneNr3Ikez9XeKS1t0oWEVoIbpaKT+QnjfFIe
 pC1cILWVAn7cOb30VSZljsy/Ki5wJnpPwgWX+GWO/pSwywJ1T/e55LQYX
 031P4L5oZCG+yl5ja6OB6ZJqyFtq/2ZtIb+6SpfmDGTwNBMEqZxtKr9UQ g==;
IronPort-SDR: rpK+SrjiKH6oTE4pltRr40ceCrenDoF73EatXl3EJ2j3yDdiyni1Ftec9e4OGtQofJ1XUCMspR
 q/0p/MG26CRWfItd86vMlbObH2xjdPvKZ3+Z5+yKLmiosTLxqt9IQNd7wKFlz6Du+wxKua6RuY
 C1q2Ba/E4+g6zgH9T9vuSKC6pRmivDmppRvmh076YUZ5BB9J9Q/3myjeGPEc0X9W/ApyF8mhHw
 +CsY44BK73X9MBE65Xk6fD+hFu/mqQUTGqOW/USxThITK1E4gtZidsKfb3g0Vu0g2im0RwtzLl
 vJU=
X-IronPort-AV: E=Sophos;i="5.64,438,1559491200"; d="scan'208";a="118389398"
Received: from mail-by2nam03lp2054.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.54])
 by ob1.hgst.iphmx.com with ESMTP; 28 Aug 2019 02:45:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JCMMKANyg/U5k3oxwLiZDNaPWmGO9mdTDSAQkHmHdpNMC16kcLNotKXFoi4aayjfmHkuRdzvauN+Xi6rJ9zI/A+VzVCQA+9gafeyEVOYXZzdZS4UMHgmm0AfWZ6jC8TowhcOG+OouQL1llJjhuLP/XbXbUBgthy1tjke44oTZ9L59SstfxxwnlvookPuDvChNoHQgi8i53urzx8wyytuH7CIh7/6K3+udSrwayvgKiWRpHvEq4eNxpje340c7d9opQ0LztouTLCBph4WSWHFsxe4hMeygZ1MOm4pxlD5DRZp2YTQgYrxH1zlsUQ9GW9SBtwgtW+U+s8G5F1CmJY8Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SQcwwImm4N72j9PLeS89EJT59CvY9N2nFACeEp0i+KQ=;
 b=F4SoVk10leexUQ1L80pvEEEkpxQrr0yF3yRL7q9scZUan8KfEPqJ1nnv+l112Xf8rBxKn7qwe5h+rIdvh22TwkYu/2oFhHjdi0ZlOXPoxWwJNkmvIP3o05QbhveBFp9uFYNjIhnsyhk/aTEkGai99IfmuhYxDKQYACc7SsbHgnqEzyLibgjhxab0ZcIEdecSpFes3ZpritInIX12G6fZui9tcMzfRLxwGxY9ApJcNUJnRc2ZS/ntsCQ3QkJO5VV4WeinHGPBHauFl5xxVlt33ZWp2XrZLo4xs6IFNFFR8H4UOe1xQGYE+a1eG6YcVBxoX8NKbYAMVew/8GY3oyZHOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SQcwwImm4N72j9PLeS89EJT59CvY9N2nFACeEp0i+KQ=;
 b=D+u80IOIMrnc+Eu1VPLVGsxfImBG+T2+nOy/YYlp4zDdQv+JGQIlEZ7EhlNUN5gGrNlPvCtBIa99g/XVXKGcCw5MZgVeCplNg5nvBvWJPDTpebywg8kv8ABpX8sTUFM5MNiJhW1l3/HQWuLSV6TWJ79PGGDUzMDYEtjHHlTreK0=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5399.namprd04.prod.outlook.com (20.178.50.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Tue, 27 Aug 2019 18:45:16 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Tue, 27 Aug 2019
 18:45:16 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH 2/6] riscv: cleanup send_ipi_mask
Thread-Topic: [PATCH 2/6] riscv: cleanup send_ipi_mask
Thread-Index: AQHVWDDwebiim2H4l0SE4FhCSsd/SacJcIGAgAPh34CAAgxfgA==
Date: Tue, 27 Aug 2019 18:45:16 +0000
Message-ID: <c59ea6fa44620fce82e38e1b611077aa7872d554.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-3-hch@lst.de>
 <2597d2209f37f064880d97dcb7162528c53f0dbb.camel@wdc.com>
 <20190826112827.GA15002@lst.de>
In-Reply-To: <20190826112827.GA15002@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fcee2d52-a462-4751-5672-08d72b1eb3ea
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5399; 
x-ms-traffictypediagnostic: BYAPR04MB5399:
x-microsoft-antispam-prvs: <BYAPR04MB539922C2956311A11E32530CFAA00@BYAPR04MB5399.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(376002)(39860400002)(346002)(366004)(189003)(199004)(6486002)(81156014)(99286004)(7736002)(66556008)(64756008)(5660300002)(6436002)(86362001)(81166006)(54906003)(1730700003)(5640700003)(66446008)(118296001)(76116006)(66946007)(316002)(66476007)(71200400001)(71190400001)(476003)(478600001)(486006)(256004)(36756003)(2501003)(4744005)(3846002)(6116002)(8676002)(446003)(6506007)(25786009)(26005)(8936002)(53936002)(2351001)(4326008)(2616005)(186003)(2906002)(66066001)(6246003)(14454004)(6512007)(229853002)(305945005)(6916009)(11346002)(76176011)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5399;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jvAzkFYdqAp69UBodK7SNawRhQVTraahA4DMAwHrfWqHLXEJLjUwXupGxJrZGMqytqhyMW8BLocFaI9LY+fGMClwp46vY1Yy4xsB0Z5SUGnAMILZ93uNS6snQPgreB6sjS3z+h0vIHEahVNvhQ95nwa6cdycPYedR3fzwfVRFRI/Dy0MLBeQnZcJT3uFW7C0mMukmFa3lVqx36cwFrwp7eoPfQ0huWbX0QGptnKjnQsIhiRxTn/TGxBEYNkMBnsmQlVX8aeRPU9dugciA/6mM+Uw3FiHd5LynbVur5eZvwPMpmkpQCu871SlHE7E4jK+VPYPR46EAlq6wYPr10u5j+8nA9XwgImweJRx6DjvQ83qXd+/IpzGbtdHMamEGJPeRM9eY0EybZ67cyfvVoU6DON9NxCKNw/IVpzkybmPe5Q=
x-ms-exchange-transport-forked: True
Content-ID: <597A6060454E5843BEB62A5A30BA436E@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcee2d52-a462-4751-5672-08d72b1eb3ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 18:45:16.2537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /XstGQjo6AeaRUhAygqEN73Uhiu5FObMgUw/ZnYApasGlINm5A35VSvGTmN8mpmeQ0OcfV9FzV/JO2nHss70CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_114527_695040_7F8DB839 
X-CRM114-Status: GOOD (  14.85  )
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

On Mon, 2019-08-26 at 13:28 +0200, hch@lst.de wrote:
> On Sat, Aug 24, 2019 at 12:11:15AM +0000, Atish Patra wrote:
> > Isn't that less optimized than previous one ?
> > 
> > This will iterate all the cpus set in mask twice during every ipi
> > sent.
> > For now, we won't see any different. As we have more number of cpus
> > in
> > RISC-V (hopefully one day ;) ;)), this may affect the performance.
> 
> By then we are hopefully done with using the SBI IPI code :) The
> native
> IPI code this refactor is preparing for won't need the hartid
> translation for example.  The point of this patch isn't really to
> micro-optimize, but to make the code clear and obvious.

ok. Sounds good to me.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
