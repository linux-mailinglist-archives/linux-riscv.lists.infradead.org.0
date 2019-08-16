Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F183590752
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 19:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8yB14GCRi7Xwqt8otuNOAwBAjIDY73JlaVifRFF0Tk=; b=ZaPRQMZ9AjKJPt
	SJrTdudlgbX/vNox9eL8CoMCGo0q1cltvLAj/9fuE5SngebbsOD+2VsNRItJcWKSFwBCjS23KdvDB
	sk4csgjWzw9jAdmxm5mqXJvdb3/LsdaSbK+D1V33cmvfLvAhBjCY+stUfY+z/drYjcAjeh4XBTr/L
	P1uTBpuEqskFzFEcFHkxo1yW6KFLiBxXUu36YA0a1UQCfRhhUokfwIeuQ4EX6uMUZ1wZ/Fa/qzn7U
	9ow5GpK4ud80YNYXaEZl0WraEarxtoArdgn3XKrWnDXGAPTRWXlqmrhvlfZTI20vy3ZE7eunp19Yx
	AYyXMsudDJmIUXFBCjYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygTv-0000Iy-Hb; Fri, 16 Aug 2019 17:57:43 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygTp-0000I6-5H
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 17:57:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565978258; x=1597514258;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Dy5Yqge4KkvCJQhmp2QJeUtrMRLk+5xARxZ8XVHcUjQ=;
 b=OaM7iba8E+GjZYcNYLvvMKxF7leaoxK7h23rnKGLVWlskHgr/otMAgMR
 DMAUw8w4XSxzV5t6Lb8QbXp4CM+2LbZ/OMLpgzzeRd7rn5imIqEA4/pSm
 9mnak8ZbPjOdrh9wPq6eBHjHvTqE+7+yYLIqdeKwQgJ7svW6gSEn1LRRD
 T5v2phgv2b/A41RqJkxL57mHta+09gJfkJ5N86OXjXqE9PgJILCpvDEi8
 MIZegjiIHU4Katw50W8rNAtEkgwfCh/XGl/6nLiMHu6Gu3EozO6PV0285
 jstvK2Cgb+l0O/f198fqj5+sazM2txbGLUv1uDTtUlpfcSe1LPtgFQlBE Q==;
IronPort-SDR: Ai5mxqGrhOItb8wmXvjiWqOBKt8oztJSJgi7O/R2+KR5Q7jAnn6OLoB1MEPdwH1kuH0xV6+qt+
 kluRo4D7P9iVXJeLF7GWXxjfQ8SA9Jn3nvO9Tu6ptE9Q+iymioza8h8Tt2xxkH+z8PFkrvmKVD
 qJG9A+W7MSC7PXBWYX0+ZGNrt1YFPngRGeTwr79JVexC/y+PQleiWWvyRNQVNQdXLV2NT323Kc
 HLMlmSt14D3VwfmXEOrfhoNa+L1CHw+tZZ3bt3J2Ff+H7R0iiqqThq/vJpMafJMEtGW5Di91Zu
 +NU=
