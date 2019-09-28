Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EABABC0F93
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 06:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HcTL1QWOnbqsQMJF03YAPwdQEsZg6r+ALD7BnrDg1I=; b=o8C3qnPv3Bidda
	DBx/bebyAstXWvwk3eWijd3BERFQt4kTTga6vy0sdy+bMneMmqEpiWOA8qa52cZPLzw89Wvmf8CrB
	mGYmnVJU0ZIKkYVz35k98wI8g5gLQWQWD143G1zbyQBlvbhvhOb921/jR+cKH2Pg91+if9+BChjRo
	1OKWwkZePlPuKs/zCQN3oP7iY0TlsPw02N+S33A6ueoMhXa783GHTmXPGvgkhmWGQXAhdR8fKWCXQ
	ZmG1LZIxYirE6QZotU6zy8KPYro6jUYY+795Ja5ZRX/6IPMFar8j9JZXwEyK32dJPZDyUbNm+ZTyf
	R3hDNk0EdWTwRKhpgOrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE4Gi-0000pC-BJ; Sat, 28 Sep 2019 04:23:40 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE4Ge-0000oc-IJ
 for linux-riscv@lists.infradead.org; Sat, 28 Sep 2019 04:23:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569644616; x=1601180616;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=U8KL3APBC5+OlPCDlY2NzvjdXwQWYeVuz/KBqn0i68M=;
 b=kGVBEDpVinLORIrgNzhWpOXaPbEzZu4SoTx9mPexFVpcCgG2f5b+XaAL
 tlHhqAKoJ54tZtQGCXPGbCs02fcUbgMsafqerxgO+018EQgCWhLCwZka1
 HPW2OLFot2XYgvMlxloqNAkVw1uOi5vfQdFTC8+bYPKz7jKNSW7HfdeES
 kwEs8Fj1o2jBZQvGLXYqmKoyj9ms6zFvgMILLdaZFPDDqaNYCfxBTSdVT
 DiI17cRKGM4ZO6E9PrXHOe3JMqm7tu66o/xNDWmRepw7df1/c7f2pZ3af
 /cZszkxxeztagcJzpsVcM92gvGzdL1bXbckpK9E8LAZmmtqb/rCaR9pjl A==;
IronPort-SDR: Rpqi1y6k656gaf687pzySQoblYNqro/qa6ghfPz1e9xSaJyDF3P2eFSBtQ9G6BQej5owHEBp25
 BXLX3GLts/ZLJj6AKRPCfpx+jQQrnxFuCcb69GQAUWo2wZwyEdi8nDlkSWH+BYCeO4Db+pz5Pz
 mjZybkz0muQ9sOeBZf+7MG/b1I7gFyViUT+ieVGUqxbmzG3AzqXtIN5vqT68VzANv+YbKUodme
 3UXD+xzES0TabOKi27F/atFQnrpnfhhqHs78lvgNJWFRDKqecNJHsEFO8yGFvd6c5wVMoIvakW
 GYs=
X-IronPort-AV: E=Sophos;i="5.64,557,1559491200"; d="scan'208";a="123776365"
Received: from mail-by2nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.52])
 by ob1.hgst.iphmx.com with ESMTP; 28 Sep 2019 12:23:29 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L9m6APx2dlh7W5COm4cuVxtZ2DtwcMmcZ7IhmmUj2BnOYzjQt959MeeEjE53zsDbADGS+DeICb7xoXTu8pVr6rz0LtgmUO0bEMa8A4foKsVXJSotD0/iYw4bFZ8kyxwxjii2f80dPe6MKUgyposfutI0HEHP5VohFGFYlnLR1J60XN7hr6AgI0Px11H7b5sWdwVLp/xVRp2OJihcMS+O5BAFl6qIDSGERDDcmrYYUl6Yb2C420nYnySv72h6JATGyDUZv1r0EJrVqT1o1fGl7B17awCbU3b6I91/caFXF62bvQPYauhxT1ylfdpwCbBHx40DNK+dPs7jpH3xny5j4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8KL3APBC5+OlPCDlY2NzvjdXwQWYeVuz/KBqn0i68M=;
 b=YYRi8tJPkm0MCQ0QJm4MsrTgpePCmS5f+dbGcyPEkbWCgZaeaV8h9LKMMWWTrng3GFF552bJ7LJH+QB2dIpVSyMsNJVYJvenQvlZdLvqR6sw86oTEmfgxsL92ul18OKMaxCZtlS0mJ8koGJkb5XnpaeHNvH+WIEP6Jsp8BZmTpOyTCEK1kCKInJX4780979gEHI2QX4/vB9KgRD7GeYx3T3HsHSNTXsOGkPP4p1BEmu0i0UuDeNHsykN4pqug1DOORkw/7XfO+70IRkedqhJRBfeTnf9pCb5YJMlEQ8jIwxNtKyFZ+sD3ByfcAAXvyHPtS1owtLnWTreEpb7c+Ir7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8KL3APBC5+OlPCDlY2NzvjdXwQWYeVuz/KBqn0i68M=;
 b=tgroT4rla6Wiu+m2sOyO4s6wpJJCCeX10vpxLGSgqk4x+A85Zgr/k6q5GuZDNLQMaUD0bXctU2fmnCEhZR8deRt/WewAF/K76cH2DuJBragZ/QvUO2P3Bf5C2xRu/kDqkPUeQl/MpU2gorZqJJ6c7XITiLaaYyOsPOXSDOwuTbU=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5989.namprd04.prod.outlook.com (20.178.233.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Sat, 28 Sep 2019 04:23:28 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2284.023; Sat, 28 Sep 2019
 04:23:28 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v4 0/3] Optimize tlbflush path
