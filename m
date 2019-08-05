Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE7D81FC1
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 17:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rok97J4kkIL0nhbXU8sKnCKxelv+fCFHFGFij02i7eA=; b=SxSkPkPuf9zOoO
	Bok14BDJjRSIORsac+W2b3HRWkRA/HW/9Yke/4QZ4gzKL112zjcLMJdJ9nXq3lZOuBCESAufd7jWa
	ffnlEsbc5ip/FCMrQi9z1TER5gnIg4TvpOKjChy7ht0M43DP+Z6G6hm6VAgzmvX4TgKUEXYqNq254
	aPmvAptBgSo76kaDKfINt+fal4ID20MNKE4rpbRW59mu7MzmO241klVjW0qsSm2JsmKSZMfMvEHAO
	SD5Rqfg68REJ/tqA0nqtV9kmfEcBwIH/FJIt3HD4nKMqe6YmH64hBfgfipVwn8ChVZjvmcLvLQwDz
	IFon41VpHU2rPvSqDkNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hueYd-0008Rr-JP; Mon, 05 Aug 2019 15:05:55 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hueYZ-0008RM-IJ
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 15:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565017552; x=1596553552;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SLBU94ThbF4G+XHlOTaQSPLCBVIk/mQGBFdirdNG1WY=;
 b=dJWZoqMPZIad7p3jVa+FEyJkau6wPDXnKDVGqz/c7Uhmo/zAONfN0O66
 PgPEo4umsrtSMNxVF9/pxmDhlDBV/rob3v43VZOqAo4XRYH+G4IdjnM1i
 F1rXfxMibIQEq4YJVrSoDOwRmorA36cGZJU9iWn7uOYgm0dFAv9MihkDk
 z7Mxvi+E3sNFfLWLrsODfg3LTSGFhToybaNpYOvye5YMMv2nZQIxehtYR
 FkZ9oCOpEpYRDwAkpXbjGq/AN20OBz8QkoICzIgNPcVXA6aPaJlXTWOiW
 z4by2JnAvbXPhX5ra2ULcqi33KE0uVr6bC6aeTcPg3SYNtVNmZrBYL9CT w==;
IronPort-SDR: GLqzW333pX4HtHo3C0C9IBMJDvvBufYSZbkOoqPOh4PBmSi9AxBcjODU8PaqCdjGj/7oJBabZY
 ZXzEUQFjev8jcYKhvkoj0uGxTMbpvCXXTkyffAUB4NEEp+VfyYsdWxP7b4zFkJKBc9y6+sbuFT
 VU/UjdvVWAnv2ssrNhRuY1GpLGIHv7v8818ZrsPtavhgsVrPWDL2qwdXEbAhZpDrhwrMa3fJ/M
 f8jCpPB87Tju5K9hJWmp8efR87NEbDMSazBm6k/jpLECu3739hNhx0Qbz/dR96/ihE6NcA8/Wu
 q/s=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="116001754"
