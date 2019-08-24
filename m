Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9725C9B941
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 02:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kq0DNui8oFJMVMXkOlYImLis/Oc5/40onCTXJP6TMxc=; b=PIXeTs/sR9MW4H
	G3VlM+qGHyFlWhmvT0q5B8uQgSos2GO3OZXtuM0+a7Cc7woPqKXdrkDQTnvZouaxHLQuHjpuPYMUd
	AM6YnNYx2YPJ97di8GhFNeAR6IUmJQJt1CAwV402YPHskAU9VmbpVe+pWeZXsUS+lnu9MPEjJp6WG
	wEloq+gPipPoM7k604EbTyeRm80fSFcTLrOWVf36x0LKFHfT+IuNsXJbT5fmyb2IosDTW6kZ9AYlR
	aDWBWgYCqA038ph8GKAzCk1sxr3w/qD3TqfPcf8vsI3S4zN9//EHHfsdGyUOhuxXIImLoWxFS/PE2
	+q1CC9vkR5PFBQKrYfQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1JWv-0007Og-Ac; Sat, 24 Aug 2019 00:03:41 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JWr-0007OG-TX
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 00:03:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566605018; x=1598141018;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FFe68K6IrlsVGidNS0oJZb867mLiob5iOkR4AkLyDCU=;
 b=YvgLhAicuJ6JbwbDhCRZGAhcsNrUcwc2KS/HP1VMWlSRrnghFr6Y8wUP
 28e5cxQFlxVJ9yi5M3EHuVdSDdlC/yq82dj6L31vz0qklFcWvTKyf9bop
 CaVtdNxD5iy+BXDjYhO9Bd0CHt7IdfbAg1X2pTu4rKd4Ul6ju2FEkOMFM
 w0R7vaUB1PoPGDb/jjUciiK+B7D9wp+p/JXihKvR+lIMjqISGpoNlZpKu
 FhAyDAWmvlglGk+5uzMiv87GS6bTqJU5PDC3MpMgTE2XvW5a5DV2s0u3V
 rrN2S94mTkq0LW3/3blnL/JEiH+WEP5+Y+8DLcJSWciBQmmNMfLmHg0nC Q==;
IronPort-SDR: 3ZMyS2qmBh/kVzH0N0sfCu36y9aJNyS48Yb3isLnCcwnq4gQzLwNQFB+AmY4Edhrb4T6zvemyo
 pXzRte1aNlaKXX9P+LQhaMbyaEadMXr3Q7wgwlLSpCzTtkoT3Lmm9arUtA/8cxH6NJ44EAk/t+
 c8yJrJCG+B/2n0hGNABWZtTpFN2PC67ZV6/JNqXNuGhpTcC4CebMB39pDesPL9LEl6oP0hWDbf
 zZOArDNvkr2yVxcEEHBRFV5ZrupJ74zizgS7kyAjcC+4wbRsnyDUBdFlk3aVB5C0C1AqiZUMcW
 pkE=
X-IronPort-AV: E=Sophos;i="5.64,422,1559491200"; d="scan'208";a="118155389"
Received: from mail-sn1nam01lp2050.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.50])
 by ob1.hgst.iphmx.com with ESMTP; 24 Aug 2019 08:03:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I7QNf+RjRiCKyyK57G1lWh7h8lb/UbGp+7zgbk2/qgOKk9DDnegEShhn616zl9mEUP1qch4AxxVUE/V3row8SPXdaVvc8YuQWpq5U9DoN58ebqMmz+pjYdVTyJmnzAoeRXUrBJOuyAmGoQuznbz+sYC+0K2pieK0N+uT8Wo+46XDCACA6wyBw7lJ1e4mLXJWJqYoWgM1JhE+TXtfXRPmlsTM3IyaB/nGXeaLlN9djtyAdNKLSfxLI0CnlxXHXBBCtMv3kvXRIK+OQM56wMV5B914/tpmfM6dXFRXa3LeSwkP2qSu132qXHOBlRSkVE8cGeCrd8OVFttWnx5zw0M9PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FFe68K6IrlsVGidNS0oJZb867mLiob5iOkR4AkLyDCU=;
 b=kqHU1ocF7IFOx2Je2DKU66DBct3m1u+xmyD2D2HwHWj/59JngyN3ymQ0GaHDuj8IR1k/cCFJwWizCsbwWogoPc7DqLVFFwsEgaUZpbN7dHE3QTmImeVgMk10FuqZ8U+zfwYyuN1YInSOJ5LzrV/oBMlJ9UG0V8wcFjPr0cFkVUJVSjW4OdioiE5kiI+BnywfPYyaEx8nKolYe4coFb/b5d0xb2wgGxK4BN2JPVDK8PAqkJxsu3rrniNPvyBRmF2UUwS9jYj7dETmlFiJQy5eKVhb3h/TVGFj09S6U+iDH9KWZzN6tItDgoCNn9w10tzSiYuvY6q4xhyJsVuqd0cckw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FFe68K6IrlsVGidNS0oJZb867mLiob5iOkR4AkLyDCU=;
 b=GNUtHscZ2ZECm1avxknQLkpyJBgEl9IxMltE/jklv928Ehli9DSnfocbNLd8J3V/WWPh2Kk4sblhAmc2IICXwqpAnoga0ixYFEMfTYxfh/r7EBXKUqJFg2XsV1qfPoj8M1vNtqXB4W0Fz7Haz8ITntsxHeQ1Y/B9iKfg98DaIiw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB6055.namprd04.prod.outlook.com (20.178.233.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Sat, 24 Aug 2019 00:03:36 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 00:03:36 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 6/6] riscv: move the TLB flush logic out of line
