Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9B866157
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jul 2019 23:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+2HwvRhmKdm40Xb8ZkDbe+zz8tYDFQRmPLK4/TDPYc=; b=gnmBxGXdCJuVPp
	ZlhZM1pGUp3pwi6SFDUO9UL0Ox3PVHI3QONu1fPFhDqmguU+YgMV+bOVoAc+ix4onijpNgL6Y37u1
	prWTZ5t0NgEGk/KdxAP/ahaU9X6oPD18AIAFDrVbM5fgaU9jKM+Pqc7bImvAdDJ2zzwOeJPPAZHBc
	oDfK/m/sMnSBieFJDfna6UhfehaxyVUsn5WVQn9G51XbTQw3B0L4SMkbYNgbFXT/G44w0qjyKOluL
	IYzXvw390qoeoZPTf8eNp7i3TK1OGjfg3tQ2Rn9WROKOKDEeP8Ykj8a/DD3r6wMv9JBoAMEddQyET
	srKEi9L53WjQrE6Rc2CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlgq6-0001ON-QP; Thu, 11 Jul 2019 21:42:54 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlgpo-0001Fc-Ky; Thu, 11 Jul 2019 21:42:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562881357; x=1594417357;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=M00l1l0lFxVKXWLI+4Qexg4AirZJdmYDGg6GplVD7VY=;
 b=ROstKDtiJEUoYTLXzfjoOlkk/0s/0v1OO2jNuiqqBNpVOk1+jtFa5xKT
 /07J1R9UUCeG4mkgHrf1fWj+tEq6sZ0WcNVtPz+TiBNuSVF4sqpEEd+rP
 +4xy9mq5zWHKifeEiyS4U9y5RpbFg1c1YS1nDqId/K398tqVq+OjvvOez
 ACAJn8DLPPI6aheDEKRNrpzSxIMzj8agixqh3E9tDmNY4Do5Rwwni3Xbt
 zaoQTs+paNyiGt82M+1VPCyD7GiKAim2Y45saqiauE7eHUL60dbT+ESoU
 8KqC+CfHjopsDPnhRpb7d02RuaiPWDp910+gxodXB244zW3/IQSS1dkH3 Q==;
IronPort-SDR: cI/2Qq1ViNj0kP9EWszeBxOoNkMWMqOzfw6oYJdpSZKnCrj6go0pnVfr0QghKf12GK2gwaCFsf
 KtpY1vz7tOmsTFnLPUW4dbuxTydZdt8VraFADid5ds/F+j2Y8+BnceAA/57xnihi3wQvFELndR
 f0DYBNmo1KCHmSxwlXDxPEq66GWXGPd3PdsiNOkkhFJTCqQc0+erUICH9pyIFLvQdyfSobdKvO
 OLqP4KyoxbhEi9TRmpQiI18s0nJAgXUF8Hv7GDytrupn3VxsnisCcp3jbdJ0wtxppJrR64POCj
 mqI=
X-IronPort-AV: E=Sophos;i="5.63,480,1557158400"; d="scan'208";a="114439784"
Received: from mail-sn1nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.56])
 by ob1.hgst.iphmx.com with ESMTP; 12 Jul 2019 05:42:32 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M00l1l0lFxVKXWLI+4Qexg4AirZJdmYDGg6GplVD7VY=;
 b=Cn1NUKreLHqZPtdYcHEbgbjc20Dgs4SnzrYVVDDEE25Tp2vidw0JamtXRm9O0wpfatPX/xi4+1xGoR8m9uv5a6GNcUwZkKj/p+e23gpbbTHmhSBcE6Xe3QvmRfGVM51Ywsa5Y5x8Uc38fmiCtG9I8KgRTRc/MqbN7afGu9NWXQI=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4853.namprd04.prod.outlook.com (52.135.232.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Thu, 11 Jul 2019 21:42:31 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::b9e8:b587:dda2:4824]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::b9e8:b587:dda2:4824%3]) with mapi id 15.20.2052.020; Thu, 11 Jul 2019
 21:42:31 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v4] RISC-V: Add an Image header that boot loader can parse.
Thread-Topic: [PATCH v4] RISC-V: Add an Image header that boot loader can
 parse.
Thread-Index: AQHVHLzHT4YK2HktEU6wLZ3FpbqNK6axkG0AgAAJ9ICAFG2sgIAAIY0A
Date: Thu, 11 Jul 2019 21:42:30 +0000
Message-ID: <51ee23f3eae621829723f3ba020149732e660b83.camel@wdc.com>
References: <20190606230800.19932-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1906281207290.3867@viisi.sifive.com>
 <c0bdc25bc3aee9eee8bf9ebe561900b88df0540b.camel@wdc.com>
 <alpine.DEB.2.21.9999.1907111237520.8586@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907111237520.8586@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbefd1da-cdf8-47a0-24e6-08d70648ad5c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4853; 