Received: from mail-bn3nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.52])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 23:05:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BeG49n+nmDHeVg670Hd2uiwLBeZ4qy4O0uzCckmhY26uU2l4v96Xb4JqZSexyDof/R6HRrY1hIrYhdD4k8V1Vxn5OIbH7pT5XIx3J3g9RCgktLdUtZjYqUcas87EuVf6Fft3UlIDN3itnUOFhbv/o7GQc6001sbCn88hBk4cW2GDKxHWmzyHrewGhu+/a+ohnGRI0fjtOrqcgnlZkB+fi0W0YfSFpoWMFBAwzBo4XEoRgpROJoq5HQnYgR+n/F5Yv9Yr0+ZU3BZY7H8KS1FwcR2Xrbt3svP3DsGF9xVXl5/q8lN/gLWEyiICLPjIualOn66c0+/SK6uyZCws6z1EFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9rxKtLw084Hf/EYliPJKHeXujbKr169A/27eitt6UCg=;
 b=lR+qdjNFE+xRLv9tY4VbMQgHQ9S+kIf1h5icwpCQZtt4qVR1BxQkhJGn11nUi5y83Ng91tE1wkMh7ag6QOMHwTZd5BGaYKpfFdeZ+OQ0BBwd4+56LUIyuVK/9lwt4A6E72X+91rWHJ/Zy3Hk0zDRcMQyfDiEEeuRTpdF3ee9wdPZFHxfLBRNzY/zy2HkMDY1P/RsWpgiWpAfBGviE+9i2T31zGtpZPpvt9elFWS5HI/Zgsrx4Mc4gmtpFfwyiyR9XeA3nEV7v/MnJsQMiYf4eoI4Xmybdj/WBTFQrJZQ6rcaumHe7Cw08Nzueb2r7MRzjtdgOA8VIuOPtX4CQBrkLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9rxKtLw084Hf/EYliPJKHeXujbKr169A/27eitt6UCg=;
 b=g2JwTcRdGN3LBFccVOzMYkCn+PZu6trsFPqC27U2GpwE+Urv8TT7EPZ75jfLj8fkOouiAPpFKJlAJspmIIoyVcfRK/cdXmNB+IhbYM9OCKp5dUiNO5aqDw3WarU19KoaMflo2uQoycxC+lkmJPwygdE7PPSZQX/wFVGb8ZE6iKU=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5726.namprd04.prod.outlook.com (20.179.21.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Mon, 5 Aug 2019 15:05:43 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 15:05:43 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Andreas Schwab <schwab@suse.de>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>
Subject: RE: [PATCH] Use CSR numbers instead of names
Thread-Topic: [PATCH] Use CSR numbers instead of names
Thread-Index: AQHVS5NXpKV1wT66jkCqeJKqMH5U4abspzYg
Date: Mon, 5 Aug 2019 15:05:43 +0000
Message-ID: <MN2PR04MB606150E8CA0E45D54A5796028DDA0@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <mvmr25z4toj.fsf@suse.de>
In-Reply-To: <mvmr25z4toj.fsf@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [106.51.20.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb156c0a-f9c9-4cbf-5454-08d719b66312
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB5726; 
x-ms-traffictypediagnostic: MN2PR04MB5726:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR04MB5726219345CBA4552D6D55408DDA0@MN2PR04MB5726.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(396003)(346002)(136003)(39860400002)(189003)(199004)(13464003)(26005)(9686003)(78486014)(6306002)(186003)(99286004)(478600001)(5660300002)(55016002)(102836004)(74316002)(9456002)(6436002)(14444005)(256004)(86362001)(71200400001)(71190400001)(3846002)(6116002)(68736007)(11346002)(33656002)(476003)(53936002)(966005)(305945005)(6506007)(6246003)(110136005)(66446008)(64756008)(2501003)(8676002)(66476007)(66556008)(66946007)(446003)(7696005)(486006)(76176011)(53546011)(2906002)(4326008)(316002)(66066001)(7736002)(229853002)(52536014)(25786009)(81156014)(81166006)(14454004)(55236004)(8936002)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5726;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cHk+YS1PpH8+FUQIneqPESqdb09ezjpJSmqE0vWvc/KEF/d3MmI8jpH5nogMw3476GC+7uqeHI1f8ZIpqrz1qLsx9SYJZ2knm6l8Z+nOCbHRCEb3Sk9AAGwx+n4Wc57ZXFGc8xQSsi6EuOC+PwzkOI8f4pYNauWyHF5yaUJ0bQey9dVd5z0xz3JUmzb2qIim1cYDYjsO60S5Jx+e1TT6Aoh1bNOMW2KwmJ0rjYAsPU2ZfEYpcoRqcAuhxAg2sspoumoWzghLvKmtm1aqiY+toILI7/FMbOCNv/+SAB0bQbm7JDlLo/ArWHKigVwskFg9SWkDN2wcsEzaCqUZs9VJPLSEWULP+uwVC6NTI7wzbJCa2HypTb+GWUH3XI7V6PatWrcqdXS5pV8CVbF7Qi2RQgSD06VQRAWCPc0/lyhUqoo=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb156c0a-f9c9-4cbf-5454-08d719b66312
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 15:05:43.1743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_080551_793116_60AC2947 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-kernel@lists.kernel.org" <linux-kernel@lists.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of
> Andreas Schwab
> Sent: Monday, August 5, 2019 7:10 PM
> To: linux-riscv@lists.infradead.org
> Cc: linux-kernel@lists.kernel.org
> Subject: [PATCH] Use CSR numbers instead of names
> 
> Fixes: f6635f873a60 ("riscv: move switch_mm to its own file")
> Fixes: 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> Signed-off-by: Andreas Schwab <schwab@suse.de>
> ---
>  arch/riscv/mm/context.c | 7 +------
>  arch/riscv/mm/init.c    | 2 +-
>  2 files changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c index
> 89ceb3cbe218..beeb5d7f92ea 100644
> --- a/arch/riscv/mm/context.c
> +++ b/arch/riscv/mm/context.c
> @@ -57,12 +57,7 @@ void switch_mm(struct mm_struct *prev, struct
> mm_struct *next,
>  	cpumask_clear_cpu(cpu, mm_cpumask(prev));
>  	cpumask_set_cpu(cpu, mm_cpumask(next));
> 
> -	/*
> -	 * Use the old spbtr name instead of using the current satp
> -	 * name to support binutils 2.29 which doesn't know about the
> -	 * privileged ISA 1.10 yet.
> -	 */
> -	csr_write(sptbr, virt_to_pfn(next->pgd) | SATP_MODE);
> +	csr_write(CSR_SATP, virt_to_pfn(next->pgd) | SATP_MODE);
>  	local_flush_tlb_all();
> 
>  	flush_icache_deferred(next);
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c index
> 42bf939693d3..238fc4157f8d 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -435,7 +435,7 @@ static void __init setup_vm_final(void)
>  	clear_fixmap(FIX_PMD);
> 
>  	/* Move to swapper page table */
> -	csr_write(sptbr, PFN_DOWN(__pa(swapper_pg_dir)) |
> SATP_MODE);
> +	csr_write(CSR_SATP, PFN_DOWN(__pa(swapper_pg_dir)) |
> SATP_MODE);
>  	local_flush_tlb_all();
>  }
> 
> --
> 2.22.0
> 
> 
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

Looks good to me.

Reviewed-by: Anup Patel <anup.patel@wdc.com>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
