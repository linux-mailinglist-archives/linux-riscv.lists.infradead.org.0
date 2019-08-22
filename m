Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E18A98A1F
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 06:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkJsHfia+pDrh0OVY9gqhVy7BGx9MM5AdK4IKT1RX1w=; b=BKqtu5ItyV1y5G
	3Wh8rbhYtrdYFgNucgBoY/VjlKt+Rm1K7SInaWjUH59hSMDkWfCyCZvPk8oaPi5dz+t2nAYGtGhS1
	usTOTtK13T3Rv46bxOJ8SazIQ5+sxDS7GdHHSGZY38VfGvjOSKSz+OUVa6167sVvLXhMP+FmldjOl
	LzRmQjuwbjy9cL0PDIr89Xw9eJAPohjbRWv+tjcPWaU8VJiSUBr58QnUWBrCQicige4ckCcQsMjiS
	GoJv6EwI3KbImGnvq7bo6kC5bRZwkFeAck+ophK2qJTviUnxgvbQ/t3UbxOnKBWAp90aK4QPeGQNk
	Oq6AvacVjORNJLY7/YKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0eI6-0007U4-04; Thu, 22 Aug 2019 04:01:38 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0eI0-0007S2-4A
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 04:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566446492; x=1597982492;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=BUilaCWlb9HbDt0OcS+IhyTuYoposAVKNiiyeL6RP/M=;
 b=GHVKiTGxhQ3L2WybSf/ipfUdYmvu343eJCqLmGAbElvPFEJcEPqV6K/G
 J/hVNtymphgSV8ZPnYy+pQSwZckymT/0L30/nFeteijY54Jgqp2E8iNut
 anNRbUEgQwEGfbQkq7on6dJK4kqRcmOoFr6xjJtI/dxFI7AkUF/9Bvuac
 O4NVq9AF7lTpxpLhZzhzXQTY9LZ8mEi494/MfL+hg0LS0EIcBBemsKuAq
 GU8Ac6f8K49mf/HIZh/t1gnZPVS2eEBBfTdjLTh2EzNbhYXmGEqbhdvJg
 t2xpSVy42Cmoe7pUYeV8e7dKc+ES2ngaQlD32405zjiITgZqTEU2WwaN3 g==;
IronPort-SDR: jKCwGXvRStuix7PsiDZcmyhJQrKwRa5CPuR01RQt+tXmCf6XnwlmZJqxj1EBcrAeZmJDQ9GggN
 f+j/w3PHOBjfbyPWClbVmNFTefNZVQlPaPMJMYNPplOK6y3XblqQ4JqM9YYoBcVN+bXf7il1na
 fOc4ExWX87xWlf+Crd0VarMnOprviPC/rDQrj75VZUC5K5vjlUwzIoennQTmpDa4hsNfi69gGV
 7z0E9ZSLA6HYPq8js181J3udcvNwivWcngZLrrvi3LwnXZZ+a53MzNT3DbSdhb5Zwz7VtNoADv
 STM=
X-IronPort-AV: E=Sophos;i="5.64,415,1559491200"; d="scan'208";a="117317468"
Received: from mail-bn3nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.59])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 12:01:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VL0zie42cuwKi3nx9Ynn+DSQQeULYpmomNbNvxUUu+aBNx5vlCrPPf6e6uVbD3w9ZLi5ZDUK4WM7yAjdi5WT7AOyGEp2tOI0CAJ10WK/nwijhjkBIKj0npextpj4p+7hL0OUe16mHQTOUBliBd9l4+eVo5GhWBiGo61GXIhQhOymLisfava3vctaB40gpebZlclMEzkQjUcBOS221d3LI/76i/KPXJMVJPU6nkjAKUzt9gZt1NjeUehZin1KPPue/ztK7eJTxS/2VJ4ghVo0FgZ/DPmMIQ1a/i02ltkGbFFTFCV1bfjOZXHVZZnLzk3i6Eq0zgMKemYcfJ0R6WxSYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BUilaCWlb9HbDt0OcS+IhyTuYoposAVKNiiyeL6RP/M=;
 b=oE41s4EyKxx7eJcsc42C+QDO24Vy9Io+QX0R1LQ+cB9+a3q1bSO0VonSoCnmv5F+e3zavNaxEvbcxEp6Ptw3oAosVFfIQz9k9lp6afEIQ6Zs8EOFMP87md1SqcvvckHNCY/Jzd0/XQ1UNRV5aF8V0h54VckIOOhYCrGbzcmRJtZFTerrGoNMWQZP3bMb/SmX3Odso6InDzXgln2Tfce5mPGncQ0+o0brbMUMJJMQ2pwgbtQDHe2rKA0LpFSUSTzA5YH3PcZZZpo8plyABujYiCSY2q+jUD3ozs8fyw0FFY+xsWZDbtww1lZVZyvxN5nDlQij5rCAe10qtQLuBNzDdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BUilaCWlb9HbDt0OcS+IhyTuYoposAVKNiiyeL6RP/M=;
 b=y5PaxG6WLYrwf7YHefyRW+LoWLTRw1GfkoB6FKJ/2pGDDCOT02F5LvOq4Z4wLKEsvmEFo1ABnSOpas9r9kU9eOLX3pvkSOmDIk+ruKiZzceuI29XvL/Y5U0nH0DfNpNdmqBPuhw00EslVTwuiq+UqPMpHjiDwFMW3LMeWtCTWPM=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4327.namprd04.prod.outlook.com (20.176.251.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 04:01:25 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Thu, 22 Aug 2019
 04:01:25 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH v3 1/3] RISC-V: Issue a local tlbflush if possible.
