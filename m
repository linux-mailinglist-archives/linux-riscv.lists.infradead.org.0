Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F66DCD13
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 19:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41WWhbiFfosCH1Gw42GcymaFEXj1Ov9oBZImJ3oIOl8=; b=BfKiNb2wZC+fLg
	yVCteg9V3Y5CHOsbnYSE+EHK6JAHMMGLgw1gFAbOZZnQCU8AsibGXIAYyQhEQKlINm1DJ/rkMw5rO
	3PoLyh1D/8ybWoeykaPV9ZBlGCrf4rET34Tk7/tgOksmn/iAOishNRR3ePrgmoTIYXwPSlcBXgjqg
	3PogWR7dMckxlEuShMRmz2+Dmad8l+FRyewPJdku4q0ZlubQPJwXwx6hk2hSo+zT8nexQ9tTOUyos
	yDEJFY0X65b6Yb92sBuIkrJc/zyjHz9XlZBPdFK0Y8pR79FVD5Qb+4cmF22T+YFWOqlt97ZccEuuQ
	TUNwDpCx1TgpWHL7m28Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWS8-0001z4-H2; Fri, 18 Oct 2019 17:54:16 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWS3-0001yI-LF
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 17:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571421266; x=1602957266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=oaJpbl2KIp05HqcOD4TAd3bXp2LZKmpimTVk7Wqq2xg=;
 b=N9w8vofEyifuNtguUqk9pjpObD5HdkAMW37KN9Gec+fHnWqcliypH3Hr
 taOsNR/1Dc0YOaEz2G2LwYwnaZiav1IRRYyHw64K5EepzetoAzMloLNx7
 h8+rxK3ZfDpJ5AZBUiVrHbVLItU7Ep3UhgFArtm/JHvB5YKs6a1xgKGNO
 +BZK+p/VNu5GfKwje5aFLvlIRkD1TjT7dwm8ulZMfgHNk4wK4XbJYlKWm
 DvTqDKhCYy/Ctl5Oy6yWtAzOCzoGnoHvlTqdSMyZsPMgwi3ON+PLDRVY/
 Lqb2tDFvlrarQH5xYNPCZy23ltKGi4UhjK7vEyEPHdtrvkGyWaw75qTak Q==;
IronPort-SDR: O3+ISaAKRro0lPiUTpGE6+tsfKLbo779yq/gA0FxTDDkxcXkvFZi3rsbAFtyR1S26StYtwZqMp
 thLlQDoBxDJDOXVuY61HrZIK9DZozBwcGeo140IELbu7WxPIKhr4JcFXVO/pAJEbF0m/ZenYMI
 lImnyL9e6hWaeCpY6BgEjsxpaT7jdkhqMrR/t/SIY9Q6pxZxZ5pjKrcw/esxXn0mRFXAB6Wn3z
 8pxRJQOc3h1FBuaNjtMBWLCl5Rcl9Fm/d0ntqZx1sjS6mJU+gXYHd0KVS/VjJ6hbTHgcLluVDj
 G+w=
