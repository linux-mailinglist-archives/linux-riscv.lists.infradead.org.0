Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175DA83E9A
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 03:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGVLykO+SMYHzBjGvRTaYei8o6v0r2V7+F23u1R0zwI=; b=KwSNXXQ1dCDeSK
	k7wNmC7VETY88RfIDjG9EIlBr5lelCneNQuo5CY6OqphRjdhiQIZBN0lz0lXPlYtTRsDALmYIXxCW
	0o+M3F4Y9POKhnxwWybIEcnbXm5pgjXCy9xtgdFwJiG07p5HkHnfuQge9kOvTcVDfbhykcvInSGZa
	65mR+syPPH2rb+NYm9UBEIobBZq3aS/7aTMsFXTsRw2JewMMoCDp+mc/6aY0PIZhvatmbzfW3vVFn
	gLIqO/d4HmIXTweHwXgtFruQaK4TPsLhh4ErXcbHZmOakhSttAEpbK/oywD0WN4+7ZV4hMwlzkkT1
	52z7DBFDJdXpNEU91bWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAW9-0003Lc-7a; Wed, 07 Aug 2019 01:13:29 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAW5-0003Hk-EG
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 01:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565140406; x=1596676406;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=y9DXexklj4DH4N+MEDF/aqzOQagA02It45aZlweZBWg=;
 b=cDeED7myO+FJy/mzq9CILGT2hwS+tEPdR2BhYQO2vPh4mWbyBtufTXdb
 xmEvNSPpCaWcJBNbxSBrm6So90gdHZBwA1X9VqCfZi3tVzevHz1bP/2Cm
 MFDuIYpu+8DEzXCfryXcGQZ1m/4DAkFYL9McAEncQT0Rg0hhZfvddWDWF
 c6liGR9674OvjJ8dK5AJoUJT/LjmUS/AdlAOYEY7Tsr1Yh94Mb4G2sQdA
 2Apyo4L5687FtlaMELfcNhkpLLvw2+peVJQiwCYPIMWZ1rRF/vdY4BXGm
 GAMiyj7iMwqto2i04zYfpaClhCNHzdhlNlELOj0nYIcGiXg7sKnpx+mS9 Q==;
IronPort-SDR: Xkm9nTVt77sCI4yrw2HiO6CT1C7V1TADxyR9uBoHtNCWQnTOobz7bRVMARW79FA3ukkezVevOC
 CzhAGkrJKmhnC+22b5PnJPOcZkzOTZanN6YgCVrAmkZ2ND8y6OYSGUiviwLgJGBxDG7W8zbUyP
 7UMFwZCd1io+3yZaW4Co5+XIMo/5JhwfORlzYXYFEShiL+xwY7fT/c7nKWOKAuqTFyhdP1KrrC
 LMU3VcqPyLMw/Xvgb6L7vljrIkiXBmgHa9azt1lnMdkXriWctBFgfHP7jEKhcGtdQH5PsfbgEr
 Puo=
