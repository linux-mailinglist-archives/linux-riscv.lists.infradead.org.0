Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5636D10A64D
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 23:02:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFiPkBWi07zhhc5o+dbfa6ZulSKlaLxLvOF1qBK0VoM=; b=pesduzv/6lp4TT
	A4WmoWj+zX9gJRItqfzyFs8I40/xjXePsJNvJTxaEi/rmtArPUYPqF/JThOdGQkWQM+b+GMAiKzX1
	c/vDww/SGMl0VdXz4K1woQVOvgcSsmEVB1zlHSj5JzWvwOsdQ/gOMGeZiGl7iRQMSAhh7c2/V3UQ9
	ECk7f9WaETOOhOZogrAMgIQuKRCVnUeaE9oLY5NOAgPZeUbVeHpgsvi7O2uo3IFB/8sr75AHIKP/V
	Ymyu+pYrZxtfVPOP7TBuoKKH8yvpxcSr5MzunCwIxYu7eRdIJkLXlg//NBfKe/1H5TxqlJdH4JU02
	6a1gCCydnweKn0YYu1Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZiuw-0007t9-Hj; Tue, 26 Nov 2019 22:02:42 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZius-0007sD-Up
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 22:02:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574805758; x=1606341758;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8wt1pdNoYu14OWF5hXcuzrfHSj80P1Zy09AUuFDqlO8=;
 b=A2Uv7FUWMKwVZpKG0P424QwDjN/OSy3eRA9jp9OxXkVaa9yS8mA4tAQ5
 bonSTqk7BoWxiYk702qB/sXj0CNVD4kIJdAmewZEmkg/wK9HzFt2P38zp
 8w3EZErV7swRArm2yZbX1XIgLAg5eq42d59xytUmEg/HyJ240qAylLYN8
 JXgTGMbuctsWi77bsydQJfXgd6vA63xRUdBQv9040/R4hKjI3CTPReXsG
 CQIk6K4Vvub2h37aFWpBWjasWY2JttLFEHDD76+273rrFj5Idkn35F+5g
 nSUxb3J0cBc9UH7iSuvcQEuhnshBMY6p5QCKiz87t143wHT5oATr22xUp Q==;
IronPort-SDR: UopeLc8NmMy80mhgKoajvmEspQpQUz8vp2BV6nw2utc6tVAEWiNEtldzIbb+cD/mcDlds9QdOM
 X+AOn6abCTyFjLW0m0De1y5rSPvzSQUB1tepqhF5+dTbbGbnlqk+7w8naCxS1Q27Z1PXSDci1X
 9OKOXnkV8p8HfU2UMsYF5X2UnapK54Xv/v9jmTjGfmppwIp5eMfIc3N7rcGBOQyawi+8Ve3oZA
 e7gZilwSsdqe9jjKv7poA7t2CZvXBivS+dM9BTfZ9mK8TSc6avojGBX1WweCX39bCmX+EQqwiD
 GHI=
X-IronPort-AV: E=Sophos;i="5.69,247,1571673600"; d="scan'208";a="231510487"
Received: from mail-co1nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.56])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 06:02:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSP7bYK+IJ0vkfXyqleBcLu7iBWkio7nYVFVGq+OFhXV3T7CMY8yvpDvUB3G2/XATNKXUCPm5FWtzbSDIPhYJiUR3DemUTSdyaG+ZLBssLVqUaUUYgCQQNrjS1f0i9/dqimVILYNAD10Q5VqZFG0skimnDRldnv6K+Jx9tnsUZVBtQsq3P3U+oq/LmpF05+/mLk7ryGlQXMlB0kIP3GQylUS3M2fiM52KzOgXhgA3whf1DHR64uraoVAXL8anq8Njz9HGToN2WUW7sEYcyGoZDiPAhg9t4IZj8gZdoiupHFEf/LSDu/1EhWRzqFKr/IPifI9Am27ScUpRoBYdOuAxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8wt1pdNoYu14OWF5hXcuzrfHSj80P1Zy09AUuFDqlO8=;
 b=S1e7L4ggULsY0SzgtHUReMvB58ldkQdQKU7uzAeeiG5LQwhfFpQyk+xFpKkeyqxMdoip/f6BVIuQUbYRf/XrV2LPX9pFtIvzg6tCNRcDdsiUeTbPTRdsCAHAMIaoZIvvajFkxgHU77LPQrmEgS6Toca2Du0E9LgZydt4G+yN9msQdiKlR0jkBLm9c8boER+bgwG37XvlbTZ9opV7u/uI51w0JdibxlVYvpFdvM+e5bEzefaJx6gg8rF35831H4cbMTAj5IFA/HjPUoB/zJWBrw5GtsU8hM+QwnRN1WMcOSxCZJg7goo6hTyKHMqjCoJ03wANb0QUzUHWK7jZRGwqwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8wt1pdNoYu14OWF5hXcuzrfHSj80P1Zy09AUuFDqlO8=;
 b=dWWNoX0Ml8h6LRGPTCWutPnD4PpKI1P3wl15qxWaJMTVDE0fJ6n7Y8DZ5XtXl0kqiYXEFWPrJEYMeLZMocpPnrK+lWFMunMlApwo2jpMoIo7a8vSc1+jWws8BMOCbhTvTrK//EIr6RTNCUxQsPGQ8RWZ0jL5q+91R8cKkYrHshA=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4853.namprd04.prod.outlook.com (52.135.235.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Tue, 26 Nov 2019 22:02:20 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 22:02:20 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] RISC-V: Typo fixes in image header and documentation.