Thread-Topic: [PATCH v4 0/3] Optimize tlbflush path
Thread-Index: AQHVWL967ZZ9b4+26kS/tTJYa+paEqcUnDiAgCwbPIA=
Date: Sat, 28 Sep 2019 04:23:28 +0000
Message-ID: <3bd071e32ef564c91eed9e921423a95a092ec111.camel@wdc.com>
References: <20190822075151.24838-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1908301939300.16731@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908301939300.16731@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bf65256-ca7a-4bcb-edaf-08d743cb9cf5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5989; 
x-ms-traffictypediagnostic: BYAPR04MB5989:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5989C87E31DFC91527BF9111FA800@BYAPR04MB5989.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0174BD4BDA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(376002)(39860400002)(136003)(396003)(189003)(199004)(64756008)(66476007)(66446008)(46003)(2616005)(102836004)(5660300002)(6512007)(2351001)(5640700003)(11346002)(81156014)(6306002)(14444005)(256004)(316002)(71190400001)(186003)(76176011)(54906003)(8936002)(966005)(71200400001)(118296001)(8676002)(14454004)(7736002)(446003)(486006)(476003)(2906002)(76116006)(66946007)(25786009)(6916009)(81166006)(478600001)(6506007)(99286004)(305945005)(66556008)(229853002)(36756003)(6436002)(86362001)(2501003)(6486002)(6116002)(4326008)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5989;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YJ04+G45hAvImM2reYzz9y5e5JcOFA+13TRnH7cACyGlInCYugq6SeAoVhMcqPAewV0UcfsMuUkYpigcXsBPSwBfXsY3/cXixq8+43q6Ayk0asYDOWqvK5Gs7R19wAMqSDoBySD2O0/nFGgGMJYWXQinFjCqzzlal78In3ntNsscxtfElH7aVscQBmmOKXYKTvLSShhs5HuD4TDCA5shZewjoYdx54rn0bNiyTSBoZCBRtOnlCRmgK5wPpjS/x3YbRFlWuEoe36QnPyTfIpy1qlkVbBCLAQeGQaBPJFdKATxo2rqrHWCcViUtO7vsCk6Ruy82mAAqTQ5EXS+Kx9bi6Zj81fkGTgrR/HtnmcvTTeVaLAjezsaYRK9mdSU5ubJcFoQTqD7WX8Q5QI9gFe/ikMGqFWl8CUbt6EWIhhDuoA6KeEdXLdRUQjIiLNZh75CaetqbTMpc7G/GrI4WZe6Fw==
Content-ID: <BC093F696131314099EAF53920F7D38A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bf65256-ca7a-4bcb-edaf-08d743cb9cf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2019 04:23:28.6139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g7Rgk3dOHY6ZComn89552GwoG0JOrArmz12N+4LzWLWqWTIiy5F/nlGBaDP9qGu/htzD8ECWtgcecJvLXqLACA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5989
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_212336_693870_58012C76 
X-CRM114-Status: GOOD (  22.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-08-30 at 19:50 -0700, Paul Walmsley wrote:
> Hi Atish,
> 
> On Thu, 22 Aug 2019, Atish Patra wrote:
> 
> > This series adds few optimizations to reduce the trap cost in the
> > tlb
> > flush path. We should only make SBI calls to remote tlb flush only
> > if
> > absolutely required. 
> 
> The patches look great.  My understanding is that these optimization 
> patches may actually be a partial workaround for the TLB flushing bug
> that 
> we've been looking at for the last month or so, which can corrupt
> memory 
> or crash the system.
> 
> If that's the case, let's first root-cause the underlying
> bug.  Otherwise 
> we'll just be papering over the actual issue, which probably could
> still 
> occur even with this series, correct?  Since it contains no explicit 
> fixes?
> 
> 
I have verified the glibc locale install issue both in Qemu and
Unleashed. I don't see any issue with OpenSBI master + Linux v5.3
kernel.

As per our investigation, it looks like a hardware errata with
Unleashed board as the memory corruption issue only happens in case of
tlb range flush. In RISC-V, sfence.vma can only be issued at page
boundary. If the range is larger than that, OpenSBI has to issue
multiple sfence.vma calls back to back leading to possible memory
corruption.

Currently, OpenSBI has a platform feature i.e. "tlb_range_flush_limit"
that allows to configure tlb flush threshold per platform. Any tlb
flush range request greater than this threshold, is converted to a full
flush. Currently, it is set to the default value 4K for every
platform[1]. Glibc locale install memory corruption only happens if
this threshold is changed to a higher value i.e. 1G. This doesn't
change anything in OpenSBI code path except the fact that it will issue
many sfence.vma instructions back to back instead of one. 

If the hardware team at SiFive can look into this as well, it would be
great.

To conclude, we think this issue need to be investigated by hardware
team and the kernel patch can be merged to get the performance benefit.

[1] 
https://github.com/riscv/opensbi/blob/master/include/sbi/sbi_platform.h#L40



> - Paul
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