X-IronPort-AV: E=Sophos;i="5.67,312,1566835200"; d="scan'208";a="221933761"
Received: from mail-bl2nam02lp2052.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.52])
 by ob1.hgst.iphmx.com with ESMTP; 19 Oct 2019 01:54:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWHSY/yoUY1zHJeRWOG54KjncFoA/L0Vas+ymQUQH6Yci5Ft4XM0dvm/vAu0suj7orvmiuDFOtDXmBZmqdCzQP24a2rl7G5zf5XPnzPnO43sO0t5b2zN0CK2nqtRA0HX+G4eBPurqfBohzYNqL3s1E9uf/ONiY8j0TAVh5RryMlkCj0QRyQhN8d4X9xXw4jzwdz+0gIzCZdYC0aI9IoGFLtronEcLTE6RU4GOfGlSXHeltppOwrCXf1vmmeXLAZ8xyH4YN49LVI+xMylCsrWmIY6MKV37I5ZcKzHGvWw0MfKy6B6Zb9TMnHC8Hmx3reesPq1s+CUe7Ah8MR0Dv53Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oaJpbl2KIp05HqcOD4TAd3bXp2LZKmpimTVk7Wqq2xg=;
 b=LxQJGaa2/UJO+nIuXu3j4Iyi49H0BiRxxznmz9VBOF+0rxtaJZ1zSqrk6kht433AkiENyp14oTqq5u3fCS2AxGacFi5dBq+rJQvlzuk41gtQQCZbPZT+TEfDeajzvRZXDk7ujiWMJw057KMxAuP8BC3NWWG0AbToRj3BW0mPhwbgHH57W26jLshDNZOABXW5L90kaQySlgetNrpv5a2Z0WCp6iDgpr9Fr+1gRkLkdJVvPDuZ2cE05/KDVc5bF9gZV5QbjTRDrQHHjk+UjTm9ioHCUZbTpek5yOjL5rCnKMchB7SehnOiZQHfwFoEGQIMCOL9qgKZmniMAjyFL5Nukg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oaJpbl2KIp05HqcOD4TAd3bXp2LZKmpimTVk7Wqq2xg=;
 b=zobaZlSTXq3WTVyPNfhAAYCAf1H6A6rYOf8IXAIgX/7+t6kT/l8TAJH4EOlKZML9GSp2YZ2vPxA8DeXUCIKGvoTn0hXSY82A9OOyOktFqQwLK+cx426Ef/z9P8Jx5bFh1NGSBulHQ7OXc8W8+PaZT8bbr+jw9ZOv4h7sWkGKFVY=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB6262.namprd04.prod.outlook.com (20.178.232.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.20; Fri, 18 Oct 2019 17:53:59 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3%3]) with mapi id 15.20.2347.024; Fri, 18 Oct 2019
 17:53:59 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2  2/2] RISC-V: Consolidate isa correctness check
Thread-Topic: [PATCH v2  2/2] RISC-V: Consolidate isa correctness check
Thread-Index: AQHVfu0fDoAFDM4020SNIx23VNFenqdgImCAgACZzQA=
Date: Fri, 18 Oct 2019 17:53:59 +0000
Message-ID: <a45f0c0e3db2e852770485bc581d489b6ee7545e.camel@wdc.com>
References: <20191009220058.24964-1-atish.patra@wdc.com>
 <20191009220058.24964-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1910180142460.21875@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910180142460.21875@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e41c5587-c92d-447b-4675-08d753f4276f
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB6262:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB626271824621AD19985CD5CCFA6C0@BYAPR04MB6262.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(39860400002)(396003)(376002)(136003)(189003)(199004)(966005)(229853002)(6486002)(86362001)(4326008)(7416002)(4001150100001)(5660300002)(8936002)(118296001)(478600001)(2906002)(14454004)(186003)(66066001)(2351001)(36756003)(6116002)(3846002)(2616005)(71190400001)(71200400001)(476003)(66446008)(316002)(76176011)(256004)(66556008)(6506007)(446003)(66476007)(11346002)(76116006)(26005)(64756008)(66946007)(81166006)(81156014)(6436002)(8676002)(2501003)(5640700003)(6246003)(7736002)(25786009)(54906003)(6512007)(6306002)(486006)(102836004)(99286004)(6916009)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6262;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7/zCNB44tFvC4gap487EjQFF6lTT6iqgXAUZDDdQio2P8i51/r7gVmSZMBGwB9T4VsHO33o1+MzThx1sVBlC1VMAxj09InV8lAL8aaIW1VLwyRnFlF3oSnDvquGpP8eaw5It1/L/CXtyVTdmcQGTlzK2IC0XB3uSjzMjhyK3dVaBscyfG75zAsC41hfExKBtV4Vzk2/Ry+HS5JRJ7mG0dV9vwZzAXwwrvBvA0ejmdR2T+B8Kv6d+y7NUcz+2D8PKHq6SIv1zYH3pk8B0a4B+e2RR4lDUUFs2umE0mz76bQCPmqBkbGdS1HraWvHnT1FOqaRLV7SWwX2zXWx/Nxt1zo4LqSplJCR2EbuJljtzU/7DY/ODlxvKGAhXUHQPhFdyNGfEcZQIEp/XmWY/kYVF0DxJb8kLM/wzSyHwGPXCVxjtiwc0I5PknfuZa6TT2sAx1O/UmV2Y5IkU7bOFTEI5pl0RsSckaAXZ2zo4kHjvkcE=
x-ms-exchange-transport-forked: True
Content-ID: <FD0F904F9F291B41BE368A262B3ADA8B@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e41c5587-c92d-447b-4675-08d753f4276f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 17:53:59.2935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cSHicCRO9IHv/Hqbuu1mAKKI/Ybls90TOAeC7BFM/rX3ZH+uFf0acm2/gTISBP1h64iWsFRNxj5vUTBVEEH93A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6262
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_105411_785606_30D93F3E 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>, "johan@kernel.org" <johan@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "info@metux.net" <info@metux.net>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-10-18 at 01:43 -0700, Paul Walmsley wrote:
> On Wed, 9 Oct 2019, Atish Patra wrote:
> 
> > Currently, isa string is read and checked for correctness at
> > multiple
> > places.
> > 
> > Consolidate them into one function and use it only during early
> > bootup.
> > In case of a incorrect isa string, the cpu shouldn't boot at all.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> 
> Looks like riscv_read_check_isa() is called twice for each hart.  Is
> there 
> any way to call it only once per hart?
> 