X-IronPort-AV: E=Sophos;i="5.64,353,1559491200"; d="scan'208";a="115200113"
Received: from mail-by2nam01lp2050.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.50])
 by ob1.hgst.iphmx.com with ESMTP; 07 Aug 2019 09:13:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gxPOTjKZwsZ+Y0C2qDM2h3CNM0nJjMa2J3c5guiAKcnSiflMsBBRQpQS8/JrqnhyfC3o5u6gKLIzqqWzCb7Sc5EjH98RB+3PLgXvamxixpwC6t4PEHmeF6tyE7K9MXwyJrOtmKw3LLxGCwvogNmKTOl68lPiEwNuRBTuefotLZSZ8o1QKqk0+nBMPCQj/rXMu2X+wA6fk1EYSFK27gr0bw2fDRiIH05gGh0S8rPKF1QkJXAJMHFZP1A72QmTR1hErAeB2ey0z3CSzd4wWFosIWdWeqPaW4qXHLgLyx1hUB+Jw7bJrvqQrAC7OaLf4/8BXWF2NN+SXgdgXm9+g9d/jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y9DXexklj4DH4N+MEDF/aqzOQagA02It45aZlweZBWg=;
 b=Jt32pD8CQ1o95QcHqp1OUrV1PBxiw9znUf84VaXaVV0CtQJk/NQKhbQq6Inu/OlH05x/HVlReuxYFlab/UgGCo+N60rgvsLE7Kr0Ox2S5fVCB3AluF6mVyDsE5ZYxZ8hqQLWqZ7xf3M+OONJBwA80jcOtHtckFgWwhkgVQ5k7FVqP85Eo1aD+Oeaiuv1xHdX3wUOeMQU6AMh2IwTFiqcziDtLXl3VaG8lFrmvIGG5kojM5NmHqF8asuplJ5Hs42a5RHaslMFgIBTaEuIs/+HicgzLGRWr9heGicSSGgcSaBYnihwC5qE0zzMBQ2yAdSSksrRvFIXwtZzvaXWBQccow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y9DXexklj4DH4N+MEDF/aqzOQagA02It45aZlweZBWg=;
 b=iRO2sZuMQ+0virrKO1riY0Pdcx/Q/qeKPd+wUswxZZNiGgou5dmxDRb3/dcao+BMYoyPDJk9twrUFJRUXPNvuF0dzSShfhAvLehEXdFh1DVtKd2bZt6PQSh9AfHCvvAZKJFZUYT75UliWzjk/p05O/IMFYGRQq9gy+VKSOf2qDM=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB6104.namprd04.prod.outlook.com (20.178.234.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.15; Wed, 7 Aug 2019 01:13:16 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Wed, 7 Aug 2019
 01:13:16 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 3/5] RISC-V: Fix unsupported isa string info.
