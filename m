Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401709F2A8
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 20:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYnOlPPIjpjcFGS/okS12j/PalR4QuKf6gs231XR/Ss=; b=ZYeXqaXCb9DZWG
	ke6MApgR1fcQCZJLF5Ft3RbceDIK+mzsG8v82iG9+QnAMNOgOaJCTDEQ9uMvG0n3epLv39em8eWAz
	K7VO4LsazVBCMWrmEOF3hcnHJRv+QQfMK8TJBP8Ehri8hHbGRKRF0ZkrPKI2T3PG/B+/5JKxkiaDt
	QJF/5gAJpXAkpYtUKe8xiw4FzDR2dsQACwWuYAH4Ahi76iulSXLmdupd+3GxYdkNKf3jTsWYB8Qqk
	shWyze+ycz/Ue3APTwPaRKG8gUslkhh1qfABjuKudlv0NTB1jqbA2z6S8YnNazt1S4mDu3M7AiH6y
	ysu4PDd99tRyKrEqq/eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2gYd-00014w-Tv; Tue, 27 Aug 2019 18:51:07 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2gYb-00014a-Cu
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 18:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566931866; x=1598467866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qM+OJ+r24YeCqkN16zcehT9pqZNTbdZZRLDP9ML4kpU=;
 b=PrX7KxjKg2rsdDFNYFwMO8LnAtqDmKdDS8OJb2rxDldv+ofYEzzMRaJ0
 U5BGC8+OYxoiqZE1Mh1jscsOeeOxMWMjAjQjWqoOOLCCIhuRM5rBswtXo
 pYfWRCmRp15CJ3Jb70krT/BU0p7ZHDl7KkrRTjU2VFcwgU5ABgYlML08o
 DZb8ZvX28e/SPjoB9ItdI50euk3muN5mb9cOM/73zZZvl8vQ5KRO/8z8n
 tLDsE/M/WymK3HUDCR8a2pg9xInOPw39KaO4k+2EqQ4AL4/hkjlmz60wV
 eRYteQoz9/1O7mF8gjoyucfOiOimvh2WvqK8caRAGB7m6+HAsxqhrM+iT w==;
IronPort-SDR: UBHXINCmiMdkt+rOMznlCdn9exZouEuJRE2K8rpV8fAxvZcrTKRGf/t+lXAcGz8EdRAQ/6oK2q
 iUT5Jb5JR/hoqsqnB56KJ82pKfF2Wqy3QYp9XxnJviA0723mL7vmslZBIK9gO/S/EoYSTy3nn9
 6SEq4gsXYEXBqQ1GfbMnsZaKY1UH/id/c6gLaTR7NEB+pE7a+1pMYV06Xz7I9PVyYFagpprCsJ
 jUeFr/cE6sErK4+aOtBHHubzucNVYTd5pYS+m031iNR4oKEz+eoPpLdtyODfXKO+UNYKBv9Mwg
 eBM=
X-IronPort-AV: E=Sophos;i="5.64,438,1559491200"; d="scan'208";a="121373686"
Received: from mail-bn3nam01lp2050.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.50])
 by ob1.hgst.iphmx.com with ESMTP; 28 Aug 2019 02:51:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SHQolkojLQLqobWPjmvUmGu1nZMOEM4jm5DA+dp45fhgTrEY+42IOp1Vd/9qyL9v/aZ4+OTtSMaYDOKiyjIoXlcKOctjDvjyB5EyTd2SNiSULj9kGhlA+ps4mfzDgD1FCzYxdbxHGNaCmB9U+Gw/b8qO9LDbeyZX3WkDF0pdIj3B8ypoq2Ivhx9o965z/AiY+4lhp4FdirtT1byn6kb4aiqiK4gSTT4T+C1Jq/F9l8R/ZFrvQAlDdWOBPVEB7PuNqSe+2YfF8aQAnrmrvd1ioX4gaf3hkSJUXLUdM/E29Q2yTtS70GTmC5KPI6nfcrHGhJWqIPqJDSLhy4lW2qUZZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qM+OJ+r24YeCqkN16zcehT9pqZNTbdZZRLDP9ML4kpU=;
 b=LHULmDp2AYRGqfWi1oy0Eg5pBF3EoadrcaMQ4OZJ8bBMwmVmmcvliADa8qBIfv1A6l/pPdbgWNDXKkTEf/yEBmFTAXNw+tLN3uTOHOGleVtDb/WBuMzZdgWZJ2ChXc1Iv+DHNOabfbVuNx0UGzKNwGEAcECy9hwl/Zdip/qvRCEjFGaUXmiULKWFASkvN+J0TSwu1ReU1kvrGVxUtvDRhf6OKOdA2Pyciy08eOHug6LQ8jNdKMO4LJceecONmOe2gagcFIvUxzbuP9h9F70fbXIP1FgnuQiJA+nE4qKvoyONF3lX4GkcU9p8Rp5FxFnI4eJMRPAYxK/N2C2frk0s+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qM+OJ+r24YeCqkN16zcehT9pqZNTbdZZRLDP9ML4kpU=;
 b=zmZ5CKaWHCBqZQ9D4Waii9GgO8HC/J80WAwRY4vrN0Lx4534BeNuN+fodhNhmnreaZ3m62iWtA/rtTTfRFi4huQx8/X7degN1UEsseHvgyu6E0X1FWvmYWIhbEcNydGdqStU/KUm01Z6mqxYojcOWIIgT4HwgN3emlUAyU6uHrM=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB3847.namprd04.prod.outlook.com (52.135.214.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 18:50:58 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Tue, 27 Aug 2019
 18:50:58 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH 5/6] riscv: don't use the rdtime(h) pseudo-instructions
