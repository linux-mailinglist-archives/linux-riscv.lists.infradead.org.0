Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2951CC759
	for <lists+linux-riscv@lfdr.de>; Sat,  5 Oct 2019 04:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvLoIQg1b+SRH+eQQ9tsd5ZSpT7murwtvGIToJvz4U8=; b=X24h3tPu2Lad0x
	L8W9eCWFW2iz6MtMOkZnJDv4xZV5TepnNzVjTGW/TakmZHWiRNS4If7ZzY8DKgezxULPHdp8viqFh
	MBZoLQUhMyetkJaeQj92Rija/+yuUfR5G5oZDVktk7x6Q9Oxyr1rF17W2tkq5Q//z66LSIa4g8RMt
	6m+irfV+7QvBJAHmNPTVXUATPVPKnL/F0oxJWwek7A9CBs/FQL5w97hxpAG5x3ZNyR2pbRinkZ07F
	TTKIQ4OUVLWx6Z/5HyOU8KGlu4/YBwHRUefkSyFkFuHoONPIDMVP+7jH0yBi+36sO/f1TLPyw/EKA
	88zUtmwreJbU/ebGnA0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGZYv-0001qN-Ab; Sat, 05 Oct 2019 02:12:49 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGZYf-0001jM-It; Sat, 05 Oct 2019 02:12:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570241571; x=1601777571;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5eMWim/lCqIjWUj+ATIls1k4bz5YIwKirCHBB2mppjU=;
 b=EsQx4S3W4th0PU81HOoXl0owVL1bVN2XCvYIzRIRSx15wdKhtqU2w4fM
 hJNx3wkvoorYRLwRTPXnDL3m93QuM6Zz1OlLEA+O7y4q1lw1HpO9Lxxe2
 2WSMZukPFYbgU4E4E/ob+CVHcyzeRXAhq62siKgf4LmA2xDmxq2du0Tzt
 EsHriF4dx069uoWVCp2brdjlN3R8G6FXMICfI0HQghPKb5sciOVm7JQyI
 BSwQwQfoLp1Cb6S8nJRkj4keC4vH6WcgtJFV8quZto6zDiXsRH2youndT
 V/0ReKfkumoeZEnNJvmqqyaetLaL71E5JasrH+QMrQ6rkbQV5+aNfo6nh w==;
IronPort-SDR: Ekkj5TfcM5Ty/BG2XWlw1MdkfkanhEtXdfJw/Ie78KVOoPi22/PvuhoktGwVN+eOWpt3liK0WO
 1Oa/y8fkEcozEvMscQnRDL5ISxDbWv7w/2j489+WPoOYrJcmlB9gC8tbJm2mPJayoaZKYShiv3
 dLBYJgsEjea1AW0RXX37lDn3Cm/QKS5kyaK/9Crv/W0x50zArn/pIOVJmy/drbBRjS3zvrkYfO
 uThME6t27t4MPJr/JSv/Rs02HyEfucnQa0XaGqT9IB+UhKeCbyzF+ID1YgE+XzA3L+/u1NeINs
 8Hs=
