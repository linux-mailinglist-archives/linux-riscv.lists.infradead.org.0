Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64C53C799
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 11:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwBUbRUVc9W4Jxq12RzsbF8rSTmGE7j/409yP/XoPpc=; b=T/+Abg0w9BzDua
	TzIKrEwDQK1i+whJ1vc4Yv7qiAaPZLAGjgxaeSdzY04tf/lbdMDG8XAB204/jcoExCnk0niBucL/2
	xxdYReQvOABAnFv3UiNtspZw1wINRmFkl7Kr9rdbgvyiLuvophrMAJ2nyEwrkBAMDRJMNxRmg2e86
	E+T+azu7GBsTfNGOvSNbfSfBTTW0PXYTeqLCAd9vbs8jD9y4j5ZE2vH4h9p0kgQBSzGJTmZJSorZL
	7W73eLPVwrF6nD6TZmtuGCZ+K2sxh9T+JhJtUoizAiq6T9UCckPQYTkfdXRkrWaOf6YjQJiSsAG1J
	yXqFlnBo4dUcVyq36n2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadPz-0001EU-0Y; Tue, 11 Jun 2019 09:50:15 +0000
Received: from mail-eopbgr90057.outbound.protection.outlook.com ([40.107.9.57]
 helo=FRA01-MR2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadPb-0008Qj-E2; Tue, 11 Jun 2019 09:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m2G3YmPIn0VqPVjMdNsiScPAuW3tw1HqVHwl2rQoccs=;
 b=6YpWm788R65KGxmoy5CpkUgmmk11sgdTIhKbxf6Lt3PJbnscGnBNBH7rXC4v34ef1b1WU/D79d3oOVpdHTtIJp4XcORslEZaRKznXj/ef5g75uiGH4SOCkfyMjXpf4DcZvI+D+BsbmPmta/LFJzZtIH3OFinhRmA/ehVkqeBRxA=
Received: from PR2PR08MB4796.eurprd08.prod.outlook.com (52.133.109.138) by
 PR2PR08MB4730.eurprd08.prod.outlook.com (52.133.107.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Tue, 11 Jun 2019 09:49:46 +0000
Received: from PR2PR08MB4796.eurprd08.prod.outlook.com
 ([fe80::ad5e:4a37:5c25:37e8]) by PR2PR08MB4796.eurprd08.prod.outlook.com
 ([fe80::ad5e:4a37:5c25:37e8%7]) with mapi id 15.20.1987.010; Tue, 11 Jun 2019
 09:49:46 +0000
From: Vladimir Murzin <Vladimir.Murzin@arm.com>
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: [PATCH 05/15] binfmt_flat: replace flat_argvp_envp_on_stack with
 a Kconfig variable
Thread-Topic: [PATCH 05/15] binfmt_flat: replace flat_argvp_envp_on_stack with
 a Kconfig variable
Thread-Index: AQHVH9KZQF6vzdl9i0ut6BV9ck+LDaaWNlqA
Date: Tue, 11 Jun 2019 09:49:46 +0000
Message-ID: <09e6ae8e-0495-4af0-acec-91a0b87a8493@arm.com>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-6-hch@lst.de>
In-Reply-To: <20190610212015.9157-6-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-originating-ip: [217.140.106.50]
x-clientproxiedby: LO2P265CA0377.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::29) To PR2PR08MB4796.eurprd08.prod.outlook.com
 (2603:10a6:101:21::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Vladimir.Murzin@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b057ad8-7d47-40de-b21e-08d6ee5222e4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:PR2PR08MB4730; 
x-ms-traffictypediagnostic: PR2PR08MB4730:
x-microsoft-antispam-prvs: <PR2PR08MB4730A0D9C2F460B07228B7DEF2ED0@PR2PR08MB4730.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39850400004)(376002)(346002)(136003)(189003)(199004)(40434004)(66476007)(66556008)(5660300002)(73956011)(8676002)(64756008)(66946007)(6246003)(86362001)(72206003)(53936002)(26005)(99286004)(25786009)(64126003)(14444005)(5024004)(71200400001)(31696002)(66446008)(4326008)(478600001)(316002)(7736002)(305945005)(14454004)(71190400001)(8936002)(256004)(81156014)(81166006)(52116002)(58126008)(110136005)(53546011)(7416002)(6116002)(6486002)(2906002)(76176011)(3846002)(102836004)(54906003)(68736007)(65826007)(229853002)(6512007)(6436002)(6506007)(386003)(65956001)(66066001)(65806001)(11346002)(31686004)(36756003)(2616005)(186003)(446003)(44832011)(486006)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:PR2PR08MB4730;
 H:PR2PR08MB4796.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: U+BcZ7QRuCjzgZsyxZBwErSy3iNFPkb+xMJNNCOkF2VGyK4UzCCRh+R9gcaBjOOG+UhKoEhoHNX6U5SXlgvE48dgqaG4bOVIZkG+q1fVuSBx/59v6DGJdnfdVvYf5AopgIs2O7o0vU54SzXPfgWw94eXBOMPd48IrclVWMiwuBprg4WTEo7W5Cm3W+6ARh1nJf6jH4PMndyAMOHZKTuTqmy21WMhWkpG5dEa6968aS46OGmQXrDhkYKJdqJbReigYNN4spxsOuYlj8NOf6JhFp97z7WNJ8KRrmA2tz1AAJKNu9gyOYQi86haTF9W8NtPCqDiBLucvGUH7aWxoBhOKoMcHJyURUC+neXpBu0U16yoXsQr3QlJv4rc2KXY7j89P9eTD+qliCubF9yX/6Oflm3824eoyx0ADY/OrVNs4e4=
Content-ID: <373E563EC1A9A34A97E05AA08D0C3D6E@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b057ad8-7d47-40de-b21e-08d6ee5222e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 09:49:46.5302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vladimir.Murzin@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4730
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_024951_522115_31A3B2E0 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.9.57 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "uclinux-h8-devel@lists.sourceforge.jp"
 <uclinux-h8-devel@lists.sourceforge.jp>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 Michal Simek <monstr@monstr.eu>,
 "linux-c6x-dev@linux-c6x.org" <linux-c6x-dev@linux-c6x.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/10/19 10:20 PM, Christoph Hellwig wrote:
> This will eventually allow us to kill the need for an <asm/flat.h> for
> many cases.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm/Kconfig                   | 1 +
>  arch/arm/include/asm/flat.h        | 2 --
>  arch/c6x/include/asm/flat.h        | 1 -
>  arch/h8300/Kconfig                 | 1 +
>  arch/h8300/include/asm/flat.h      | 2 --
>  arch/m68k/Kconfig                  | 1 +
>  arch/m68k/include/asm/flat.h       | 1 -
>  arch/microblaze/include/asm/flat.h | 2 --
>  arch/sh/include/asm/flat.h         | 1 -
>  arch/xtensa/include/asm/flat.h     | 1 -
>  fs/Kconfig.binfmt                  | 3 +++
>  fs/binfmt_flat.c                   | 5 +++--
>  12 files changed, 9 insertions(+), 12 deletions(-)
>

For ARM bits:

Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>


> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 8869742a85df..b1b48c0bde76 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -30,6 +30,7 @@ config ARM
>  select ARCH_USE_BUILTIN_BSWAP
>  select ARCH_USE_CMPXCHG_LOCKREF
>  select ARCH_WANT_IPC_PARSE_VERSION
> +select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
>  select BUILDTIME_EXTABLE_SORT if MMU
>  select CLONE_BACKWARDS
>  select CPU_PM if SUSPEND || CPU_IDLE
> diff --git a/arch/arm/include/asm/flat.h b/arch/arm/include/asm/flat.h
> index acf162111ee2..bbc27901446f 100644
> --- a/arch/arm/include/asm/flat.h
> +++ b/arch/arm/include/asm/flat.h
> @@ -8,8 +8,6 @@
>
>  #include <linux/uaccess.h>
>
> -#defineflat_argvp_envp_on_stack()1
> -
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  u32 *addr, u32 *persistent)
>  {
> diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
> index 353e4d06e8c0..2d57a9204d21 100644
> --- a/arch/c6x/include/asm/flat.h
> +++ b/arch/c6x/include/asm/flat.h
> @@ -4,7 +4,6 @@
>
>  #include <asm/unaligned.h>
>
> -#define flat_argvp_envp_on_stack()0
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  u32 *addr, u32 *persistent)
>  {
> diff --git a/arch/h8300/Kconfig b/arch/h8300/Kconfig
> index d30e8727b02d..7457f190caaa 100644
> --- a/arch/h8300/Kconfig
> +++ b/arch/h8300/Kconfig
> @@ -2,6 +2,7 @@
>  config H8300
>          def_bool y
>  select ARCH_32BIT_OFF_T
> +select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
>  select BINFMT_FLAT_OLD_ALWAYS_RAM
>  select GENERIC_ATOMIC64
>  select HAVE_UID16
> diff --git a/arch/h8300/include/asm/flat.h b/arch/h8300/include/asm/flat.h
> index 14cc928d5478..4683146f0e9e 100644
> --- a/arch/h8300/include/asm/flat.h
> +++ b/arch/h8300/include/asm/flat.h
> @@ -8,8 +8,6 @@
>
>  #include <asm/unaligned.h>
>
> -#defineflat_argvp_envp_on_stack()1
> -
>  /*
>   * on the H8 a couple of the relocations have an instruction in the
>   * top byte.  As there can only be 24bits of address space,  we just
> diff --git a/arch/m68k/Kconfig b/arch/m68k/Kconfig
> index 218e037ef901..fd69ee5ad6ab 100644
> --- a/arch/m68k/Kconfig
> +++ b/arch/m68k/Kconfig
> @@ -7,6 +7,7 @@ config M68K
>  select ARCH_MIGHT_HAVE_PC_PARPORT if ISA
>  select ARCH_NO_COHERENT_DMA_MMAP if !MMU
>  select ARCH_NO_PREEMPT if !COLDFIRE
> +select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
>  select HAVE_IDE
>  select HAVE_AOUT if MMU
>  select HAVE_DEBUG_BUGVERBOSE
> diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
> index 7b1fb5c2809e..d7102fcd43eb 100644
> --- a/arch/m68k/include/asm/flat.h
> +++ b/arch/m68k/include/asm/flat.h
> @@ -8,7 +8,6 @@
>
>  #include <linux/uaccess.h>
>
> -#defineflat_argvp_envp_on_stack()1
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  u32 *addr, u32 *persistent)
>  {
> diff --git a/arch/microblaze/include/asm/flat.h b/arch/microblaze/include/asm/flat.h
> index 1cd8d7f4cf12..9e3d8e01d294 100644
> --- a/arch/microblaze/include/asm/flat.h
> +++ b/arch/microblaze/include/asm/flat.h
> @@ -13,8 +13,6 @@
>
>  #include <asm/unaligned.h>
>
> -#defineflat_argvp_envp_on_stack()0
> -
>  /*
>   * Microblaze works a little differently from other arches, because
>   * of the MICROBLAZE_64 reloc type. Here, a 32 bit address is split
> diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
> index 015678d7b771..1002343dd84a 100644
> --- a/arch/sh/include/asm/flat.h
> +++ b/arch/sh/include/asm/flat.h
> @@ -11,7 +11,6 @@
>
>  #include <asm/unaligned.h>
>
> -#defineflat_argvp_envp_on_stack()0
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  u32 *addr, u32 *persistent)
>  {
> diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
> index b215c1e66958..3d357371b28b 100644
> --- a/arch/xtensa/include/asm/flat.h
> +++ b/arch/xtensa/include/asm/flat.h
> @@ -4,7 +4,6 @@
>
>  #include <asm/unaligned.h>
>
> -#define flat_argvp_envp_on_stack()0
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  u32 *addr, u32 *persistent)
>  {
> diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
> index 5658e12ad944..82f7d7f234f3 100644
> --- a/fs/Kconfig.binfmt
> +++ b/fs/Kconfig.binfmt
> @@ -97,6 +97,9 @@ config BINFMT_FLAT
>  help
>    Support uClinux FLAT format binaries.
>
> +config BINFMT_FLAT_ARGVP_ENVP_ON_STACK
> +bool
> +
>  config BINFMT_FLAT_OLD_ALWAYS_RAM
>  bool
>
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index 18d82fd5f57c..c09651087eda 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -124,14 +124,15 @@ static int create_flat_tables(struct linux_binprm *bprm, unsigned long arg_start
>
>  sp -= bprm->envc + 1;
>  sp -= bprm->argc + 1;
> -sp -= flat_argvp_envp_on_stack() ? 2 : 0;
> +if (IS_ENABLED(CONFIG_BINFMT_FLAT_ARGVP_ENVP_ON_STACK))
> +sp -= 2; /* argvp + envp */
>  sp -= 1;  /* &argc */
>
>  current->mm->start_stack = (unsigned long)sp & -FLAT_STACK_ALIGN;
>  sp = (unsigned long __user *)current->mm->start_stack;
>
>  __put_user(bprm->argc, sp++);
> -if (flat_argvp_envp_on_stack()) {
> +if (IS_ENABLED(CONFIG_BINFMT_FLAT_ARGVP_ENVP_ON_STACK)) {
>  unsigned long argv, envp;
>  argv = (unsigned long)(sp + 2);
>  envp = (unsigned long)(sp + 2 + bprm->argc + 1);
>

IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