Thread-Topic: [PATCH 5/6] riscv: don't use the rdtime(h) pseudo-instructions
Thread-Index: AQHVWDD0EkCa56AaCkmaoPCBGi6gHacJd7UAgAPbQgCAAg1ggA==
Date: Tue, 27 Aug 2019 18:50:58 +0000
Message-ID: <86633111d71e99e3cedca378d39e0349b424280d.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-6-hch@lst.de>
 <d15a578760061a5a0ebad8ca6024768f831686d2.camel@wdc.com>
 <20190826113034.GC15002@lst.de>
In-Reply-To: <20190826113034.GC15002@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8889e13b-c212-4844-7ac8-08d72b1f7fb4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB3847; 
x-ms-traffictypediagnostic: BYAPR04MB3847:
x-microsoft-antispam-prvs: <BYAPR04MB384771353619C741A006AA88FAA00@BYAPR04MB3847.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(199004)(189003)(7736002)(71190400001)(478600001)(71200400001)(66066001)(6512007)(186003)(86362001)(81156014)(81166006)(1730700003)(8676002)(5660300002)(5640700003)(64756008)(66556008)(6116002)(66946007)(118296001)(76116006)(36756003)(66446008)(8936002)(6486002)(6506007)(6436002)(4744005)(2501003)(2351001)(2906002)(76176011)(66476007)(486006)(6246003)(2616005)(25786009)(26005)(3846002)(102836004)(446003)(305945005)(14454004)(4326008)(99286004)(229853002)(11346002)(54906003)(6916009)(256004)(53936002)(316002)(476003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3847;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gC+bdQoTiYEQsf1tv0XBYEGN557Y+MbiF7hYHc6agr9DCJK7XpGB0bNyDPs5+RRqfX8UX2SXxc7SOd8+MUS5BmmaBibY68WTojtA5gA0laYKrvDlAAgCC95wqvro3bHTjTmdyIBDxkuSCnS6Jk9/9LY15NJOfAy71Ts9yB3U2CXZFsuXLrWf0JCkf/NTGNLUHb/MW6eB4Q7zUYIjQAePe1ni4JVPazy2L6H72E5AW+Eqhi9dyt2fmSdoY0//FS0Q8CHxrR8XlT4B6fWBz4r4IK2tfIPuTQemiEterCOIqSwl8BCNj/NBEKnP05E3ZYC0Zpz1HGQfmG4yhRaabC3PuqTFPLs9QaiB4OEvbHoEoevFO5Ib6E547jUMrxBrgYqz+RviEoKQHrBsjNdMJXM6JSa4LvgpfJbCMI+Nz3cvsOA=
x-ms-exchange-transport-forked: True
Content-ID: <2045A90F173F6B4EB32D70B52C5FF9F3@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8889e13b-c212-4844-7ac8-08d72b1f7fb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 18:50:58.0380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oXEEg/muorA9/NhLnDBcrQpWRgmE7Ow60seFrJzdG66uDMkVsPfLK5uiXBInZC4rwBn/lT04HONvLysYc5g66w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_115105_558364_0D9926CA 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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

On Mon, 2019-08-26 at 13:30 +0200, hch@lst.de wrote:
> On Sat, Aug 24, 2019 at 12:37:02AM +0000, Atish Patra wrote:
> > > -static inline cycles_t get_cycles_inline(void)
> > > +static inline cycles_t get_cycles(void)
> > >  {
> > > -	cycles_t n;
> > > -
> > > -	__asm__ __volatile__ (
> > > -		"rdtime %0"
> > > -		: "=r" (n));
> > > -	return n;
> > > +	return csr_read(CSR_TIME);
> > 
> > Does this work correctly in QEMU ? I was looking at the qemu code
> > and
> > it looks like it returns cpu_get_host_ticks which seems wrong to
> > me.
> 
> It better should.  rdtime is just a pseudo-instruction that the
> assembler translates to a CSR read.  (in other words something
> totally
> pointless, no idea why it even is in the spec).

Yes. I did not see the usermode macro carefully in qemu code.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
