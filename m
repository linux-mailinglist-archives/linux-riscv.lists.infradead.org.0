Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4B421DF2
	for <lists+linux-riscv@lfdr.de>; Fri, 17 May 2019 21:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N2YRbQMrnc25WSHGEAJrvk9mixmhzlm1zX/7CZAbGA8=; b=N1VuKqCDqfoSbEiZVva6ngZFU
	Tesq1pinNz+W4yQ27HZZ6F4py8gfmFeQlXQLX6aKqXRgGgFBP8OfDuaIXzHjElAf/V3QsiKKT8Ruv
	fYd8ix/cipMI4ZFp3gNMm+kO+qPDQ2mwc2u4TIW2c5DSMlE5GYtjAQ0Lpiy0k2zrOt1/Ch88pCflJ
	GitQR+dF3MoYjsxQLLoxW6052DQxfjBV6O1qvIkS5NOsG12I4DBpDNhP67/VqT6Sa4B0XUMU++qmd
	XV1kRMRLLvhGsc+De0X1FbMOJ5xcZFDx4x6ZxRQ/7kDeeNiRq8q8vs3AHkYFlGZJEnGVaG9qqJ/6e
	6GAiWY+WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRi7Q-0004G7-HV; Fri, 17 May 2019 19:02:12 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRi7M-0004Fj-KQ
 for linux-riscv@lists.infradead.org; Fri, 17 May 2019 19:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558119728; x=1589655728;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=sCHcqEnJzvTT1HQ3nCB58qYi8YhUS/CBmEQC9NnNdhw=;
 b=Qa7tU74LmdV+jtWdBv4Rr91/leensSPSh8Ua1hRIviBJWO6VQE3pxuMP
 0bxLUvQfs5qRUi7VyqUn0JgrJSWJz6K8X2cwOro6vQ00D8rZNxtyG6XX0
 LMtl+hZ6eyC8TRb5BS3TEEKsIXjzVoBFr4HGgSj2nsiajtz1/tG5E+0TB
 cqdTrRp+Fbd2w1I8cwcdUMZebDiK5xeVvYARbRICFZ3tssUyYbuyCtH2y
 I6ca/aITFOtmSmfJSF68NZUQPDuo/5kQSwyeGuQf+Hr47z1752+1nT/Ed
 1MzdkXvw8KociuG/FS322clAgegoFz8JtQEP8UuNfBqzQlR8M3al5duVy Q==;
X-IronPort-AV: E=Sophos;i="5.60,481,1549900800"; d="scan'208";a="214672347"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2019 03:01:48 +0800
IronPort-SDR: iPqaSIUE1UL0I/Taak4z+wAGORTBXbLCKil+ngeCMpcOkjqh0GeBgitmKceTmYiUHaF1Ykk7U+
 oGelKDhl0I8O0CldtO8NFG2Bw8Nug3NFfa/6gWRU58y6Sv2wDuD97U3fI1TulqIqg+GpVsA+vV
 Z6Flw5R1sU+/19Kafo0PDYiUiMrSkIemLpQQSxN8GHRpQmPWywj61QpWTXtX2vfD9SwrvdefiZ
 04T3vUzr4zj5Vp6C1+sd+8XYCuSd0oj39h06ww3ZZKypD43U1sYrIEWIUXGISBb4EWVgwh1Ugw
 iVx1v22lbEjdwWzzyl1wHckM
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 17 May 2019 11:37:19 -0700
IronPort-SDR: Gu7q0xAdL22XcBU/yPn/+JDD88Iu4XRdgU+EV6wulb5SqSKv19ICR1lonDFOjrdpIwtlS7B9tI
 XVbnajdmVvoGWxmqt6qEXlO5rcWvN/q7Eh/y8cMV07uveDWi9O2aoxh2y1Ea284gcrHe00Sxlz
 WcyfjAXg0A9QGZOswE9zJwCdnybPxRq/TiSklrAL8tNdFnMO5VmFkC9g3bvEm5UD3oY6dHBYfw
 MNI81DExSLt8zytIpglwz2NUbY6wuyQu3JVLb2X17VvPqZC39q7e01ZIImcr2H3MHyW4viTQvk
 pwo=
Received: from cnf000212.ad.shared (HELO [10.86.56.27]) ([10.86.56.27])
 by uls-op-cesaip02.wdc.com with ESMTP; 17 May 2019 12:01:48 -0700
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190501195607.32553-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1905171017510.9104@viisi.sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <e71f11f1-4c48-342c-a718-de5f14de4c36@wdc.com>
Date: Fri, 17 May 2019 12:00:22 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1905171017510.9104@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_120208_791625_12DAC154 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, "merker@debian.org" <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/17/19 10:39 AM, Paul Walmsley wrote:
> 
> On Wed, 1 May 2019, Atish Patra wrote:
> 
>> Currently, last stage boot loaders such as U-Boot can accept only
>> uImage which is an unnecessary additional step in automating boot flows.
>>
>> Add a PE/COFF compliant image header that boot loaders can parse and
>> directly load kernel flat Image. The existing booting methods will continue
>> to work as it is.
> 
> One other thought: as I think you or someone else may have pointed out,
> this isn't the PE/COFF header itself, but rather an ersatz DOS stub
> header, that is apparently quite close to what some EFI bootloaders
> require.  So from that point of view, it's probably best to just write in
> the patch description that the idea is to add something that resembles an
> MS-DOS stub header, and that the motivations are that:
> 
> 1. it resembles what ARM64 is doing, and there's not much point in
> inventing another boot header format that's completely different
> 

Yup. I will add this in the next version.

> 2. it can be easily converted into an MS-DOS header that some EFI
> bootloaders apparently require, by tweaking a few bytes at the beginning
> 

I mentioned all the required changes in the proposed header to so that 
EFI bootloaders can load it directly. Probably, I will clarify it more 
to avoid confusion.


> 
> - Paul
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
