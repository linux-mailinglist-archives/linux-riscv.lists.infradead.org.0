Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545EA8F400
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 20:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5YhZXHJ10SKOGTT8Wb624LW+v9hIAgBcuhDeidp0Sbg=; b=rAu6MCwkRw05dq
	YFsVN6M3+YFnE4OaIusJlbQ1Ww58FNsnVxyLRNXpl8QnOKtWwtH5Y4HOBuxKa59SuoZumf5Fz51UO
	13J/tkW8N9bZLLyDX+ro90jzrV37DWlGdXB88Gpp92sXEefg74oEhlyb+OJFNN7/hWwc5rk+veFEn
	9MLUnVPO985rWIb+WwdER4evcxzEsTq4D3Y7JJHLGwqk6npisMIW52VRHxGor84Lx7LGyzM+w2BLR
	NiHs+olmfZHtJ9dcyVzpnzXJ8Ic8X6gbu5D8JRRHOwy2mF4Kn0Deeno3gyPvvsDb7YuUHl9b7iMNV
	cMIrQ7bRMygQD0UU2lwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKwV-00076s-D4; Thu, 15 Aug 2019 18:57:47 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKwP-00075z-JA
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 18:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565895461; x=1597431461;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5tJuRUTyp76o1BWy6VXz0ILglJJ1/IVy4qs4gLWOUz4=;
 b=X6G2+t0BgQAnQBVhSeVuXvAOA5GhkMf0Ny43o1L9YA/AApn4oHIM9v8x
 4cg8LqYrLjivbem9hnj2jF41gb/Hqc88pGomI02wIeQ6Z4Gq3ronw7Zdh
 UckZuX1wSyEoCvd84n5kWRb2CL2uVcdfs27O9GTNIgcfum7ezqHFZUJMl
 9q06rtOTYzWZ7gIeEP+0jFu9oTvVg0D7aA8DLQoMVqmvBysCfCBoRmnT+
 aZhjaIc/bjT6b2Mr05OF1vyMbe4RH2VsCrGBDLTQ4gRPp46v62J30V3N6
 Rgixt/EpSXTijtHqovc9DUDt0kmOjRGjueX9hxTbBv63JAPp6mNSfeELz g==;
IronPort-SDR: LTAn3Tqhub7cEcPS91uAZYOBvBkwL+XSVAErPNrSdGnqP1y0qvWQ7wM2U1U3/RBuTwJBRstyvv
 7ZqTJU5SxWS+nnjFv9SFZ5YErGq5mzkwNMv3o+kUImYcPTAjNqMpJSPHMMS6tkeS1lzVG6kSUX
 LCwpYnbLISrfkZ1vrM1LKN7CLaGLNboe7vWkmFDuCPmym7e9sigb9jEN/0bZZR9gneuhwYkd4o
 hHE9lrEfm5NNrz8MS1WW/PTZhRQVY0tFjcbhJzbFmhT1SnNbF0WN6/fieZejxYM+SPz64RsAsk
 YPA=
X-IronPort-AV: E=Sophos;i="5.64,389,1559491200"; d="scan'208";a="116872655"
Received: from mail-sn1nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.50])
 by ob1.hgst.iphmx.com with ESMTP; 16 Aug 2019 02:57:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AP/q4qcyqAI5OIXZHY9/YrY9HMz/XKY9lQ2WqXj3jjB0YApFZPLtRsubgWZ749TCqhUw4rGJO3q2D6BMPQ9OHsYd5ULvA5fO8HbdaIZEeTSlJunlSGA1RSQK0KJlgNRgQRwT0cR0dI9r7l/REfDHujkB1T+1vQ9o50xqJMJYSQskNhu+XlvdQBqjSwlnNzCzIMYjN95lLC3iCbpJMo5iO4VFsXKMQS0gsOI4mHFgd6tqKp2MC8Ug9/stAXC3vF5AUgMIbg0xASngfKzn7UMZdD8kSfdFlqxqA+cMRWq86BFQa6nAfTy5F2ZiIMWddMb+0HLZmtTVY2Z0CcLdCEDBfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5tJuRUTyp76o1BWy6VXz0ILglJJ1/IVy4qs4gLWOUz4=;
 b=I+SLmxSsY9BcWAC6hscifZR1vrVY3oilS1IMVFLFlRvIHQbI9Gr3S+VIvT572ZMtJ2AlgZ4MsBvg4ti33gKovKOEJPb1YUngHGm4kVell73FqpJhjVwzBaHN2OJlFhNMub4SOCoRtVVPYO83nW07DuTSAOGrDGoM3WkECjrJNnm2nIDqpJtETql/dU2rXpABkauiLoUWjPCBwSUmV2rFTCXd5U5D9fHP6fjbCUBJUWk8Yt7zxD6jpqci3JA406HXNuOrjMxozHEl/ZNgcBy9oM5ab3mPp7vGV3CrbdeU1YiiU5TjId5sspvUO9XqOfZXBds/X6E+8kEioBYqCG07aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5tJuRUTyp76o1BWy6VXz0ILglJJ1/IVy4qs4gLWOUz4=;
 b=kIZJN7hOP4UEGJd67Knoky5b/U2N8N7RGtgTfex2fOlxAbRqozaT67quDGv77LUa4Ixo7i0zcC3lQi9f7CPR6o7GcA8NkuJaauWazTck+cVlbnFQF4EK4lEq0p4TWos4meirN9MJlI9QtSLmqa7HTC5PA1VU0oRhQoeOz799rXE=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4053.namprd04.prod.outlook.com (52.135.215.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Thu, 15 Aug 2019 18:57:36 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a%2]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 18:57:36 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, Anup Patel
 <Anup.Patel@wdc.com>