Thread-Topic: [PATCH v3 1/3] RISC-V: Issue a local tlbflush if possible.
Thread-Index: AQHVWIMVUivLbwS0nk+EJJcu32ceGqcGZd4AgAAlowA=
Date: Thu, 22 Aug 2019 04:01:24 +0000
Message-ID: <0f66583404f89ab2bd6c264ba653364ab8a3160e.camel@wdc.com>
References: <20190822004644.25829-1-atish.patra@wdc.com>
 <20190822004644.25829-2-atish.patra@wdc.com>
 <20190822014642.GA11922@lst.de>
In-Reply-To: <20190822014642.GA11922@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5810d355-84e0-49c7-4dc0-08d726b566b7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4327; 
x-ms-traffictypediagnostic: BYAPR04MB4327:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB4327B45CF49AE4729145E79DFAA50@BYAPR04MB4327.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(346002)(376002)(396003)(189003)(199004)(6916009)(6486002)(46003)(2616005)(66556008)(305945005)(7736002)(66946007)(6512007)(6506007)(5660300002)(66446008)(64756008)(476003)(6436002)(5640700003)(446003)(11346002)(76116006)(486006)(36756003)(66476007)(102836004)(118296001)(316002)(186003)(53936002)(229853002)(8936002)(76176011)(86362001)(2351001)(6246003)(4326008)(1730700003)(81166006)(81156014)(25786009)(99286004)(8676002)(478600001)(256004)(71200400001)(54906003)(2906002)(14454004)(71190400001)(6116002)(2501003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4327;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YVVYCWGnpcxMiNuW5wFMP/g15Mchc1Q5QCobZ9WF6c5F/Ehh/qwAhlJBxg4K/bdO8cNfn2fYzQ/4951ARWMd/jWBlxcSWIe/nDj5gitzZFCAVcvTza8/KorEbINchMt8K99sIFKSYf9Z5h2hFxioJJw8sdxHweUX96AOXMx6/TeNgFVeXQqoCC+1CVslbGgh12bWcZUSn4XfmhGMyY8bOPrdl3RfPrj2SCkyC0wJJkh0JW5C8Zdv2BB4z0gexEPXkggl1zmiDwXAMjjGFaLfG6Eh4ldoMdsqv6SQyqvjE4svS0TKUUMCYc0e51dNLIAPrp9H1O6nZEmiV9BMbcVRXLZnukD9C207hIrLbCLDrWfArx8L5GFW9mHsGQrpSZVjdG4eSbFK6QLQCKg+dAnExyZEEbUiF9cXHmvgCcsTfSY=
Content-ID: <1C1DC9928CA4DE43AAB106B1CF77F24E@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5810d355-84e0-49c7-4dc0-08d726b566b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 04:01:24.8130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CpbLBHO0BKZQ9/yl+JUy0DfVQnVfXbOkUMChXp94ki1BGbNUn2KXypoTrDIrYXmDtF9EYMBcXjKRHf+7vUQkAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4327
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_210132_289171_5865C1DC 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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

On Thu, 2019-08-22 at 03:46 +0200, Christoph Hellwig wrote:
> On Wed, Aug 21, 2019 at 05:46:42PM -0700, Atish Patra wrote:
> > In RISC-V, tlb flush happens via SBI which is expensive. If the
> > local
> > cpu is the only cpu in cpumask, there is no need to invoke a SBI
> > call.
> > 
> > Just do a local flush and return.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/mm/tlbflush.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> > 
> > diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
> > index df93b26f1b9d..36430ee3bed9 100644
> > --- a/arch/riscv/mm/tlbflush.c
> > +++ b/arch/riscv/mm/tlbflush.c
> > @@ -2,6 +2,7 @@
> >  
> >  #include <linux/mm.h>
> >  #include <linux/smp.h>
> > +#include <linux/sched.h>
> >  #include <asm/sbi.h>
> >  
> >  void flush_tlb_all(void)
> > @@ -13,9 +14,23 @@ static void __sbi_tlb_flush_range(struct cpumask
> > *cmask, unsigned long start,
> >  		unsigned long size)
> >  {
> >  	struct cpumask hmask;
> > +	unsigned int cpuid = get_cpu();
> >  
> > +	if (!cmask) {
> > +		riscv_cpuid_to_hartid_mask(cpu_online_mask, &hmask);
> > +		goto issue_sfence;
> > +	}
> > +
> > +	if (cpumask_test_cpu(cpuid, cmask) && cpumask_weight(cmask) ==
> > 1) {
> > +		local_flush_tlb_all();
> > +		goto done;
> > +	}
> 
> I think a single core on a SMP kernel is a valid enough use case
> given
> how litte distros still have UP kernels.  So Maybe this shiuld rather
> be:
> 
> 	if (!cmask)
> 		cmask = cpu_online_mask;
> 
> 	if (cpumask_test_cpu(cpuid, cmask) && cpumask_weight(cmask) ==
> 1) {
> 		local_flush_tlb_all();
> 	} else {
> 	 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
> 	  	sbi_remote_sfence_vma(hmask.bits, start, size);
> 	}

The downside of this is that for every !cmask case in true SMP (more
common probably) it will execute 2 extra cpumask instructions. As
tlbflush path is in performance critical path, I think we should favor
more common case (SMP with more than 1 core).

Thoughts ?

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