X-IronPort-AV: E=Sophos;i="5.64,394,1559491200"; d="scan'208";a="120610122"
Received: from mail-dm3nam03lp2057.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.57])
 by ob1.hgst.iphmx.com with ESMTP; 17 Aug 2019 01:57:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AejPJKtYZyhDdXm0+6LKfdG9dqCKdOM7lQewK8A3uqQCAFphk1VEebznZh9nsI3CfNFPvRya2QA4CWjPbcGy7xWDmpeYlVhFGQO+vJJCgOnr10duu5DHEqhwnHu58yMl4oJ7Lt6V4LmR3IWPZqWznIk0N/vugiMLPdNk4MvYmYXQcdZHXPg3/6p/F/jc3t5NC8Yrym6pAXwHZ+g7NTuDwLZpQut1yk0fCH9q/IjvfoW4GsseIOO74qwbE5WWYHeatCmaky5EjFNOoNeUXOkPukHscAyHW4qrckd5V5mgit2v0E5p//oVd8l4dFToPrghA/jLQecwUl/vnJknBDFtMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dy5Yqge4KkvCJQhmp2QJeUtrMRLk+5xARxZ8XVHcUjQ=;
 b=O6i8me838Vnz6ZcA6lSYb5Z7xcf9tSNN77T00fT+ACRi52EWXPKmTV8JByl70II5FMmD9Ipd3KdOV/n/H+k3151bGZG7e18wzuGx1K99NUQSq9nXZ+CX6Wjq+rb3nR9YaFOIVO5GQvm8UKNTZWruOAwFVNy8ptiQArWSYYYV7LIFwrWdlb4WVzBhyv7Mrq9tpeDXeQnEb0XDYqnhNISNjq1aAKlD27ZfOL4fTYWrfygOdoj/6ar+gJcOjzHw++0eYSqzIQ3evWY6QD6NRwz+zhs3Hkt++1ewEi9JdFv5SD9HfnUI5UrHEw38H6PZcRYqt7nO+XxLnLVjqlQAHRUWVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dy5Yqge4KkvCJQhmp2QJeUtrMRLk+5xARxZ8XVHcUjQ=;
 b=pjQjbUfgDaEuE7+Usf89JG5LN6q1VnX3THhRN5niQQvzvxYbTjBa7+XPqnDeXr8G8SKq+l4w43SCcw+WKIhWmLl+SWLFMlwrXL+1IqN5F+nNY0xO598kKr5k2opEg/05yEpkAVNr08D0EMvuDDbDtoNvGT5XiPeLMAV8BnINps4=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4885.namprd04.prod.outlook.com (52.135.232.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 16 Aug 2019 17:57:30 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a%2]) with mapi id 15.20.2157.022; Fri, 16 Aug 2019
 17:57:30 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "palmer@sifive.com"
 <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH] RISC-V: Fix FIXMAP area corruption on RV32 systems
