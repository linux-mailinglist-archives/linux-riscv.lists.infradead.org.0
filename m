Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB5E959F2
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 10:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTIi1n5kyGwqUvt0j7YQ2qi7/yxe8u7vT2dfKh6Bi7o=; b=e+ugmHjlmxBugn
	GS9Hos12OsVhnKdVd2uy8wZWgRr6ldLkXy44vbLuY8IM/WWpMydxFTHyPuk/s3j8agGvPCdTXT7np
	kStDZLPGFN6aCQjTAFwEPDRgSer8iMS7rw9D/e3u4DpQfkgz1XNN/E94F48RO1amC6sa2OdGvPVrh
	szOmNM9fsWqU9V9P9Nf2yd+yiWAhc573Y1kPIs1bDdg0it1SMBb2FdRML4It9Go6/Fm1rwZcvu0UZ
	KR4IXryckuUF+DCDCt40ayLUw8wFX5fDbYCDMLN1zHy+gmDkwsQl9MbdUUHsvjZfl/DNtl2YMCPzo
	9BqUzLb5V9l+r8LM7Ptg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzin-0005fa-4K; Tue, 20 Aug 2019 08:42:29 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzii-0005dU-7s
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 08:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566290563; x=1597826563;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9/+TwHj058yOzTfd6bqpGLe2KllYeZCcKrNBUVp78Tc=;
 b=IoMmmrjf1miCy5Q9K7rNmi6KC0rvjfWjJNoYw6Sk8DHiV5N1kVWpf13z
 ctu7ogq0v8+5DY/Phbr5De4Y/OJwczlx+T4XPvpwTyz8ukGi9muO20fBp
 flfda3w7YrG72N5VdHbiEpf4UVZEIcu5XKYA+G4alNs25p5xWZ+FFn6mU
 km+VMGwl0yPxS2VpsGfKLANB2xpMOz57o8LJI6q+JXAAdS7cfBlFbv2Nb
 Fxnkm6SsDO7RDtg0EnomG9GI5B+ba++dwggx4rATn04Z/Fz1McgjYomqZ
 ofC82T44hTxInXwzlRXkc6SA2q+IlTw/U6pCgLxv3gAtI96Ho2Iquh11Z A==;
IronPort-SDR: j7PuodBqey8iNAqsic7j4QYmxJ3e4riQwSRxfFs5Xj/BHJLrZjsp1p8xPPcK6ipyOMDgWVuu9l
 3guqk67ouKdKsmJyPVkNScuVL8Hm3a8PdW6WL/WRADL8paJLb5uHfl33Zf7IsTk0XyQdRbJoyc
 KUn9Bp1XBGJ4cqVbzrHZzHXB6W1hbaLFoq9gcrqWEk8649szmA4bQkaDo2ZagF2SY7d5VlcmQm
 JKVYMgA/7cRQHbwnrI5s1M7SLr5zykllAsWVYaTzZVOMZrE0fuL8ypbwVQa5KIIAh9UpD5kKXL
 FY4=
