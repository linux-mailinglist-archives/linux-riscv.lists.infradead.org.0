Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073D998ADD
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 07:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqAz8NKndC9UcRqAJKDW9fA/+mcxlyv+2plaqihgcsI=; b=tpWGtR4dQD0XQ3
	wpJ0tzqJZqB1LQiJe5P5nkEnvQMtR80Ag9PyO2jX4TND8pcX+PA1dRSI4yogPXilBdJpQ2FwSNP4H
	9hAgFTusuT/yD8cD7Ql7nfExrHHFYOs4KF/N8EtAr+ShhXZAkqRghb46hqXEzFssjf7gpTu+WEIsL
	dci0ypNKbIZZ92eP3WxBYHo7kaXtPySlmWefQDZoNnxH6sXHI2eLVOtZ0cc4LmXYkxUhr/Ti32t5d
	BOCOtw0iqP+5nlPxG5GP+iMTujwAzyWpJYuiVA2g3BeXPYvHZvcu67aStNtmNYM3Z7t3Sx/XACQ9b
	3woib+UA4EITPu0J4iUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0fp5-0006Tz-Ky; Thu, 22 Aug 2019 05:39:47 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0fp2-0006TE-EA
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 05:39:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566452394; x=1597988394;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nhZg2iermVd3E78W6wl1Z6dDFBfD2bmQHw0Wi5AL6uI=;
 b=eML3ztsCIACcEiOnh7gB93GoKixYqXf122RgL5zHLKaeweqL2/4P62iS
 riCcd9b/wIzb7xU67Q4cZkVXfZHjFpyM1Lw/e+lnxWZu6odcU7TjP91L6
 f625N6N0JxlN0osSFup5ojc8ttnE/j2d50t0sy9pm4CXwL3GZPdTWMdWu
 Ejk/6Rk1sK3lDwj9XbDf5rPSydX0Yy2cfnsfvcO7BzmGwM0Nnq6UqpTuo
 N6N+r7BGxhH88xfHIFzEYTWXAQwTkFOFeE/IupF2CRLTnuOyXo91NUhBP
 +DxFpiQ6ZAXhbEnywv6zWGEWGLthkz6h6HjE8UTqFerQ+aOBM4+cKrnNk Q==;
IronPort-SDR: cDQFSc647GwzYl/JnzMF6Zt07jsH+oPtX8HedjSwBbJaqqxPKc5fcYROIkBhd/WgAUIKuJTd71
 KonbCujHcHGW8uPTrxcdUWRfZIgQG2Ish4gOH7L0+FP2OuA70xIhztwwnA+UEG/B9jIhnoe1Nk
 xH4DUaEw+Vg+rbPWqDh4tQt7RsriN/a4RSJRKyXpXoxnpAkjlayyUqKPukbxnh+EQWxeruCOQa
 l9JKVOKqzS7dmcQcG9eHvHyG/WSCP2Gr6QhQEhAgg6A+ltXeI2Mp+xmAQJmRgHuIeD5Ry7gLvb
 CGU=
X-IronPort-AV: E=Sophos;i="5.64,415,1559491200"; d="scan'208";a="216820974"
Received: from mail-sn1nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.52])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 13:39:48 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JFNc6/lZDuqhTLkpo4Y6djrPhgPBjFtLI9pr+pRI6KrOVd32TXL3C81ixft3qnXIl1iQLlD4+p6W83/9xnmZfblPbeOxca57H5BTnvqe9HwHaZCLho3wuzqv6n+je6tvFrlXvK/t1lEfNpNP69ccHh/dqiSSeu8tXVZvS8+/Z38p77mwzeFQj7H45iGoXpZjlUFGYKfCYv22fNziJb004ldy2VULCVLfUSWYjOKpf+UB/7keJZXMHoYfU2vXLdN9xu0lJ74E797WkI+C3ljCXsxkIp4Ek6m7Fv7K6y8u/NQNfAoKpF5Rq6twN0PyMwPfTExRsS4mU866S/5W7oiuCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nhZg2iermVd3E78W6wl1Z6dDFBfD2bmQHw0Wi5AL6uI=;
 b=Nm3uYP0ZHDN44ZqUZZ4fCIJ3+fiJF1135PWBUiSTXSVwvssrIUoEIAvNBuTp711pu9aAj74F+IEWXB/CZ/HU1wROK49kLCXQudWgWCM4PBtAj4pPi7JMa4QgrrsI1TLBICDmGkiMww/nH+v3wQqd8/G0HPnsqKsgNLh4p9cCGsDtoUiPDMhdH9YJ6WpWjMN4S7Ehs/I9p1BIHFhsddMWE1dIrxYdYYHXChOUaPqOTpQls4poB4QNzrbaKIJ2mk81Ene4mq3t0e4XuGPGOMflTCayhpOUup1ahhdgO8adYgYXhRq9/yQGLODtlcSCmxEeKm2CmmtKl3SGmYeJXHaAuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nhZg2iermVd3E78W6wl1Z6dDFBfD2bmQHw0Wi5AL6uI=;
 b=eP4F8n0W7zkyvn2+T4s6WqYWrOsN6dvoM4Ih0Q4IQbcsl9yr3NiDUP+hQD4aSKnSpIb5Z1Gd08yvreRcmhVi/p0jUN75lt/xDL7FSCzYd+awkGyqPYf0P7yig7KWzQSXPdLVo8f1Oxx32mz8Y5gZXHRVk92evGnhNd30yyI2zhk=