I had to add the check in riscv_fill_hwcap() because that function is
iterating over all cpu nodes to set the hwcap. Thus, some of the harts
that are not available due to incorrect isa string can affect hwcap.

We can check cpu_possible_mask to figure out the harts with invalid isa
strings but that will perform poorly as RISC-V have more harts in
future.


> 
> - Paul
> 
> > ---
> >  arch/riscv/include/asm/processor.h |  1 +
> >  arch/riscv/kernel/cpu.c            | 41 ++++++++++++++++++++++--
> > ------
> >  arch/riscv/kernel/cpufeature.c     |  4 +--
> >  arch/riscv/kernel/smpboot.c        |  4 +++
> >  4 files changed, 37 insertions(+), 13 deletions(-)
> > 
> > diff --git a/arch/riscv/include/asm/processor.h
> > b/arch/riscv/include/asm/processor.h
> > index f539149d04c2..189bf98f9a3f 100644
> > --- a/arch/riscv/include/asm/processor.h
> > +++ b/arch/riscv/include/asm/processor.h
> > @@ -74,6 +74,7 @@ static inline void wait_for_interrupt(void)
> >  }
> >  
> >  struct device_node;
> > +int riscv_read_check_isa(struct device_node *node, const char
> > **isa);
> >  int riscv_of_processor_hartid(struct device_node *node);
> >  
> >  extern void riscv_fill_hwcap(void);
> > diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> > index 40a3c442ac5f..6bd4c7176bf6 100644
> > --- a/arch/riscv/kernel/cpu.c
> > +++ b/arch/riscv/kernel/cpu.c
> > @@ -8,13 +8,43 @@
> >  #include <linux/of.h>
> >  #include <asm/smp.h>
> >  
> > +int riscv_read_check_isa(struct device_node *node, const char
> > **isa)
> > +{
> > +	u32 hart;
> > +
> > +	if (of_property_read_u32(node, "reg", &hart)) {
> > +		pr_warn("Found CPU without hart ID\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	if (of_property_read_string(node, "riscv,isa", isa)) {
> > +		pr_warn("CPU with hartid=%d has no \"riscv,isa\"
> > property\n",
> > +			hart);
> > +		return -ENODEV;
> > +	}
> > +	/*
> > +	 * Linux doesn't support rv32e or rv128i, and we only support
> > booting
> > +	 * kernels on harts with the same ISA that the kernel is
> > compiled for.
> > +	 */
> > +	if (IS_ENABLED(CONFIG_32BIT) && (strncmp(*isa, "rv32i", 5) !=
> > 0)) {
> > +		pr_warn("hartid=%d has an invalid ISA \"%s\" for 32bit
> > config\n",
> > +			hart, *isa);
> > +		return -ENODEV;
> > +	} else if (IS_ENABLED(CONFIG_64BIT) &&
> > +		  (strncmp(*isa, "rv64i", 5) != 0)) {
> > +		pr_warn("hartid=%d has an invalid ISA \"%s\" for 64bit
> > config\n",
> > +			hart, *isa);
> > +		return -ENODEV;
> > +	}
> > +	return 0;
> > +}
> > +
> >  /*
> >   * Returns the hart ID of the given device tree node, or -ENODEV
> > if the node
> >   * isn't an enabled and valid RISC-V hart node.
> >   */
> >  int riscv_of_processor_hartid(struct device_node *node)
> >  {
> > -	const char *isa;
> >  	u32 hart;
> >  
> >  	if (!of_device_is_compatible(node, "riscv")) {
> > @@ -32,15 +62,6 @@ int riscv_of_processor_hartid(struct device_node
> > *node)
> >  		return -ENODEV;
> >  	}
> >  
> > -	if (of_property_read_string(node, "riscv,isa", &isa)) {
> > -		pr_warn("CPU with hartid=%d has no \"riscv,isa\"
> > property\n", hart);
> > -		return -ENODEV;
> > -	}
> > -	if (isa[0] != 'r' || isa[1] != 'v') {
> > -		pr_warn("CPU with hartid=%d has an invalid ISA of
> > \"%s\"\n", hart, isa);
> > -		return -ENODEV;
> > -	}
> > -
> >  	return hart;
> >  }
> >  
> > diff --git a/arch/riscv/kernel/cpufeature.c
> > b/arch/riscv/kernel/cpufeature.c
> > index b1ade9a49347..eaad5aa07403 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -38,10 +38,8 @@ void riscv_fill_hwcap(void)
> >  		if (riscv_of_processor_hartid(node) < 0)
> >  			continue;
> >  
> > -		if (of_property_read_string(node, "riscv,isa", &isa)) {
> > -			pr_warn("Unable to find \"riscv,isa\"
> > devicetree entry\n");
> > +		if (riscv_read_check_isa(node, &isa) < 0)
> >  			continue;
> > -		}
> >  
> >  		for (i = 0; i < strlen(isa); ++i)
> >  			this_hwcap |= isa2hwcap[(unsigned
> > char)(isa[i])];
> > diff --git a/arch/riscv/kernel/smpboot.c
> > b/arch/riscv/kernel/smpboot.c
> > index 18ae6da5115e..15ee71297abf 100644
> > --- a/arch/riscv/kernel/smpboot.c
> > +++ b/arch/riscv/kernel/smpboot.c
> > @@ -60,12 +60,16 @@ void __init setup_smp(void)
> >  	int hart;
> >  	bool found_boot_cpu = false;
> >  	int cpuid = 1;
> > +	const char *isa;
> >  
> >  	for_each_of_cpu_node(dn) {
> >  		hart = riscv_of_processor_hartid(dn);
> >  		if (hart < 0)
> >  			continue;
> >  
> > +		if (riscv_read_check_isa(dn, &isa) < 0)
> > +			continue;
> > +
> >  		if (hart == cpuid_to_hartid_map(0)) {
> >  			BUG_ON(found_boot_cpu);
> >  			found_boot_cpu = 1;
> > -- 
> > 2.21.0
> > 
> > 
> 
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