X-IronPort-AV: E=Sophos;i="5.64,408,1559491200"; d="scan'208";a="216619242"
Received: from mail-bn3nam04lp2055.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.55])
 by ob1.hgst.iphmx.com with ESMTP; 20 Aug 2019 16:42:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQlFFDFqCttV1Jdz4Qbtn3AZIPdjJwQL4dG204QPmhxVczbS+dNdzwS7k7Ov/w2uWPNRNYP3h0LjNGpsXUyAvtxG1TrtSMxHiohuvnsP8U9/89fbL7rnEEO5XyOQ7SoHcI5UTUkY2XBImeOTZk1/jobbXNU4AWSCW4WmBnvZvD3BWYKul1RCoU8wOOVYdEAqyviwjb9sYWHSDUbD6TA6rejDOt1sk5bWywgZKA/7kEZahg5g6UHVduehrzsFzaySzEFtuWdlSXR/usPquBAOGMA0TfXnfUkJwMZKwuYD7DZz7JGrLv4C/B+zRHTPTp9S2IOu4iheHaN+zaoyJIJ44A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9/+TwHj058yOzTfd6bqpGLe2KllYeZCcKrNBUVp78Tc=;
 b=Vn8bpEGI0mBGZbMeY+Y9kjG6LCfKrKvbfBG4+H47wGN+Mo6NCRu4zVYyLxVTwWy4z6Pz0xmSkMPDhxugJzlRxy8IlXHdgERmaRfFbklVOB8hf+2N69zU95jczbXZDFcERDla6stTUuRqmSqhrL4QGBUsjy7gGxvxwA5uHeZY6vyvhe/D1qiK+wmwqya4YNRJoSryg58VcAUVylKZH6S6UF+6l077WYx2u7F9iJPkJSEsKykla3hsWLdsam1BM58t/bEICu6QEdX9QEM6sbKGYzMOAaJLd7IiOQtT3SMCAaay0J+3q3dSlr6OYUZxrKyVkzie9VPaRU1jhdFOasBDFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9/+TwHj058yOzTfd6bqpGLe2KllYeZCcKrNBUVp78Tc=;
 b=kA2qpTiM2786XMH3wgbH8ufOyYX54gu5RjEs5T0wDmCeqEKP5rpg3tPXV1rLhBA3Y5huOMKgkdzLJmu0NArsEQqOspZ2TvztB9v7a/64Dndb0rbozTwBH6hbS2U4nHwQ1LOLf8FnLEtzlKANyIgZiD086R1wZZwRixdqnmxG0Yw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4741.namprd04.prod.outlook.com (52.135.240.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 08:42:19 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 08:42:19 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "schwab@linux-m68k.org" <schwab@linux-m68k.org>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Topic: [v2 PATCH] RISC-V: Optimize tlb flush path.
Thread-Index: AQHVVvDfUBJCIAOoL0y7jXfLdcYugacDqN07gAAPmgA=
Date: Tue, 20 Aug 2019 08:42:19 +0000
Message-ID: <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <mvmh86cl1o3.fsf@linux-m68k.org>
In-Reply-To: <mvmh86cl1o3.fsf@linux-m68k.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34d8a53e-2485-4ec9-7b28-08d7254a5018
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4741; 
x-ms-traffictypediagnostic: BYAPR04MB4741:
x-microsoft-antispam-prvs: <BYAPR04MB47416253685AB77160E064C5FAAB0@BYAPR04MB4741.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(136003)(39860400002)(376002)(366004)(199004)(189003)(14454004)(6916009)(478600001)(4326008)(6246003)(229853002)(6436002)(7736002)(5640700003)(1730700003)(53936002)(66446008)(76116006)(14444005)(66476007)(64756008)(6486002)(81166006)(6116002)(8676002)(2906002)(256004)(66556008)(66946007)(76176011)(36756003)(25786009)(54906003)(316002)(71200400001)(71190400001)(2501003)(99286004)(6512007)(486006)(81156014)(186003)(2616005)(6506007)(476003)(305945005)(46003)(446003)(8936002)(11346002)(102836004)(5660300002)(2351001)(118296001)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4741;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: b0c7Ak1u9Fe98fG9DPiQ9pmVbdRUDCL235wsFriQ4qrutif/AnRED2n3gv8bD7ecT+uy123bhFrDihR2GGNtGtmbZljsrQi8WdEzfUSutDsTHDevKJhodJJFERzOkDcB/93xcl51Ru6yKPLMsFhK/2HswCyVM9VKWq96GRo74S9NbQpxXi+Uvw0DRuiBNp/6BtOc9q0UKGqO+fmjoOqf2dTEANOAfw286cHVuFvRU/z9mauzMh1inrL+M/+xoLg4u3n9QlwXFFZzELk7BGs0wt548as9/ioRLqqSXxH1D1K4thzlERUTQ7wCq1sFXSOS43A64+oZkK4WuZjjVx1LVJquOsaL17MUS063c6fxKlGkyzeWp3E+VkB7Bow2Iqh9zcijFfpHiPJMQ6ABa8e/Merb/A7Fgx8BVs32TVQkyFk=
x-ms-exchange-transport-forked: True
Content-ID: <392A880A5F7B66498DB7D6269537B457@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34d8a53e-2485-4ec9-7b28-08d7254a5018
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 08:42:19.6054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mI+GuCd9YbRcXfi9nJvKKR9nbgjwOVOzsGo5+X4mQ/3r79yq+7BGFp7VUs2KDu+DAKrxTrYLFs3p5DqogM6uqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_014224_424637_CA139E2C 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
 "hch@infradead.org" <hch@infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-20 at 09:46 +0200, Andreas Schwab wrote:
> On Aug 19 2019, Atish Patra <atish.patra@wdc.com> wrote:
> 
> > @@ -42,20 +43,44 @@ static inline void flush_tlb_range(struct
> > vm_area_struct *vma,
> >  
> >  #include <asm/sbi.h>
> >  
> > -static inline void remote_sfence_vma(struct cpumask *cmask,
> > unsigned long start,
> > -				     unsigned long size)
> > +static void __riscv_flush_tlb(struct cpumask *cmask, unsigned long
> > start,
> > +			      unsigned long size)
> 
> cmask can be const.
> 

Sure. Will update it.

> >  {
> >  	struct cpumask hmask;
> > +	unsigned int hartid;
> > +	unsigned int cpuid;
> >  
> >  	cpumask_clear(&hmask);
> > +
> > +	if (!cmask) {
> > +		riscv_cpuid_to_hartid_mask(cpu_online_mask, &hmask);
> > +		goto issue_sfence;
> > +	}
> 
> Wouldn't it make sense to fall through to doing a local flush here?
> 
> 	if (!cmask)
> 		cmask = cpu_online_mask;
> 

cmask NULL is pretty common case and we would  be unnecessarily
executing bunch of instructions everytime while not saving much. Kernel
still have to make an SBI call and OpenSBI is doing a local flush
anyways.

Looking at the code again, I think we can just use cpumask_weight and
do local tlb flush only if local cpu is the only cpu present. 

Otherwise, it will just fall through and call sbi_remote_sfence_vma().

....
....
+
+       cpuid = get_cpu();
+	if (!cmask) {
+               riscv_cpuid_to_hartid_mask(cpu_online_mask, &hmask);
+               goto issue_sfence;
+       }
+
+       
+       if (cpumask_test_cpu(cpuid, cmask) && cpumask_weight(cmask) ==
1) {
+               /* Save trap cost by issuing a local tlb flush here */
+               if ((start == 0 && size == -1) || (size > PAGE_SIZE))
+                       local_flush_tlb_all();
+               else if (size == PAGE_SIZE)
+                       local_flush_tlb_page(start);
+               goto done;
+       }
+
        riscv_cpuid_to_hartid_mask(cmask, &hmask);
+
+issue_sfence:
        sbi_remote_sfence_vma(hmask.bits, start, size);
+done:
+       put_cpu();
 }

This is much simpler than what I had done in v2. I will address the if
condition around size as well.

Regards,
Atish
> Andreas.
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