Thread-Topic: [PATCH] RISC-V: Typo fixes in image header and documentation.
Thread-Index: AQHVfj3d560TKs0IR0WrAqV4kt8gy6eeTdyA
Date: Tue, 26 Nov 2019 22:02:20 +0000
Message-ID: <4912c007ab6c19321c8c988ae2328efbfb3e582d.camel@wdc.com>
References: <20191009010637.9955-1-atish.patra@wdc.com>
In-Reply-To: <20191009010637.9955-1-atish.patra@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b7237932-4de7-440e-8367-08d772bc4f34
x-ms-traffictypediagnostic: BYAPR04MB4853:
x-microsoft-antispam-prvs: <BYAPR04MB48535FA0D376CC0D1C6ED6B4FA450@BYAPR04MB4853.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39860400002)(376002)(346002)(396003)(136003)(199004)(189003)(6246003)(2351001)(14454004)(2616005)(2501003)(71190400001)(71200400001)(478600001)(2906002)(5640700003)(446003)(305945005)(102836004)(6512007)(7736002)(118296001)(36756003)(25786009)(229853002)(66066001)(6436002)(4326008)(6506007)(66556008)(64756008)(66446008)(66476007)(76116006)(66946007)(81166006)(14444005)(81156014)(186003)(256004)(76176011)(3846002)(6916009)(8936002)(6116002)(8676002)(26005)(316002)(11346002)(99286004)(6486002)(54906003)(86362001)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4853;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ql4wVv0Wxo3mhNJ9aHePtoPLgvzBvSL10FkspuTTe6eejgQ1Xvz6Zt82S/MI78K2hAIqvld1ukPWw9D8bSyFbL7e6L7SIKPxtmPfN8Hb21nhVl7NFtZ0XF8deBwBM4kx4pHC6r2qZWrVEEnbO+p+BvWFSK6ZwjdseAGfDcCkoyF/f2bNeMy0XmVoYp4RrNoTR9pnOHvAP9CUK9zTq8/XwlDwSD58LB+Wl9cUUqbX5TBdOwrxcJ4XeaO9NYyv9I5xbVfLic8hhqj+Wz62ljq0l6Re626S2PyybpjPrq0/5MEkvV0brQQhoAe4BWuVml4u6VjsCyM415X6mmPZVtKosINkynidCKqJD0ReTbnUV5xD9AhCBEA02xIiRWJoL4ghYIcyI3oy+do+1hIG373ncu+7PUFz5Pd807LI3I01k5d+AVVq1Z8tM99ewY5xjmXP
x-ms-exchange-transport-forked: True
Content-ID: <5A4DEBF2E173ED489A8C80BDBDCEEAA1@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7237932-4de7-440e-8367-08d772bc4f34
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 22:02:20.2775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6XqeyGfG1izmQUGe91aBbTqe5FRa0cU/CpyqJsqkZ2/REcptZIitCxSbxsx/0xUheQZn2bMYUj2L2VKxjbScmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_140239_036366_93681825 
X-CRM114-Status: GOOD (  20.60  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 18:06 -0700, Atish Patra wrote:
> There are some typos in boot image header and riscv boot
> documentation.
> 
> Fix the typos.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  Documentation/riscv/boot-image-header.rst | 4 ++--
>  arch/riscv/include/asm/image.h            | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/riscv/boot-image-header.rst
> b/Documentation/riscv/boot-image-header.rst
> index 7b4d1d747585..8efb0596a33f 100644
> --- a/Documentation/riscv/boot-image-header.rst
> +++ b/Documentation/riscv/boot-image-header.rst
> @@ -22,7 +22,7 @@ The following 64-byte header is present in
> decompressed Linux kernel image::
>  	u64 res2 = 0;		  /* Reserved */
>  	u64 magic = 0x5643534952; /* Magic number, little endian,
> "RISCV" */
>  	u32 magic2 = 0x56534905;  /* Magic number 2, little endian,
> "RSC\x05" */
> -	u32 res4;		  /* Reserved for PE COFF offset */
> +	u32 res3;		  /* Reserved for PE COFF offset */
>  
>  This header format is compliant with PE/COFF header and largely
> inspired from
>  ARM64 header. Thus, both ARM64 & RISC-V header can be combined into
> one common
> @@ -34,7 +34,7 @@ Notes
>  - This header can also be reused to support EFI stub for RISC-V in
> future. EFI
>    specification needs PE/COFF image header in the beginning of the
> kernel image
>    in order to load it as an EFI application. In order to support EFI
> stub,
> -  code0 should be replaced with "MZ" magic string and res5(at offset
> 0x3c) should
> +  code0 should be replaced with "MZ" magic string and res3(at offset
> 0x3c) should
>    point to the rest of the PE/COFF header.
>  
>  - version field indicate header version number
> diff --git a/arch/riscv/include/asm/image.h
> b/arch/riscv/include/asm/image.h
> index 344db5244547..4f8061a5ac4a 100644
> --- a/arch/riscv/include/asm/image.h
> +++ b/arch/riscv/include/asm/image.h
> @@ -42,7 +42,7 @@
>   * @res2:		reserved
>   * @magic:		Magic number (RISC-V specific; deprecated)
>   * @magic2:		Magic number 2 (to match the ARM64 'magic'
> field pos)
> - * @res4:		reserved (will be used for PE COFF offset)
> + * @res3:		reserved (will be used for PE COFF offset)
>   *
>   * The intention is for this header format to be shared betweenres4
> multiple
>   * architectures to avoid a proliferation of image header formats.
> @@ -59,7 +59,7 @@ struct riscv_image_header {
>  	u64 res2;
>  	u64 magic;
>  	u32 magic2;
> -	u32 res4;
> +	u32 res3;
>  };
>  #endif /* __ASSEMBLY__ */
>  #endif /* __ASM_IMAGE_H */

ping ?

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
