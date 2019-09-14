Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4920BB298E
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 06:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxfqK4yaSzyNtSlw5DlpSC5ouxQfn6ILWo3z5XYebsw=; b=b2ggGotEWpT1kp
	MAOZ0XykJS8eJsEErEdbFOyFkkwAU9onzL2tI7v4KoBNGlWQWaoezRnt7QsccoUj226j28i4DLsep
	PzSSvSz1fQ21cRxfv62Mc9GOb32HQgSWzbPiGepPdcfcYWX+U/kC2zrxi+LyLJ2FZpAt7LMDuSQAG
	YjULplBl52/CB/uaGvSY9Nc8H7wadjC8u6pjildAOmcFoqAK3W4Rgbil0/ueXqait9vHTG8gxbiaz
	xW/71ltpVk5BMMgHI39l3j0nUmxtrSRsJLAH5OkHzv6FL6748d1gJLanUgtEAvpHaZlE3HVczoR2f
	a7F6YZLm0TnWH+xYcdSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8zHL-00077p-H2; Sat, 14 Sep 2019 04:03:19 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8zHH-000775-5k
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 04:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1568433795; x=1599969795;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9nckn0HIjsNajkSiaj0Zk8ZN1s8rY8CjA4EqUXmrUVw=;
 b=pWm5GixZApFnlkSvuqGAQ+c/U4o1HJvWXLd+V0YMnhJPIYwCqcRMNGKD
 0GdcGZLGn/6rA1RhGbjUw76tDhSj+TArkIZ1TCGmOIY9ixE8ErXKPsaE2
 +vpsOA/e52DIRGR9yBWF6oOSMdP86GfMDBjn5ZShyTCXa5K88UelNC1Un
 0Vg+p8PcP/mI+0bIY36K2IiXl0dj2GXEfk0gBHNU0XBwLpbhsOPZLWVbM
 T1fVywL7chORv3gIN6GOw1QEVqADXGE+c9lofDNQ1gw540f3Nt6RET40T
 IbREUC8r4nn6YVdP2HmOXC0LJfPY4Cen7jNU+dOTewop//HjzJEKcdH/5 g==;
IronPort-SDR: 15vkOVZIi2ROrr81AmfSOI8rQE0Xy6e2iwplmux+qA45vM7s9Jr0BCzpwOq+B9lTh9uRb/idyL
 TjpF0LX8wF3g9HNwQaT/ZxrjYfG+MBbbq3aAE8faoMWgswWclv1WrrNDpBMTxVdJPYQze6qMy6
 ScODOym0GW1fdbJTF4yaiHI9X9PVRCROX79KvwtcTqJMwMVKwZRopz8ingT56zQ2MANljrC14Y
 RZpoMwrPnUAECpD5mgeOLz52mNvUm7hBG75vBmEJYMtErWirT/oTzGlS7bDa/oQVKfrd+eZDX5
 ciE=
X-IronPort-AV: E=Sophos;i="5.64,503,1559491200"; d="scan'208";a="119081298"
Received: from mail-dm3nam03lp2054.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.54])
 by ob1.hgst.iphmx.com with ESMTP; 14 Sep 2019 12:03:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AfwsdhqVF53/JEezQDL7QdEmQkqVoAW8nMSsiw2Pla6IuxfeVgQtBKdc108RxFTS1kOXj9TaL2l8k518/9rqyESXUNf4v8HZeGBwTiBzaHxZisHa8+3gcQcg+rOi/Ye7KyIZ/UYAjc2cw3/YH650pHjvpZpndmNqBui4rWrsw3Jm1lq9cI/lVZ/Vp7M+deB6aqjCe/Gu1cydh/TT/Dlv8Alu1j34WbC1WtIs1QKXu5kmDgii8oc3y9ezNwiK+/U9dWStNBebVZPzBvj5Bu963+oAGjAxHVd7Nfhn2Nh3su7iVoVJcqwqtRuT9dUqM3gDsdH150Gp3xPGjGmg02crLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9nckn0HIjsNajkSiaj0Zk8ZN1s8rY8CjA4EqUXmrUVw=;
 b=fVdgMP/8yeMELgHBYCCnsDDb19/PozlBVAULKh9o8WMnJkFvQhGRdlrXU3deyoeRCvx76YX9Tazckkte/BlGwfWUGYbP61lrzsBD25V5I+2OgUtGhSGeWwPSvgmIAvmb7oGcWqSdx+8bFXtlVsbeJOzl4PuYnidsPwcQjXe3aBiAQ5JSumGv6rIJrMAePUDquEpiLy4mQ7VmQBisw10jX+V3GFJK2Ulblvl2yv8ydV5wIb67cfb2w2lUOHKUWuc2HncF7qvzXFusZOn+VppURuOMTtxD3lkLUTntLaq0IIcScmAohOs1ljRLWw9IQBHZUu02N9p8ChG+dpdMJ3nq7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9nckn0HIjsNajkSiaj0Zk8ZN1s8rY8CjA4EqUXmrUVw=;
 b=RfQit6iLn6BKypTC7oqcZwjWtnBXSP6lOcbAm4XdgReQyKELM7n0f9IhPv05TajMzXu5tHZnGwJ6Ibswm+XIhVCUUzmMpTvd6rF32jlNqYVtX6Pua0E6QgWP1PJSiHTzLFLcjldB5Yinhs2QiaYp/Np+AbGj8reuV6J+uaPFauw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4357.namprd04.prod.outlook.com (20.176.252.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Sat, 14 Sep 2019 04:03:08 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2263.021; Sat, 14 Sep 2019
 04:03:07 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH] riscv: modify the Image header to improve compatibility
 with the ARM64 header