Subject: Re: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
Thread-Topic: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
Thread-Index: AQHVN3xcQ1Fn35uAxU+uy0ugjEz8uab8xqoA
Date: Thu, 15 Aug 2019 18:57:36 +0000
Message-ID: <847fb8c879bbd2c3fd41dc1e428b3217253acebb.camel@wdc.com>
References: <20190607060049.29257-1-anup.patel@wdc.com>
 <20190607060049.29257-3-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1907101703150.3422@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907101703150.3422@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3ce8c94-7c0c-4c2f-7115-08d721b27036
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4053; 
x-ms-traffictypediagnostic: BYAPR04MB4053:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB4053A48F47EED52FFB8BF40F90AC0@BYAPR04MB4053.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(189003)(199004)(76176011)(66446008)(66946007)(2501003)(81166006)(8676002)(316002)(81156014)(305945005)(6246003)(6486002)(110136005)(6436002)(71190400001)(5660300002)(54906003)(99286004)(71200400001)(86362001)(26005)(6512007)(118296001)(76116006)(4326008)(66066001)(6636002)(229853002)(6306002)(186003)(64756008)(66556008)(66476007)(14444005)(256004)(14454004)(7736002)(45080400002)(446003)(478600001)(102836004)(8936002)(966005)(6506007)(53936002)(11346002)(25786009)(36756003)(486006)(476003)(3846002)(6116002)(2616005)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4053;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: R24NjAeqj/vVD70TLf11uZnSbKJI5llVcVJWCNYbOPyul6OaVTs+Skh74Tr8Nz8vy431Bcg+JuEOpfzfrcRWqWMFHlZxS+/5I4y6H23G+YavGnFDzb+ehZZ6uGApONXEfMHWh325yPots0hfI26FW2BUjsugiKmF5Gn75QCx1V9EWG51ogdxzVAFjTScCms+hT77YBMnW+AowZagigybOQIoCnREH/X75teB92zFS29HwEQ+s87da7O8GbPhS2iOeK3D5WTI1+8QwaX/1H4N8rwBQQh2eIiIkNeXSsVp3vTPH1fW0gh857+UbaVfEL+oBFYVgMTQiG53SGwKCQz3wHB71zP9Bz6zKOA66LzV8PJtPXYZDHH5MS/LHn50nz7DS1i7ptTIlDAQRUzeX8pBspTqpwUGddjxguflQKi40UM=
Content-ID: <70F8B7504394A14EB9DB24468D12D5FB@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3ce8c94-7c0c-4c2f-7115-08d721b27036
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 18:57:36.4916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VL2RCflwdQoKncDeyc63+8W/QBsl031W9NT63SdAa8i267/ywUBChzaqhDojQlpsP5T2LywlIQo+LEe6JVsnMcgCd9f43GGuXpfluKvas+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_115741_828042_60488ACF 
X-CRM114-Status: GOOD (  24.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-07-10 at 17:05 -0700, Paul Walmsley wrote:
> On Fri, 7 Jun 2019, Anup Patel wrote:
> 
> > Currently, the setup_vm() does initial page table setup in one-shot
> > very early before enabling MMU. Due to this, the setup_vm() has to
> > map
> > all possible kernel virtual addresses since it does not know size
> > and
> > location of RAM. This means we have kernel mappings for non-
> > existent
> > RAM and any buggy driver (or kernel) code doing out-of-bound access
> > to RAM will not fault and cause underterministic behaviour.
> > 
> > Further, the setup_vm() creates PMD mappings (i.e. 2M mappings) for
> > RV64 systems. This means for PAGE_OFFSET=0xffffffe000000000 (i.e.
> > MAXPHYSMEM_128GB=y), the setup_vm() will require 129 pages (i.e.
> > 516 KB) of memory for initial page tables which is never freed. The
> > memory required for initial page tables will further increase if
> > we chose a lower value of PAGE_OFFSET (e.g. 0xffffff0000000000)
> > 
> > This patch implements two-staged initial page table setup, as
> > follows:
> > 1. Early (i.e. setup_vm()): This stage maps kernel image and DTB in
> > a early page table (i.e. early_pg_dir). The early_pg_dir will be
> > used
> > only by boot HART so it can be freed as-part of init memory free-
> > up.
> > 2. Final (i.e. setup_vm_final()): This stage maps all possible RAM
> > banks in the final page table (i.e. swapper_pg_dir). The boot HART
> > will start using swapper_pg_dir at the end of setup_vm_final(). All
> > non-boot HARTs directly use the swapper_pg_dir created by boot
> > HART.
> > 
> > We have following advantages with this new approach:
> > 1. Kernel mappings for non-existent RAM don't exists anymore.
> > 2. Memory consumed by initial page tables is now indpendent of the
> > chosen PAGE_OFFSET.
> > 3. Memory consumed by initial page tables on RV64 system is 2 pages
> > (i.e. 8 KB) which has significantly reduced and these pages will be
> > freed as-part of the init memory free-up.
> > 
> > The patch also provides a foundation for implementing strict kernel
> > mappings where we protect kernel text and rodata using PTE
> > permissions.
> > 
> > Suggested-by: Mike Rapoport <rppt@linux.ibm.com>
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> 
> Thanks, updated to apply and to fix a checkpatch warning, and
> queued.  
> 
> This may not make it in for v5.3-rc1; if not, we'll submit it later.

I'm seeing this failure on RV32 which I bisected to this patch:

[    1.820461] systemd[1]: systemd 242-19-gdb2e367+ running in system
mode. (-PAM -AUDIT -SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP
-LIBCRYPTSETUP -GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS
+KMOD -IDN2 -IDN -PCRE2 default-hierarchy=hybrid)
[    1.824320] Unable to handle kernel paging request at virtual
address 9ff00c15
[    1.824973] Oops [#1]
[    1.825162] Modules linked in:
[    1.825536] CPU: 0 PID: 1 Comm: systemd Not tainted 5.2.0-rc7 #1
[    1.826039] sepc: c05c3c78 ra : c04b5a74 sp : df047ce0
[    1.826514]  gp : c07a1038 tp : df04c000 t0 : 000000fc
[    1.826919]  t1 : 00000002 t2 : 000003ef s0 : df047cf0
[    1.827322]  s1 : df7090f8 a0 : 9ff00c15 a1 : c072166c
[    1.827723]  a2 : 00000000 a3 : 00000001 a4 : 00000001
[    1.828104]  a5 : df6f8138 a6 : 0000002f a7 : de62a000
[    1.828534]  s2 : c072166c s3 : 00000000 s4 : 00000000
[    1.828931]  s5 : c07a2000 s6 : 00400cc0 s7 : 00000400
[    1.829319]  s8 : de491018 s9 : 00000000 s10: fffff000
[    1.829702]  s11: de491030 t3 : de62b000 t4 : 00000000
[    1.830090]  t5 : 00000000 t6 : 00000080
[    1.830392] sstatus: 00000100 sbadaddr: 9ff00c15 scause: 0000000d
[    1.831616] ---[ end trace 49a926a1a5300c00 ]---
[    1.835776] Kernel panic - not syncing: Attempted to kill init!
exitcode=0x0000000b
[    1.836575] ---[ end Kernel panic - not syncing: Attempted to kill
init! exitcode=0x0000000b ]---

Does anyone else see this?

A simple revert of this patch on 5.3-rc4 fixes the issue for me.

Alistair

> 
> 
> - Paul
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