Received: from SN6PR04MB3999.namprd04.prod.outlook.com (52.135.82.28) by
 SN6PR04MB4542.namprd04.prod.outlook.com (52.135.120.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 05:39:39 +0000
Received: from SN6PR04MB3999.namprd04.prod.outlook.com
 ([fe80::413c:37f2:e66d:1110]) by SN6PR04MB3999.namprd04.prod.outlook.com
 ([fe80::413c:37f2:e66d:1110%5]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 05:39:39 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH v3 1/3] RISC-V: Issue a local tlbflush if possible.
Thread-Topic: [PATCH v3 1/3] RISC-V: Issue a local tlbflush if possible.
Thread-Index: AQHVWIMVUivLbwS0nk+EJJcu32ceGqcGZd4AgAAlowCAAAc7gIAAFDcA
Date: Thu, 22 Aug 2019 05:39:39 +0000
Message-ID: <6142d5abf18206d6ad7db9d89a3385651649b4a6.camel@wdc.com>
References: <20190822004644.25829-1-atish.patra@wdc.com>
 <20190822004644.25829-2-atish.patra@wdc.com>
 <20190822014642.GA11922@lst.de>
 <0f66583404f89ab2bd6c264ba653364ab8a3160e.camel@wdc.com>
 <20190822042717.GA14076@lst.de>
In-Reply-To: <20190822042717.GA14076@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e85df39-22d2-43f7-996b-08d726c32012
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:SN6PR04MB4542; 
x-ms-traffictypediagnostic: SN6PR04MB4542:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB45424C5A00681FF33E309147FAA50@SN6PR04MB4542.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(346002)(136003)(39860400002)(396003)(199004)(189003)(11346002)(305945005)(4326008)(66446008)(2501003)(64756008)(25786009)(91956017)(66476007)(71200400001)(66556008)(46003)(7736002)(118296001)(102836004)(6506007)(76116006)(8936002)(81156014)(54906003)(81166006)(71190400001)(256004)(229853002)(86362001)(1730700003)(6246003)(14454004)(76176011)(99286004)(478600001)(5640700003)(6486002)(6512007)(5660300002)(66946007)(53936002)(6436002)(6916009)(316002)(6116002)(2906002)(446003)(36756003)(8676002)(486006)(186003)(476003)(2616005)(2351001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4542;
 H:SN6PR04MB3999.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IlWqQ6A5ucYgEutLc8oeu8unU/Vao6KZptT0095Aoc0PI1SHaeK2HY5YSJeCifm6B+oAVIw/TrfY5ORNsY0t5Eoq6OH88aJX+mD4PpBznsfZR0tT+SRTnfJv6ABTNKdY9O4/17i/5ROKuf2A8AaVwOHUcSI51GVijmZ2iMGqBwDLtTUH9KJHsMKq97xll0ul6x8N3Gh9UInmRiCwvqT+4HF1hxhuk3PPUeNZEXqujt2/dR7VX5jxv93EXQyMPWYEJ083EOMrzA6HdyrG+jZ0V4gDTzptq+5LD3tJAkJwCVYTxc+ArODcNVxSAeGIen/OJSNPreWAVOrhPIfOZweKhl7mkOSxI4g6LYsEfONRgQx1QI2MlUBIzPZVY6SvJcBro1VszM8eg96JgdPerF0tbhSH+uxUgnbA28CJAffl3ME=
Content-ID: <D8D99045C8BF184983AD64E3F115E39A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e85df39-22d2-43f7-996b-08d726c32012
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 05:39:39.3793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lrGEo6WIJHWyIO5AECL7BcYyfDyNwDX3a/LohYehCsMDdLvylYiN5R9ycGB33EZLTmBrXVaameBvk1ByhzdsUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4542
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_223944_605734_31AE285C 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 06:27 +0200, hch@lst.de wrote:
> On Thu, Aug 22, 2019 at 04:01:24AM +0000, Atish Patra wrote:
> > The downside of this is that for every !cmask case in true SMP
> > (more
> > common probably) it will execute 2 extra cpumask instructions. As
> > tlbflush path is in performance critical path, I think we should
> > favor
> > more common case (SMP with more than 1 core).
> 
> Actually, looking at both the current mainline code, and the code
> from my
> cleanups tree I don't think remote_sfence_vma / __sbi_tlb_flush_range
> can ever be called with  NULL cpumask, as we always have a valid mm.
> 

Yes. You are correct.

As both cpumask functions here will crash if cpumask is null, we should
probably leave a harmless comment to warn the consequeunce of cpumask
being null.

> So this is a bit of a moot point, and we can drop andling that case
> entirely.  With that we can also use a simple if / else for the local
> cpu only vs remote case. 

Done.

>  Btw, what was the reason you didn't like
> using cpumask_any_but like x86, which should be more efficient than
> cpumask_test_cpu + hweigt?

I had it in v2 patch but removed as it can potentially return garbage
value if cpumask is empty. 

However, we are already checking empty cpumask before the local cpu
check. I will replace cpumask_test_cpu + hweight with
cpumask_any_but().

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