Thread-Topic: [PATCH] riscv: modify the Image header to improve compatibility
 with the ARM64 header
Thread-Index: AQHVaqmp3clfNOHPsUKKgfwsILvnBqcqjUuA
Date: Sat, 14 Sep 2019 04:03:07 +0000
Message-ID: <2e697e9c7966cf1a6cac415b6a247a8ba9f4de29.camel@wdc.com>
References: <alpine.DEB.2.21.9999.1909132005200.24255@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1909132005200.24255@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [122.171.172.160]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: adc2266a-bc83-4d3f-043e-08d738c8738c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4357; 
x-ms-traffictypediagnostic: BYAPR04MB4357:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB4357C35A8DDBB1A5D9C990FDFAB20@BYAPR04MB4357.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01604FB62B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(396003)(376002)(366004)(39860400002)(51914003)(189003)(199004)(7736002)(229853002)(305945005)(6436002)(6306002)(6486002)(6512007)(6246003)(53936002)(71190400001)(71200400001)(118296001)(5660300002)(76116006)(36756003)(91956017)(486006)(86362001)(66476007)(64756008)(66446008)(66946007)(66556008)(476003)(2616005)(11346002)(446003)(6506007)(14454004)(25786009)(76176011)(966005)(99286004)(102836004)(26005)(186003)(2501003)(14444005)(256004)(3846002)(6116002)(316002)(2906002)(54906003)(110136005)(81156014)(81166006)(8676002)(8936002)(66066001)(478600001)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4357;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wV+VQe80tHT6V6gKt6OCv6fWuL4aaqARiStrniXoHeKGzM4rwMrtQfRwxGA4c9hYp6QCyhhZyPsMNlLfwbyQkcbTfRLK7OCxsJe0gxMz8zTowk+3UlEfFfu9TwcvbQ28QPsN0tacVgIeaL3VcQJT8XrSeF5VToM0mXbQuuEfLPQ2hq/iwUyfY3dNEuvLPDILnMCEGIZPxdPZ1An/v0bYHk961DaaCaWpl6j2wb+zF1digWHZTWfTskcXhqXoWkBkJTOzjgmNHf0IbOsMiZs38mLQ1p9N44liTyXcuEJb636c5qr3VUbsuf10rnPdgzJlm3wedVN6srIArOhUT7vmH0vhvGYDcQRDDfTLA43IcodEliPVRnOhS0kd5I+zxEXFEbZtS0RUCqvKzTUpxgzkY1awEqDvmbiG03JemtXbKYI=
x-ms-exchange-transport-forked: True
Content-ID: <146FC49143E9C0489D1B2BB448E5094F@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adc2266a-bc83-4d3f-043e-08d738c8738c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2019 04:03:07.6996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: posH3fo2vORZRHo3zDpzHaH/TfiSeDxJg5ZE7hMD5NZms7vGr7msl6EPTtGAbtqWMy7EIj87TjxJ9jJdbR1e/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4357
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_210315_261336_6826ED8B 
X-CRM114-Status: GOOD (  33.03  )
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
Cc: "merker@debian.org" <merker@debian.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-09-13 at 20:08 -0700, Paul Walmsley wrote:
> Part of the intention during the definition of the RISC-V kernel
> image
> header was to lay the groundwork for a future merge with the ARM64
> image header.  One error during my original review was not noticing
> that the RISC-V header's "magic" field was at a different size and
> position than the ARM64's "magic" field.  If the existing ARM64 Image
> header parsing code were to attempt to parse an existing RISC-V
> kernel
> image header format, it would see a magic number 0.  This is
> undesirable, since it's our intention to align as closely as possible
> with the ARM64 header format.  Another problem was that the original
> "res3" field was not being initialized correctly to zero.
> 
> Address these issues by creating a 32-bit "magic2" field in the RISC-
> V
> header which matches the ARM64 "magic" field.  RISC-V binaries will
> store "RSC\x05" in this field.  The intention is that the use of the
> existing 64-bit "magic" field in the RISC-V header will be deprecated
> over time.  Increment the minor version number of the file format to
> indicate this change, and update the documentation accordingly.  Fix
> the assembler directives in head.S to ensure that reserved fields are
> properly zero-initialized.
> 

Thanks for the quick fix. Is there a planned timeline when we can
remove the deprecated magic ?

I was planning to send a U-boot header documentation patch to match
Linux one anyways. Do you want me that to rebase based on this patch or
are you planning to send a U-boot patch as well ?

> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Reported-by: Palmer Dabbelt <palmer@sifive.com>
> Cc: Atish Patra <atish.patra@wdc.com>
> Cc: Karsten Merker <merker@debian.org>
> ---
> Will try to get this merged before v5.3, to minimize the delta with
> the 
> ARM64 header in the final release.
> 
>  Documentation/riscv/boot-image-header.txt | 13 +++++++------
>  arch/riscv/include/asm/image.h            | 12 ++++++------
>  arch/riscv/kernel/head.S                  |  4 ++--
>  3 files changed, 15 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/riscv/boot-image-header.txt
> b/Documentation/riscv/boot-image-header.txt
> index 1b73fea23b39..14b1492f689b 100644
> --- a/Documentation/riscv/boot-image-header.txt
> +++ b/Documentation/riscv/boot-image-header.txt

There is a patch already queued that changed the format to ReST. You
need to rebase the patch accordingly

https://lkml.org/lkml/2019/7/26/1321

> @@ -18,7 +18,7 @@ The following 64-byte header is present in
> decompressed Linux kernel image.
>  	u32 res1  = 0;		  /* Reserved */
>  	u64 res2  = 0;    	  /* Reserved */
>  	u64 magic = 0x5643534952; /* Magic number, little endian,
> "RISCV" */
> -	u32 res3;		  /* Reserved for additional RISC-V specific
> header */
> +	u32 magic2 = 0x56534905;  /* Magic number 2, little endian,
> "RSC\x05" */
>  	u32 res4;		  /* Reserved for PE COFF offset */
>  
>  This header format is compliant with PE/COFF header and largely
> inspired from
> @@ -37,13 +37,14 @@ Notes:
>  	Bits 16:31 - Major version
>  
>    This preserves compatibility across newer and older version of the
> header.
> -  The current version is defined as 0.1.
> +  The current version is defined as 0.2.
>  
> -- res3 is reserved for offset to any other additional fields. This
> makes the
> -  header extendible in future. One example would be to accommodate
> ISA
> -  extension for RISC-V in future. For current version, it is set to
> be zero.
> +- The "magic" field is deprecated as of version 0.2.  In a future
> +  release, it may be removed.  This originally should have matched
> up
> +  with the ARM64 header "magic" field, but unfortunately does not.
> +  The "magic2" field replaces it, matching up with the ARM64 header.
>  
> -- In current header, the flag field has only one field.
> +- In current header, the flags field has only one field.
>  	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
>  
>  - Image size is mandatory for boot loader to load kernel image.
> Booting will
> diff --git a/arch/riscv/include/asm/image.h
> b/arch/riscv/include/asm/image.h
> index ef28e106f247..344db5244547 100644
> --- a/arch/riscv/include/asm/image.h
> +++ b/arch/riscv/include/asm/image.h
> @@ -3,7 +3,8 @@
>  #ifndef __ASM_IMAGE_H
>  #define __ASM_IMAGE_H
>  
> -#define RISCV_IMAGE_MAGIC	"RISCV"
> +#define RISCV_IMAGE_MAGIC	"RISCV\0\0\0"
> +#define RISCV_IMAGE_MAGIC2	"RSC\x05"
>  
>  #define RISCV_IMAGE_FLAG_BE_SHIFT	0
>  #define RISCV_IMAGE_FLAG_BE_MASK	0x1
> @@ -23,7 +24,7 @@
>  #define __HEAD_FLAGS		(__HEAD_FLAG(BE))
>  
>  #define RISCV_HEADER_VERSION_MAJOR 0
> -#define RISCV_HEADER_VERSION_MINOR 1
> +#define RISCV_HEADER_VERSION_MINOR 2
>  
>  #define RISCV_HEADER_VERSION (RISCV_HEADER_VERSION_MAJOR << 16 | \
>  			      RISCV_HEADER_VERSION_MINOR)
> @@ -39,9 +40,8 @@
>   * @version:		version
>   * @res1:		reserved
>   * @res2:		reserved
> - * @magic:		Magic number
> - * @res3:		reserved (will be used for additional RISC-V
> specific
> - *			header)
> + * @magic:		Magic number (RISC-V specific; deprecated)
> + * @magic2:		Magic number 2 (to match the ARM64 'magic'
> field pos)
>   * @res4:		reserved (will be used for PE COFF offset)
>   *
>   * The intention is for this header format to be shared between
> multiple
> @@ -58,7 +58,7 @@ struct riscv_image_header {
>  	u32 res1;
>  	u64 res2;
>  	u64 magic;
> -	u32 res3;
> +	u32 magic2;
>  	u32 res4;
>  };
>  #endif /* __ASSEMBLY__ */
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 0f1ba17e476f..52eec0c1bf30 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -39,9 +39,9 @@ ENTRY(_start)
>  	.word RISCV_HEADER_VERSION
>  	.word 0
>  	.dword 0
> -	.asciz RISCV_IMAGE_MAGIC
> -	.word 0
> +	.ascii RISCV_IMAGE_MAGIC
>  	.balign 4
> +	.ascii RISCV_IMAGE_MAGIC2
>  	.word 0
>  
>  .global _start_kernel

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