Thread-Topic: [PATCH 6/6] riscv: move the TLB flush logic out of line
Thread-Index: AQHVWDD0mZON3/lD/k+/PPyXPCED+acJbl2A
Date: Sat, 24 Aug 2019 00:03:36 +0000
Message-ID: <d81753c042becc89bfe1b31b79d107cffcce8de0.camel@wdc.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-7-hch@lst.de>
In-Reply-To: <20190821145837.3686-7-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93f6515c-1c87-4dc0-ae59-08d7282682c2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6055; 
x-ms-traffictypediagnostic: BYAPR04MB6055:
x-microsoft-antispam-prvs: <BYAPR04MB60552751E3FE3788481BE6F4FAA70@BYAPR04MB6055.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(189003)(199004)(2501003)(478600001)(5660300002)(81156014)(71200400001)(6506007)(36756003)(66946007)(4326008)(446003)(118296001)(6512007)(86362001)(11346002)(102836004)(14454004)(66476007)(6486002)(76176011)(486006)(6436002)(26005)(316002)(71190400001)(99286004)(2906002)(110136005)(6116002)(66066001)(8676002)(186003)(7736002)(81166006)(8936002)(6246003)(2201001)(229853002)(256004)(2616005)(25786009)(76116006)(64756008)(53936002)(3846002)(305945005)(476003)(66556008)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6055;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6wIjUpxH7esz3sW2Eqmt/IQObC3JbE3mx/rysTcLDzXuYhrWXp2FkGEO0bbMlh5hhEAKj7EU+OoXSHivdn/NRg8dttp98kvHukvYCmXsIeLjsMgilZ5Z3o/5ysGvhzFsRGEO7ejcJA4nDg8bIJZGW72lpVxq9vvIvQ1JOBfWQPGkdlOK6gV1YzvDkzvyTJYxR6WSOpc/AzHLafJqB95wZLVu/Brs1987vCTVWnoqh2EqYFb+H9az5h/iXCRP1g7F78QVdZT8RgEoV4G/mc6Jzsju2GcXJtBWwFrG7gv0Jqmt3hVj1kNAErH3RNlXlWeVPt25L7e8kEz2z7YEUH4T2TF/OXnSvSBzMrg8u3VwPfWs33Vq0BYeOYtdf5y3UEZ+uajusrlODXoDtKRLwHP0ohE/OH5gY6cLKHMMfRhqpxI=
x-ms-exchange-transport-forked: True
Content-ID: <7C37E89E39B1874CBD9115F1BD63BA15@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93f6515c-1c87-4dc0-ae59-08d7282682c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 00:03:36.3559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jUih9qdBHaXT3IIX7lznEzMv8s9w9BknWtgEH9r7W4qJ/dZ9iUYdDp+iHQypSvuRx1LuKrJ1lKRFkGFs58Yotw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_170338_014350_34E89E87 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-08-21 at 23:58 +0900, Christoph Hellwig wrote:
> The TLB flush logic is going to become more complex.  Start moving
> it out of line.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/include/asm/tlbflush.h | 37 ++++++-----------------------
> --
>  arch/riscv/mm/Makefile            |  3 +++
>  arch/riscv/mm/tlbflush.c          | 35 +++++++++++++++++++++++++++++
>  3 files changed, 45 insertions(+), 30 deletions(-)
>  create mode 100644 arch/riscv/mm/tlbflush.c
> 
> diff --git a/arch/riscv/include/asm/tlbflush.h
> b/arch/riscv/include/asm/tlbflush.h
> index df31fe2ed09c..075a784c66c5 100644
> --- a/arch/riscv/include/asm/tlbflush.h
> +++ b/arch/riscv/include/asm/tlbflush.h
> @@ -25,8 +25,13 @@ static inline void local_flush_tlb_page(unsigned
> long addr)
>  	__asm__ __volatile__ ("sfence.vma %0" : : "r" (addr) :
> "memory");
>  }
>  
> -#ifndef CONFIG_SMP
> -
> +#ifdef CONFIG_SMP
> +void flush_tlb_all(void);
> +void flush_tlb_mm(struct mm_struct *mm);
> +void flush_tlb_page(struct vm_area_struct *vma, unsigned long addr);
> +void flush_tlb_range(struct vm_area_struct *vma, unsigned long
> start,
> +		unsigned long end);
> +#else /* CONFIG_SMP */
>  #define flush_tlb_all() local_flush_tlb_all()
>  #define flush_tlb_page(vma, addr) local_flush_tlb_page(addr)
>  
> @@ -37,34 +42,6 @@ static inline void flush_tlb_range(struct
> vm_area_struct *vma,
>  }
>  
>  #define flush_tlb_mm(mm) flush_tlb_all()
> -
> -#else /* CONFIG_SMP */
> -
> -#include <asm/sbi.h>
> -
> -static inline void remote_sfence_vma(struct cpumask *cmask, unsigned
> long start,
> -				     unsigned long size)
> -{
> -	struct cpumask hmask;
> -
> -	riscv_cpuid_to_hartid_mask(cmask, &hmask);
> -	sbi_remote_sfence_vma(hmask.bits, start, size);
> -}
> -
> -#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> -
> -#define flush_tlb_range(vma, start, end) \
> -	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) -
> (start))
> -
> -static inline void flush_tlb_page(struct vm_area_struct *vma,
> -				  unsigned long addr)
> -{
> -	flush_tlb_range(vma, addr, addr + PAGE_SIZE);
> -}
> -
> -#define flush_tlb_mm(mm)				\
> -	remote_sfence_vma(mm_cpumask(mm), 0, -1)
> -
>  #endif /* CONFIG_SMP */
>  
>  /* Flush a range of kernel pages */
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index 74055e1d6f21..9d9a17335686 100644
> --- a/arch/riscv/mm/Makefile
> +++ b/arch/riscv/mm/Makefile
> @@ -13,4 +13,7 @@ obj-y += cacheflush.o
>  obj-y += context.o
>  obj-y += sifive_l2_cache.o
>  
> +ifeq ($(CONFIG_MMU),y)
> +obj-$(CONFIG_SMP) += tlbflush.o
> +endif
>  obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
> diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
> new file mode 100644
> index 000000000000..df93b26f1b9d
> --- /dev/null
> +++ b/arch/riscv/mm/tlbflush.c
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/mm.h>
> +#include <linux/smp.h>
> +#include <asm/sbi.h>
> +
> +void flush_tlb_all(void)
> +{
> +	sbi_remote_sfence_vma(NULL, 0, -1);
> +}
> +
> +static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned
> long start,
> +		unsigned long size)
> +{
> +	struct cpumask hmask;
> +
> +	riscv_cpuid_to_hartid_mask(cmask, &hmask);
> +	sbi_remote_sfence_vma(hmask.bits, start, size);
> +}
> +
> +void flush_tlb_mm(struct mm_struct *mm)
> +{
> +	__sbi_tlb_flush_range(mm_cpumask(mm), 0, -1);
> +}
> +
> +void flush_tlb_page(struct vm_area_struct *vma, unsigned long addr)
> +{
> +	__sbi_tlb_flush_range(mm_cpumask(vma->vm_mm), addr, PAGE_SIZE);
> +}
> +
> +void flush_tlb_range(struct vm_area_struct *vma, unsigned long
> start,
> +		unsigned long end)
> +{
> +	__sbi_tlb_flush_range(mm_cpumask(vma->vm_mm), start, end -
> start);
> +}

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