x-ms-traffictypediagnostic: BYAPR04MB4853:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB4853EAEF12CF43DDEED57896FAF30@BYAPR04MB4853.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(366004)(376002)(346002)(39860400002)(189003)(199004)(486006)(71200400001)(8676002)(26005)(36756003)(7736002)(6436002)(81156014)(6512007)(476003)(53936002)(2616005)(2906002)(8936002)(6246003)(54906003)(76176011)(446003)(11346002)(5640700003)(66066001)(316002)(7416002)(6486002)(99286004)(478600001)(305945005)(2351001)(229853002)(81166006)(14444005)(53546011)(6506007)(186003)(102836004)(14454004)(256004)(6116002)(6916009)(86362001)(71190400001)(4326008)(68736007)(2501003)(66946007)(966005)(6306002)(76116006)(66446008)(66556008)(66476007)(64756008)(25786009)(118296001)(3846002)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4853;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SZOrtETmt0lkuKQDELWJVXfWlYZ6mmHgDS3r5ZisNo1DLTBmy0/jjinjnMoIUrQgKfipG3e43fjoWsjtk0F0z87xRinXNffv92Kl+Z9J8YcEGUL4c9g0w4H/wc9lze4YkEGYBNXWtscnetgyMyoWduSXoVdd9YLLsNSme4XQxwdsFGkdnWnUVCpEvAYi2BBYDMEFWGXCbmozxQcegKVw+nSeneUd73t+U4BUGhQ/lg/DxNgy3YYUHhemsIRAIlWSthWd7vNzptpspNzRIMAlSrWeYLT5LF9gQa2jwXYmY3mI66nTNAFmt99O+vWvIvc7wxBgVFYSqPiqCnjRkpaAHdIEIrxJiBtphR+ts1evus18geWibauKX7XpULiooH6Ds0OUA0e9i23rele6C56meE6EpL9l3Fv+mgfH+yWs2ZM=
Content-ID: <EA27221172D9894BA083FA29F941E8A0@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbefd1da-cdf8-47a0-24e6-08d70648ad5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 21:42:30.9844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_144236_828814_84AC51CF 
X-CRM114-Status: GOOD (  38.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "trini@konsulko.com" <trini@konsulko.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>, "khilman@baylibre.com" <khilman@baylibre.com>,
 "mick@ics.forth.gr" <mick@ics.forth.gr>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "merker@debian.org" <merker@debian.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-07-11 at 12:42 -0700, Paul Walmsley wrote:
> On Fri, 28 Jun 2019, Atish Patra wrote:
> 
> > On Fri, 2019-06-28 at 12:09 -0700, Paul Walmsley wrote:
> > > On Thu, 6 Jun 2019, Atish Patra wrote:
> > > 
> > > > Currently, the last stage boot loaders such as U-Boot can
> > > > accept
> > > > only
> > > > uImage which is an unnecessary additional step in automating
> > > > boot
> > > > process.
> > > > 
> > > > Add an image header that boot loader understands and boot Linux
> > > > from
> > > > flat Image directly.
> > > 
> > > ...
> > > 
> > > 
> > > > +#if __riscv_xlen == 64
> > > > +	/* Image load offset(2MB) from start of RAM */
> > > > +	.dword 0x200000
> > > > +#else
> > > > +	/* Image load offset(4MB) from start of RAM */
> > > > +	.dword 0x400000
> > > > +#endif
> > > 
> > > Is there a rationale behind these load offset values?
> > > 
> > 
> > 2MB/4MB alignment requirement is mandatory for current RISC-V
> > kernel.
> > Anup had a patch that tried to remove that but not accepted yet.
> > 
> > https://patchwork.kernel.org/patch/10868465/
> 
> Thanks for doing this work; this should really help.  Patch queued
> with a 
> few minor tweaks to the documentation file and to the
> comments.  (Updated 
> patch below)
> 

Thank you!

> Not sure if this will make it for v5.3-rc1.  If not, we'll try to get
> it 
> in as soon as possible afterwards.
> 
> Something else to think about: we'll probably want some flag bits
> soon to 
> identify whether the kernel binary is a 32-bit, 64-bit, or 128-bit
> binary.  
> If two bits are used, and 64-bit is defined as 00, then it should be 
> backwards compatible.  I would hope that this could be something that
> we'd 
> be able to coordinate with the ARM64 folks also;

Sure. We can always any bits from 4-64 (reserved in ARM header). That
will still allow the ARM64/RISC-V headers to merge in future if ARM
maintainers are interested. 

>  otherwise we may need to 
> start using that res3 field.
> 
> 
> - Paul
> 
> From: Atish Patra <atish.patra@wdc.com>
> Date: Thu, 6 Jun 2019 16:08:00 -0700
> Subject: [PATCH] RISC-V: Add an Image header that boot loader can
> parse.
> 
> Currently, the last stage boot loaders such as U-Boot can accept only
> uImage which is an unnecessary additional step in automating boot
> process.
> 
> Add an image header that boot loader understands and boot Linux from
> flat Image directly.
> 
> This header is based on ARM64 boot image header and provides an
> opportunity to combine both ARM64 & RISC-V image headers in future.
> 
> Also make sure that PE/COFF header can co-exist in the same image so
> that EFI stub can be supported for RISC-V in future. EFI
> specification
> needs PE/COFF image header in the beginning of the kernel image in
> order
> to load it as an EFI application. In order to support EFI stub, code0
> should be replaced with "MZ" magic string and res4(at offset 0x3c)
> should point to the rest of the PE/COFF header (which will be added
> during EFI support).
> 
> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot +
> Linux.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Karsten Merker <merker@debian.org>
> Tested-by: Karsten Merker <merker@debian.org> (QEMU+OpenSBI+U-Boot)
> Tested-by: Kevin Hilman <khilman@baylibre.com> (OpenSBI + U-Boot +
> Linux)
> [paul.walmsley@sifive.com: fixed whitespace in boot-image-header.txt;
>  converted structure comment to kernel-doc format and added some
> detail]
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  Documentation/riscv/boot-image-header.txt | 50 +++++++++++++++++
>  arch/riscv/include/asm/image.h            | 65
> +++++++++++++++++++++++
>  arch/riscv/kernel/head.S                  | 32 +++++++++++
>  3 files changed, 147 insertions(+)
>  create mode 100644 Documentation/riscv/boot-image-header.txt
>  create mode 100644 arch/riscv/include/asm/image.h
> 
> diff --git a/Documentation/riscv/boot-image-header.txt
> b/Documentation/riscv/boot-image-header.txt
> new file mode 100644
> index 000000000000..1b73fea23b39
> --- /dev/null
> +++ b/Documentation/riscv/boot-image-header.txt
> @@ -0,0 +1,50 @@
> +				Boot image header in RISC-V Linux
> +			=============================================
> +
> +Author: Atish Patra <atish.patra@wdc.com>
> +Date  : 20 May 2019
> +
> +This document only describes the boot image header details for RISC-
> V Linux.
> +The complete booting guide will be available at
> Documentation/riscv/booting.txt.
> +
> +The following 64-byte header is present in decompressed Linux kernel
> image.
> +
> +	u32 code0;		  /* Executable code */
> +	u32 code1; 		  /* Executable code */
> +	u64 text_offset;	  /* Image load offset, little endian */
> +	u64 image_size;		  /* Effective Image size, little
> endian */
> +	u64 flags;		  /* kernel flags, little endian */
> +	u32 version;		  /* Version of this header */
> +	u32 res1  = 0;		  /* Reserved */
> +	u64 res2  = 0;    	  /* Reserved */
> +	u64 magic = 0x5643534952; /* Magic number, little endian,
> "RISCV" */
> +	u32 res3;		  /* Reserved for additional RISC-V specific
> header */
> +	u32 res4;		  /* Reserved for PE COFF offset */
> +
> +This header format is compliant with PE/COFF header and largely
> inspired from
> +ARM64 header. Thus, both ARM64 & RISC-V header can be combined into
> one common
> +header in future.
> +
> +Notes:
> +- This header can also be reused to support EFI stub for RISC-V in
> future. EFI
> +  specification needs PE/COFF image header in the beginning of the
> kernel image
> +  in order to load it as an EFI application. In order to support EFI
> stub,
> +  code0 should be replaced with "MZ" magic string and res5(at offset
> 0x3c) should
> +  point to the rest of the PE/COFF header.
> +
> +- version field indicate header version number.
> +	Bits 0:15  - Minor version
> +	Bits 16:31 - Major version
> +
> +  This preserves compatibility across newer and older version of the
> header.
> +  The current version is defined as 0.1.
> +
> +- res3 is reserved for offset to any other additional fields. This
> makes the
> +  header extendible in future. One example would be to accommodate
> ISA
> +  extension for RISC-V in future. For current version, it is set to
> be zero.
> +
> +- In current header, the flag field has only one field.
> +	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
> +
> +- Image size is mandatory for boot loader to load kernel image.
> Booting will
> +  fail otherwise.
> diff --git a/arch/riscv/include/asm/image.h
> b/arch/riscv/include/asm/image.h
> new file mode 100644
> index 000000000000..ef28e106f247
> --- /dev/null
> +++ b/arch/riscv/include/asm/image.h
> @@ -0,0 +1,65 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __ASM_IMAGE_H
> +#define __ASM_IMAGE_H
> +
> +#define RISCV_IMAGE_MAGIC	"RISCV"
> +
> +#define RISCV_IMAGE_FLAG_BE_SHIFT	0
> +#define RISCV_IMAGE_FLAG_BE_MASK	0x1
> +
> +#define RISCV_IMAGE_FLAG_LE		0
> +#define RISCV_IMAGE_FLAG_BE		1
> +
> +#ifdef CONFIG_CPU_BIG_ENDIAN
> +#error conversion of header fields to LE not yet implemented
> +#else
> +#define __HEAD_FLAG_BE		RISCV_IMAGE_FLAG_LE
> +#endif
> +
> +#define __HEAD_FLAG(field)	(__HEAD_FLAG_##field << \
> +				RISCV_IMAGE_FLAG_##field##_SHIFT)
> +
> +#define __HEAD_FLAGS		(__HEAD_FLAG(BE))
> +
> +#define RISCV_HEADER_VERSION_MAJOR 0
> +#define RISCV_HEADER_VERSION_MINOR 1
> +
> +#define RISCV_HEADER_VERSION (RISCV_HEADER_VERSION_MAJOR << 16 | \
> +			      RISCV_HEADER_VERSION_MINOR)
> +
> +#ifndef __ASSEMBLY__
> +/**
> + * struct riscv_image_header - riscv kernel image header
> + * @code0:		Executable code
> + * @code1:		Executable code
> + * @text_offset:	Image load offset (little endian)
> + * @image_size:		Effective Image size (little endian)
> + * @flags:		kernel flags (little endian)
> + * @version:		version
> + * @res1:		reserved
> + * @res2:		reserved
> + * @magic:		Magic number
> + * @res3:		reserved (will be used for additional RISC-V
> specific
> + *			header)
> + * @res4:		reserved (will be used for PE COFF offset)
> + *
> + * The intention is for this header format to be shared between
> multiple
> + * architectures to avoid a proliferation of image header formats.
> + */
> +
> +struct riscv_image_header {
> +	u32 code0;
> +	u32 code1;
> +	u64 text_offset;
> +	u64 image_size;
> +	u64 flags;
> +	u32 version;
> +	u32 res1;
> +	u64 res2;
> +	u64 magic;
> +	u32 res3;
> +	u32 res4;
> +};
> +#endif /* __ASSEMBLY__ */
> +#endif /* __ASM_IMAGE_H */
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index e368106f2228..0f1ba17e476f 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -11,9 +11,41 @@
>  #include <asm/thread_info.h>
>  #include <asm/page.h>
>  #include <asm/csr.h>
> +#include <asm/image.h>
>  
>  __INIT
>  ENTRY(_start)
> +	/*
> +	 * Image header expected by Linux boot-loaders. The image
> header data
> +	 * structure is described in asm/image.h.
> +	 * Do not modify it without modifying the structure and all
> bootloaders
> +	 * that expects this header format!!
> +	 */
> +	/* jump to start kernel */
> +	j _start_kernel
> +	/* reserved */
> +	.word 0
> +	.balign 8
> +#if __riscv_xlen == 64
> +	/* Image load offset(2MB) from start of RAM */
> +	.dword 0x200000
> +#else
> +	/* Image load offset(4MB) from start of RAM */
> +	.dword 0x400000
> +#endif
> +	/* Effective size of kernel image */
> +	.dword _end - _start
> +	.dword __HEAD_FLAGS
> +	.word RISCV_HEADER_VERSION
> +	.word 0
> +	.dword 0
> +	.asciz RISCV_IMAGE_MAGIC
> +	.word 0
> +	.balign 4
> +	.word 0
> +
> +.global _start_kernel
> +_start_kernel:
>  	/* Mask all interrupts */
>  	csrw CSR_SIE, zero
>  	csrw CSR_SIP, zero

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