Thread-Topic: [PATCH] RISC-V: Fix FIXMAP area corruption on RV32 systems
Thread-Index: AQHVVCiwkrMhoC888UyZ9cBEv4GnHKb+DtkA
Date: Fri, 16 Aug 2019 17:57:29 +0000
Message-ID: <4c4831bc93995c54c8df0de14da23b85975f62f8.camel@wdc.com>
References: <20190816114915.4648-1-anup.patel@wdc.com>
In-Reply-To: <20190816114915.4648-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2654ce52-9291-4a5a-d725-08d7227334e2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4885; 
x-ms-traffictypediagnostic: BYAPR04MB4885:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB488563E9FD1639D9A64EE9ED90AF0@BYAPR04MB4885.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(199004)(189003)(2906002)(118296001)(25786009)(99286004)(76176011)(256004)(5660300002)(6512007)(6636002)(6116002)(3846002)(316002)(71200400001)(81166006)(2501003)(81156014)(14444005)(6436002)(71190400001)(110136005)(8676002)(54906003)(36756003)(305945005)(2616005)(66476007)(446003)(53936002)(86362001)(229853002)(14454004)(66946007)(64756008)(476003)(478600001)(76116006)(486006)(102836004)(6246003)(7736002)(186003)(4326008)(6506007)(6486002)(8936002)(11346002)(66446008)(66066001)(26005)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4885;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: f2cNn9lY+IuDvcy0oXkFJJ4q3+KR6LLalg1FuePL4ltyYZcB6+/FDkvFHKyZlS9Iv4CwPaLd7FtttetsAeOXJ7AyhvAKN3QuG+ZRRv2LUho83zm/W5j7m+Su7qH/Vq3ZdRnZz2W1nOXHeBYEZnhgVQji/KzqrnyyLfJyct/lM9uhPzlMdOIXyJ5CqexIElL3mlh/VZcPTAhlEaEIuNI/R8lr9qd4okJrhZldYJa4yFE2I/w2erFRtV1G/i75PaW1IE04x3RzlIw0/+cxzwOnNaHKMIwz0IQSgkQqyYOZXKg0j8Nwu5rvh9aYZ8bBig8a0gmvkQ0jNtQG2F4tygYKcU2Mz+08MBteZTANtv0OnkESNYbDkcWr4fM1KeJ7ZCRZraQNe/4FcAUqFlBJQ1au31tmDlCgrAaLndHvqBBlKGE=
Content-ID: <DF16C60106E8D8428F4B63AFA42C7915@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2654ce52-9291-4a5a-d725-08d7227334e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 17:57:29.8970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3NQV+iKsRMxL8JZOHg7eAvQXRh0uLiUiECt6e6+3mw08m2Joy4AHwbSAjzCzUfRJPAv5utb/sIDDL+kM+hu5IYa9GOw6NEZ+vkxqOCwYcco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4885
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_105737_326498_29F3B0C8 
X-CRM114-Status: GOOD (  20.67  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "hch@infradead.org" <hch@infradead.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-08-16 at 11:49 +0000, Anup Patel wrote:
> Currently, the order of various virtual memory areas in increasing
> order of virtual addresses is as follows:
> 1. User space area
> 2. FIXMAP area
> 3. VMALLOC area
> 4. Kernel area
> 
> The user space area starts at 0x0 and it's maximum size is
> represented
> by TASK_SIZE.
> 
> On RV32 systems, TASK_SIZE is defined as VMALLOC_START which causes
> the
> user space area to overlap the FIXMAP area. This allows user space
> apps
> to potentially corrupt the FIXMAP area and kernel OF APIs will crash
> whenever they access corrupted FDT in the FIXMAP area.
> 
> On RV64 systems, TASK_SIZE is set to fixed 256GB and no other areas
> happen to overlap so we don't see any FIXMAP area corruptions.
> 
> This patch fixes FIXMAP area corruption on RV32 systems by setting
> TASK_SIZE to FIXADDR_START. We also move FIXADDR_TOP, FIXADDR_SIZE,
> and FIXADDR_START defines to asm/pgtable.h so that we can avoid
> cyclic
> header includes.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>

This fixes the RV32 issue.

Tested-by: Alistair Francis <alistair.francis@wdc.com>

Alistair

> ---
>  arch/riscv/include/asm/fixmap.h  |  4 ----
>  arch/riscv/include/asm/pgtable.h | 12 ++++++++++--
>  2 files changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/fixmap.h
> b/arch/riscv/include/asm/fixmap.h
> index 9c66033c3a54..161f28d04a07 100644
> --- a/arch/riscv/include/asm/fixmap.h
> +++ b/arch/riscv/include/asm/fixmap.h
> @@ -30,10 +30,6 @@ enum fixed_addresses {
>  	__end_of_fixed_addresses
>  };
>  
> -#define FIXADDR_SIZE		(__end_of_fixed_addresses * PAGE_SIZE)
> -#define FIXADDR_TOP		(VMALLOC_START)
> -#define FIXADDR_START		(FIXADDR_TOP - FIXADDR_SIZE)
> -
>  #define FIXMAP_PAGE_IO		PAGE_KERNEL
>  
>  #define __early_set_fixmap	__set_fixmap
> diff --git a/arch/riscv/include/asm/pgtable.h
> b/arch/riscv/include/asm/pgtable.h
> index a364aba23d55..9dd08a006a28 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -420,14 +420,22 @@ static inline void pgtable_cache_init(void)
>  #define VMALLOC_END      (PAGE_OFFSET - 1)
>  #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
>  
> +#define FIXADDR_TOP      (VMALLOC_START)
> +#ifdef CONFIG_64BIT
> +#define FIXADDR_SIZE     PMD_SIZE
> +#else
> +#define FIXADDR_SIZE     PGDIR_SIZE
> +#endif
> +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> +
>  /*
> - * Task size is 0x4000000000 for RV64 or 0xb800000 for RV32.
> + * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
>   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
>   */
>  #ifdef CONFIG_64BIT
>  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
>  #else
> -#define TASK_SIZE VMALLOC_START
> +#define TASK_SIZE FIXADDR_START
>  #endif
>  
>  #include <asm-generic/pgtable.h>
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