Thread-Topic: [PATCH v3 3/5] RISC-V: Fix unsupported isa string info.
Thread-Index: AQHVSARDLwisRSZSxEGpcN8B9TVet6buzP8AgAAdjQA=
Date: Wed, 7 Aug 2019 01:13:16 +0000
Message-ID: <1e23ef1face9d323fda4b756811f922caa5f7689.camel@wdc.com>
References: <20190801005843.10343-1-atish.patra@wdc.com>
 <20190801005843.10343-4-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1908061625190.13971@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908061625190.13971@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4acb7e1e-8db5-4781-da02-08d71ad46d76
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6104; 
x-ms-traffictypediagnostic: BYAPR04MB6104:
x-microsoft-antispam-prvs: <BYAPR04MB6104FEFFDBBF1163CF9BFA58FAD40@BYAPR04MB6104.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(189003)(199004)(6916009)(99286004)(11346002)(446003)(476003)(2616005)(71190400001)(71200400001)(486006)(68736007)(316002)(7736002)(54906003)(2906002)(305945005)(14454004)(5660300002)(3846002)(6116002)(8936002)(8676002)(81156014)(7416002)(14444005)(2351001)(81166006)(256004)(118296001)(76116006)(4326008)(64756008)(66446008)(66556008)(66476007)(66946007)(86362001)(25786009)(66066001)(2501003)(478600001)(36756003)(186003)(53936002)(102836004)(6506007)(5640700003)(229853002)(6436002)(76176011)(6486002)(6512007)(26005)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6104;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8SQSCmcA9mINJrSVu3q9pESjf/zLo3OKKGxeRB3jL6mCslme3IP8REUJBiM+Bl9TQgA9SrBYxetGHIo9LXBm/sr/iyMarJii6tik7120g3wvGD/fs3mS3PX1caA3XWbF10CfjAtHluf51RB5awaCugMraoPpi2e+LuSbs5kT0lhAl+Mjj8xYsh9HDcNE8GsgpEtQm9PtNMOsXM54Bylgde8I1WGaYVX1g7D0eQQWsSf5JGSKJL07N5Wpn83SwlBOP2Ew7Z3ZY37O10V1l+mkKS2+b/B6mFurNa9jDxtrmud6LgfH+3H8snsveL/HI8HKnRvCW4nNybmmKXh8cW1ETefTwweM+kXjZ8/7SzFOp9dbu3mzXHu7PspgPGbrSGvBwmx2R5e0Bc0es53OgKa6yLCm30dyqwZpiAztuIhMfsw=
Content-ID: <491CCE35E6E1AF498E1AE2926EFFB451@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4acb7e1e-8db5-4781-da02-08d71ad46d76
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 01:13:16.6050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_181325_541198_2CB224B6 
X-CRM114-Status: GOOD (  36.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>, Anup Patel <Anup.Patel@wdc.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "info@metux.net" <info@metux.net>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-06 at 16:27 -0700, Paul Walmsley wrote:
> On Wed, 31 Jul 2019, Atish Patra wrote:
> 
> > Currently, kernel prints a info warning if any of the extensions
> > from "mafdcsu" is missing in device tree. This is not entirely
> > correct as Linux can boot with "f or d" extensions if kernel is
> > configured accordingly. Moreover, it will continue to print the
> > info string for future extensions such as hypervisor as well which
> > is misleading. /proc/cpuinfo also doesn't print any other
> > extensions
> > except "mafdcsu".
> > 
> > Make sure that info log is only printed only if kernel is
> > configured
> > to have any mandatory extensions but device tree doesn't describe
> > it.
> > All the extensions present in device tree and follow the order
> > described in the RISC-V specification (except 'S') are printed via
> > /proc/cpuinfo always.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> 
> I tested this patch after dropping the CONFIG_ISA_RISCV_C test (see 
> below).  Running "cat /proc/cpuinfo" generated the following kernel 
> warnings:
>           
> [   73.412626] unsupported ISA extensions "su" in device tree for cpu
> [0]
> [   73.418417] unsupported ISA extensions "su" in device tree for cpu
> [1]
> [   73.424912] unsupported ISA extensions "su" in device tree for cpu
> [2]
> [   73.431425] unsupported ISA extensions "su" in device tree for cpu
> [3]
> 

yeah. I just tested in QEMU. It seems that QEMU has 
"rv64imafdcsu" as isa string in its DT. That's why I never saw this.

> Seems like the "su" should be dropped from mandatory_ext.  What do
> you 
> think?
> 

Yup. As DT binding only mention imafdc, mandatory extensions should
contain only that and just consider "su" extensions are considered as
implicit as we are running Linux. 

Do you think QEMU DT should be updated to reflect that ?

> > ---
> >  arch/riscv/kernel/cpu.c | 47 ++++++++++++++++++++++++++++++++-----
> > ----
> >  1 file changed, 37 insertions(+), 10 deletions(-)
> > 
> > diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> > index 7da3c6a93abd..9b1d4550fbe6 100644
> > --- a/arch/riscv/kernel/cpu.c
> > +++ b/arch/riscv/kernel/cpu.c
> > @@ -7,6 +7,7 @@
> >  #include <linux/seq_file.h>
> >  #include <linux/of.h>
> >  #include <asm/smp.h>
> > +#include <asm/hwcap.h>
> >  
> >  /*
> >   * Returns the hart ID of the given device tree node, or -ENODEV
> > if the node
> > @@ -46,11 +47,14 @@ int riscv_of_processor_hartid(struct
> > device_node *node)
> >  
> >  #ifdef CONFIG_PROC_FS
> >  
> > -static void print_isa(struct seq_file *f, const char *orig_isa)
> > +static void print_isa(struct seq_file *f, const char *orig_isa,
> > +		      unsigned long cpuid)
> >  {
> > -	static const char *ext = "mafdcsu";
> > +	static const char *mandatory_ext = "mafdcsu";
> >  	const char *isa = orig_isa;
> >  	const char *e;
> > +	char unsupported_isa[26] = {0};
> > +	int index = 0;
> >  
> >  	/*
> >  	 * Linux doesn't support rv32e or rv128i, and we only support
> > booting
> > @@ -70,27 +74,50 @@ static void print_isa(struct seq_file *f, const
> > char *orig_isa)
> >  	isa += 5;
> >  
> >  	/*
> > -	 * Check the rest of the ISA string for valid extensions,
> > printing those
> > -	 * we find.  RISC-V ISA strings define an order, so we only
> > print the
> > +	 * RISC-V ISA strings define an order, so we only print all the
> >  	 * extension bits when they're in order. Hide the supervisor
> > (S)
> >  	 * extension from userspace as it's not accessible from there.
> > +	 * Throw a warning only if any mandatory extensions are not
> > available
> > +	 * and kernel is configured to have that mandatory extensions.
> >  	 */
> > -	for (e = ext; *e != '\0'; ++e) {
> > -		if (isa[0] == e[0]) {
> > +	for (e = mandatory_ext; *e != '\0'; ++e) {
> > +		if (isa[0] != e[0]) {
> > +#if defined(CONFIG_ISA_RISCV_C)
> 
> There's no Kconfig option by this name, and we're requiring
> compressed 

Sorry. This was a typo. It should have been CONFIG_RISCV_ISA_C.

> instruction support as part of the RISC-V Linux baseline.  Could you
> share 
> the rationale behind this?  

I think I added this check at the config file. Looking at the Kconfig,
RISCV_ISA_C is always enabled. So we can drop this.

Regards,
Atish
> Looks to me like this should be dropped.
> 
> 
> > +			if (isa[0] == 'c')
> > +				continue;
> > +#endif
> > +#if defined(CONFIG_FP)
> > +			if ((isa[0] == 'f') || (isa[0] == 'd'))
> > +				continue;
> > +#endif
> > +			unsupported_isa[index] = e[0];
> > +			index++;
> > +		}
> > +		/* Only write if part of isa string */
> > +		if (isa[0] != '\0') {
> >  			if (isa[0] != 's')
> >  				seq_write(f, isa, 1);
> > -
> >  			isa++;
> >  		}
> >  	}
> > +	if (isa[0] != '\0') {
> > +		/* Add remainging isa strings */
> > +		for (e = isa; *e != '\0'; ++e) {
> > +#if !defined(CONFIG_VIRTUALIZATION)
> > +			if (e[0] != 'h')
> > +#endif
> > +				seq_write(f, e, 1);
> > +		}
> > +	}
> >  	seq_puts(f, "\n");
> >  
> >  	/*
> >  	 * If we were given an unsupported ISA in the device tree then
> > print
> >  	 * a bit of info describing what went wrong.
> >  	 */
> > -	if (isa[0] != '\0')
> > -		pr_info("unsupported ISA \"%s\" in device tree\n",
> > orig_isa);
> > +	if (unsupported_isa[0])
> > +		pr_info("unsupported ISA extensions \"%s\" in device
> > tree for cpu [%ld]\n",
> > +			unsupported_isa, cpuid);
> >  }
> >  
> >  static void print_mmu(struct seq_file *f, const char *mmu_type)
> > @@ -134,7 +161,7 @@ static int c_show(struct seq_file *m, void *v)
> >  	seq_printf(m, "processor\t: %lu\n", cpu_id);
> >  	seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
> >  	if (!of_property_read_string(node, "riscv,isa", &isa))
> > -		print_isa(m, isa);
> > +		print_isa(m, isa, cpu_id);
> >  	if (!of_property_read_string(node, "mmu-type", &mmu))
> >  		print_mmu(m, mmu);
> >  	if (!of_property_read_string(node, "compatible", &compat)
> > -- 
> > 2.21.0
> > 
> > 
> 
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