X-IronPort-AV: E=Sophos;i="5.67,258,1566835200"; d="scan'208";a="220792529"
Received: from mail-dm3nam05lp2057.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.57])
 by ob1.hgst.iphmx.com with ESMTP; 05 Oct 2019 10:12:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WVlIzbKMRYU+2xpl9KJIQ52ZdgR61AE7GuvcesVPGsD96wUfEas2nw7pe+Ym+NxcQY8wN0hWLIKP+aJ7wWktV8s59Mg0T3GXO1JVucffw9kkHO/QxendfX2G0FWVshGFRauS3gIt5sVXYCtVf9hQjDnGOCsBt6mLFVNsBgyGfIU4aZvLPvtfJs0U/q2uQS8P8kYNwdMXC466CuVb32PyyYR5sNYo/VS8Mdw8iUJbwT66zOs26LJZDpyPMBwNCKI/4CqLcy2d5P+J4uc24l2d3GLaypIJQxo4zHg7CIqxz2cscTCq6ke8K7n5XC/uuw9d5xLKBOx2QXiZ5rX5Y6f7gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5eMWim/lCqIjWUj+ATIls1k4bz5YIwKirCHBB2mppjU=;
 b=mY1842c1sIKgSfb3nYExWVVZZ9xCyk3f67685d47N2xz8+uCfoIxxc7Yc7jrV+E3TEuFXISUjOmtTHK99RIMUsAuZT8tnddpZKvQUzLTDePXKA9MT0Ua1W963cKLYXr10ULE+92ljLbNYY8vXyPUdQT39+aho/tPRn4Rh710Z/wvXpuJwGFF9ahN3IPkZA2Vw6/nD9/SerQ/VUUoDdLlQC3SAO+S9ifALt/cCOLCLr/+3/pi2TcgHO4FXSStFY6OoL5ChKlAlO2LgVd4vEiEPPGlM2D9ps+5p1m3RxhDeJcxirWZTZ3dAJr266FGLfsINGE/ruo/9hwdowI46aOCOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5eMWim/lCqIjWUj+ATIls1k4bz5YIwKirCHBB2mppjU=;
 b=Z/0Mrs8X7F/pLGaMR2nPNZKO3Lukl1GyaaEs8tKzznTUXm+zc6YyO+FT0x7hwjFj8Wm4mLBcsY357uztpHmS3Ajrjz4gfyDsS76m/EHFQPhR1wmvqSVzUmK0OK0wnq6A9VgUOCJ14ghVs6WSsEykxlOvsSl0OXGk2jq9YRJtHwY=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4600.namprd04.prod.outlook.com (52.135.238.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Sat, 5 Oct 2019 02:12:24 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2305.023; Sat, 5 Oct 2019
 02:12:24 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "alex@ghiti.fr" <alex@ghiti.fr>, "akpm@linux-foundation.org"
 <akpm@linux-foundation.org>
Subject: Re: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
Thread-Topic: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
Thread-Index: AQHVTbNRR2y1x3jR5Uinm4nvlyFP7KdLqT4A
Date: Sat, 5 Oct 2019 02:12:24 +0000
Message-ID: <208433f810b5b07b1e679d7eedb028697dff851b.camel@wdc.com>
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-15-alex@ghiti.fr>
In-Reply-To: <20190808061756.19712-15-alex@ghiti.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 452ee4fd-91ab-4284-87e7-08d749397659
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB4600:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB46000C96EABBBD47E1E2527AFA990@BYAPR04MB4600.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0181F4652A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(189003)(199004)(99286004)(76116006)(76176011)(6436002)(6116002)(7736002)(3846002)(36756003)(25786009)(4326008)(6512007)(66476007)(186003)(66446008)(66946007)(64756008)(66556008)(7416002)(118296001)(6246003)(6506007)(2501003)(26005)(6306002)(6486002)(8936002)(256004)(14444005)(305945005)(81156014)(81166006)(8676002)(54906003)(446003)(71190400001)(478600001)(316002)(966005)(102836004)(86362001)(14454004)(2906002)(110136005)(2616005)(486006)(476003)(66066001)(11346002)(71200400001)(229853002)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4600;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b20dsy7pZLswF8sxjSfhd9+Nsm+2XoSY2c33jt69e8VfuV5uIF542XW6osKCyWxpeUiDf7Bx9GRYBzHRbZaYruZF8IWGBdtF1sfIH2vE+W+N/U0Ex993Yiaze7xD60iHKmqgrudqWKC2vBiOHnFmNqReswfTEKM4MTlgJ3LXBlzkZo6MF/WfqV9lJq1fIXZa+MRYi/43ZQW4OuQFsmzWIc9OHImqoomVsWrK7+ZsR0xMXPyjwSuhJbqsPM2n3E/XiCsdW1Of9PT2LIDst4PuSbbz3d6cPRzp+EQAJmHpBMTiyJ/MKHwTF6C2PL1TZkNEPBdsgDJDBlOsYYIPEt5FJf+zyYS6pw13IsEiiAn6s2wvV8Dv1paba0ELdPfYd4Y5bwzFGhQErd+3SkzC32Qn7mPXYdZPDpCtjcNy3J9i3CIyn55ycEaQGitG9QeAOTDW9GCDeYITMmTsBrBQh4xQiA==
x-ms-exchange-transport-forked: True
Content-ID: <FFED4E82ECE00245AE9518517225E0A1@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 452ee4fd-91ab-4284-87e7-08d749397659
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2019 02:12:24.1448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vGRC7dpToUL2Ds0rQys+afnvRPFjCqe6YceNUn8YChJOgXhaoEaLaT6+xzxMTpnkUGJT6IfEnE5ybfY+wB0ACw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_191233_692310_E6B2C875 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "jhogan@kernel.org" <jhogan@kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcgrof@kernel.org" <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-08-08 at 02:17 -0400, Alexandre Ghiti wrote:
> In order to avoid wasting user address space by using bottom-up mmap
> allocation scheme, prefer top-down scheme when possible.
> 
> Before:
> root@qemuriscv64:~# cat /proc/self/maps
> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> 00018000-00039000 rw-p 00000000 00:00 0          [heap]
> 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> 155556f000-1555570000 rw-p 00000000 00:00 0
> 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
> 1555574000-1555576000 rw-p 00000000 00:00 0
> 1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> 1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> 1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> 155567a000-15556a0000 rw-p 00000000 00:00 0
> 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
> 
> After:
> root@qemuriscv64:~# cat /proc/self/maps
> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
> 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
> 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
> 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
> 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
> 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Acked-by: Paul Walmsley <paul.walmsley@sifive.com>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>  arch/riscv/Kconfig | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 59a4727ecd6c..87dc5370becb 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -54,6 +54,18 @@ config RISCV
>  	select EDAC_SUPPORT
>  	select ARCH_HAS_GIGANTIC_PAGE
>  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> +	select HAVE_ARCH_MMAP_RND_BITS
> +
> +config ARCH_MMAP_RND_BITS_MIN
> +	default 18 if 64BIT
> +	default 8
> +
> +# max bits determined by the following formula:
> +#  VA_BITS - PAGE_SHIFT - 3
> +config ARCH_MMAP_RND_BITS_MAX
> +	default 24 if 64BIT # SV39 based
> +	default 17
>  
>  config MMU
>  	def_bool y

With this patch, I am not able to boot a Fedora Linux(a Gnome desktop
image) on RISC-V hardware (Unleashed + Microsemi Expansion board). The
booting gets stuck right after systemd starts.

https://paste.fedoraproject.org/paste/TOrUMqqKH-pGFX7CnfajDg

Reverting just this patch allow to boot Fedora successfully on specific
RISC-V hardware. I have not root caused the issue but it looks like it
might have messed userpsace mapping.

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
