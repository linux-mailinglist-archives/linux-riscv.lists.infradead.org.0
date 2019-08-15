Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0E78F5B5
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 22:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJRY0kSlN1f1eEtty3/u5tlB9SNuth6EtCp1N5wXXk4=; b=tt7D/SpTRfQrkN
	Y6DcX48WCxTVFRoMNDprGxrgSFB2nbI4P4w3sMtD/AGv6bTVq+cMmoCbrOmf17OOR6SpF+OaexySB
	Fy5m5bwNFsg7C88TdAVzZ4qAsJsKVKI7Ti4VHDDxSvaPJmsdiPKBZN4tNNCDQV0QS8vtlhg5l5kF0
	Xg/pf2DfZ43oGZ5D1tuiz6wNXlO6SLmkAgJw3Cf+i+ygoqEPMkVe0KHy96SDCT60gvO6dnU7EyvI9
	1Uz/kq0fvw3ppM0pWcZdoWNQ3OYI4+NtDhGuGw5wBTDOw6SIFrgHp1ECfrzsulwvsLp5Qsok5QlXo
	/burUdpWbn6NCBCP1LBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyMJW-0002H9-9O; Thu, 15 Aug 2019 20:25:38 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyMJO-0002Fb-TH
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 20:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565900795; x=1597436795;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IIXBmwrTo9THGRGqlfBdgwxU0Uv09lk7EJuWmb7E+kU=;
 b=hltQwUce3mMKazb9WYLzuRdUN78n8xRCOmSI3i/bKeIMKgMf4Aarxgjk
 cA7mryVrgOR1frW2avRmsXEWNf6inIgqR4KwfDYVWoTgCFFuRVHSQA0ln
 LKfDvOvu/mXoUnHnbQzzfrat3JWlg9jJGafeCFV+A3WIPXpvYapgl53LW
 HRPUk4QCCbuVO/K7bWQkPgVeE2lmOHkOgSMLomgb9N0Gb9Ni9GqgtDuXw
 WRhN5jefWNKvdtLlgcin4QCMVKjN/kokXh5m2va0oVFSvNiguyGy+QWs1
 RockGrW0P1ae7XlYaoDia61xGnfdVozG858/z75G5eIQYdHF2nztYqGy6 A==;
IronPort-SDR: Zp1hzwBmTPAD+i+dAR9uwsIIA3SVIJIem/cH2fx7MZe+WTwuW2s/J02iijEmwtB2u0219kDdRb
 ugUcrf3VQwYmgtva7kJVvadNdXGQtE53LAicJ3wOVmG8+z5OPeGlbbJ1cXD6Vl/UhIX69tbnT4
 +zbe99SXDmqWYwnUPTba+ZC57KIKXrJy/Ksy9dbZ/JsLyex7H3YTETGd1v8hWVtX66PavpHGwG
 zpwrtqMOyG2whFSIo0EHcYQb3eCJwbR41KFZBDTSgeHUpu8Jxkebu40MoqiVQwNh4+wRZ7YDLw
 Shc=
X-IronPort-AV: E=Sophos;i="5.64,389,1559491200"; d="scan'208";a="216299069"
Received: from mail-dm3nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.56])
 by ob1.hgst.iphmx.com with ESMTP; 16 Aug 2019 04:26:29 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WZv6j6BhyNK/m9YlY50RQtIInBFfNeKDS4bMAcsqhYoZJORZ+9tGQRUgxiu5joUnKcpMU2vtDR6s7+yT6HhWYrlMgxF6goiF8Fw94PoOZnBcdahx87ocZ+o7bHNTHGliKw3Sjq3OXslPTB79+4rEqVu+JvRjlBzyqhSz7mkYItASw0QDBwD36yq07pgLcOMl9L2piBv/EdqybtC8p40YHAVlhV5veCnOYQY4q1k287yE3H60iOSnM0R029UE2Ndz64QFOSPbQe80nSjlpLMpSq40qZ8ISGorWn5/biezkiTnj85o2zsqDdgBN4e05fF0G3d0md00NVkjS3dER5BxGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IIXBmwrTo9THGRGqlfBdgwxU0Uv09lk7EJuWmb7E+kU=;
 b=P5Z9drufz+m3QSFHr6tkNVZVQB7YbxqyO3nctK+hmsb6w+uEYMarcJTGOQ91yJLEXLihc6syzgo+gRdT3GCKf+x0RE0FxEryyoj9Q5yOF/Iav/Ru1CWg0UEOcwaNuCTmUj1qo4xYdnoiqqT6hpdlEDfEV+mU7a4RWqKblAyJWWh9azXead0KVWltkiyJRTel/LTNJ/+L0jN+XJ0cJMXObTddIEv9wdB9xtRjAy27McAGQq4PvG0lLad6wsJQzvJTEiRATXynlLKLnonM5R6qtd8PdLoYEIMPhLtNav+h0HhzIeIk/yogFsLX2KNxgtqFN3qm2Z8i9rNQ6oUBNjWIeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IIXBmwrTo9THGRGqlfBdgwxU0Uv09lk7EJuWmb7E+kU=;
 b=qUVdzeOFlUJDKfzNpKSbuttqGLoEJCSGvRnqYC4REYwDujUtMKGupn4WCgz7UqcQjvtJGChntS/lgN81RJom36kwaB5gy+/Wrh/yU/gEvBsWTk/iPPUsxOg366xP9tWAAktpOvqlcum3DcBxLZ4XvokedgW7uBwgE3dc4Jn3smU=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB5624.namprd04.prod.outlook.com (20.179.56.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Thu, 15 Aug 2019 20:25:26 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a%2]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 20:25:26 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
Thread-Topic: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
Thread-Index: AQHVN3xcQ1Fn35uAxU+uy0ugjEz8uab8xqoAgAADpYCAABTkgA==
Date: Thu, 15 Aug 2019 20:25:25 +0000
Message-ID: <77df4a6244ccfabd02757db4a5a5ce5aaa4e7ae8.camel@wdc.com>
References: <20190607060049.29257-1-anup.patel@wdc.com>
 <20190607060049.29257-3-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1907101703150.3422@viisi.sifive.com>
 <847fb8c879bbd2c3fd41dc1e428b3217253acebb.camel@wdc.com>
 <CAEn-LTpz_iL0Ts5GG9J6oESN76DcjBaNs-Oz-c9CcpbmRiN5Sw@mail.gmail.com>
In-Reply-To: <CAEn-LTpz_iL0Ts5GG9J6oESN76DcjBaNs-Oz-c9CcpbmRiN5Sw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 793d2ec0-26c2-44b3-2cd5-08d721beb4fa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5624; 
x-ms-traffictypediagnostic: BYAPR04MB5624:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5624EED53C7B62F43E359E8090AC0@BYAPR04MB5624.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(39860400002)(346002)(199004)(189003)(36756003)(25786009)(76176011)(8936002)(118296001)(86362001)(5640700003)(7736002)(6486002)(4326008)(6436002)(45080400002)(1361003)(2501003)(14454004)(305945005)(316002)(14444005)(54906003)(6512007)(229853002)(256004)(2906002)(99286004)(53936002)(478600001)(8676002)(26005)(81166006)(6116002)(3846002)(6246003)(6916009)(66476007)(486006)(66556008)(64756008)(66946007)(66446008)(6506007)(53546011)(476003)(186003)(2616005)(11346002)(5660300002)(102836004)(446003)(2351001)(71190400001)(71200400001)(66066001)(81156014)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5624;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9zAroYNfvRHbKBIHn9XIymmsbWkgU0KbdHqTmEMHLjsLS+PYdq+z82CQZT8s8nriUj3EeeLIAJemuF3tlETT4mhhIG7c2+M4mYax6UPS4igJb7LedoQZb8G3SiFKe47AdsrYqORlcBG9OsxL2tElyAewcqqTK5ImiPGfAQU4cKAz1ZM8/dWqGMPgyv+AELKwNFnigQwvfCyTzEuhg2cFgDFAAu0ci/eZMVrxDBcN3ZJ5NybS8+OBApyRSopDmKykDj6xRi/7h+8COULeS4cTVbRzNJd2QZCfJB1uDxmWMwaerU2TL1YONjVpK2o3FsMm1SWAClKq5gyvo8Ag2oGpez5Zc0Lzwm9VnKudJDeC4o4dQf15QgaiNLEs/pwO3ec1HA2AsXsCNrnKpfpgS9b+RYm6nXqJF3QPy3okiPRTYVM=
Content-ID: <55CC412753E34E4C93C5F33ACF043B53@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 793d2ec0-26c2-44b3-2cd5-08d721beb4fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 20:25:25.8732 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OMvLI0FMf9w52KI4Rb3PTWtgzq7GtrbGj45awoZ887cpa2kkw7C6WR9W7+Sie0etZRmg5i3GCIHlG3HkP1a+Coi4qp7xmHNnx88rqXhugU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5624
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_132531_062511_68F82865 
X-CRM114-Status: GOOD (  32.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-08-15 at 12:07 -0700, David Abdurachmanov wrote:
> On Thu, Aug 15, 2019 at 11:57 AM Alistair Francis
> <Alistair.Francis@wdc.com> wrote:
> > On Wed, 2019-07-10 at 17:05 -0700, Paul Walmsley wrote:
> > > On Fri, 7 Jun 2019, Anup Patel wrote:
> > > 
> > > > Currently, the setup_vm() does initial page table setup in one-
> > > > shot
> > > > very early before enabling MMU. Due to this, the setup_vm() has
> > > > to
> > > > map
> > > > all possible kernel virtual addresses since it does not know
> > > > size
> > > > and
> > > > location of RAM. This means we have kernel mappings for non-
> > > > existent
> > > > RAM and any buggy driver (or kernel) code doing out-of-bound
> > > > access
> > > > to RAM will not fault and cause underterministic behaviour.
> > > > 
> > > > Further, the setup_vm() creates PMD mappings (i.e. 2M mappings)
> > > > for
> > > > RV64 systems. This means for PAGE_OFFSET=0xffffffe000000000
> > > > (i.e.
> > > > MAXPHYSMEM_128GB=y), the setup_vm() will require 129 pages
> > > > (i.e.
> > > > 516 KB) of memory for initial page tables which is never freed.
> > > > The
> > > > memory required for initial page tables will further increase
> > > > if
> > > > we chose a lower value of PAGE_OFFSET (e.g. 0xffffff0000000000)
> > > > 
> > > > This patch implements two-staged initial page table setup, as
> > > > follows:
> > > > 1. Early (i.e. setup_vm()): This stage maps kernel image and
> > > > DTB in
> > > > a early page table (i.e. early_pg_dir). The early_pg_dir will
> > > > be
> > > > used
> > > > only by boot HART so it can be freed as-part of init memory
> > > > free-
> > > > up.
> > > > 2. Final (i.e. setup_vm_final()): This stage maps all possible
> > > > RAM
> > > > banks in the final page table (i.e. swapper_pg_dir). The boot
> > > > HART
> > > > will start using swapper_pg_dir at the end of setup_vm_final().
> > > > All
> > > > non-boot HARTs directly use the swapper_pg_dir created by boot
> > > > HART.
> > > > 
> > > > We have following advantages with this new approach:
> > > > 1. Kernel mappings for non-existent RAM don't exists anymore.
> > > > 2. Memory consumed by initial page tables is now indpendent of
> > > > the
> > > > chosen PAGE_OFFSET.
> > > > 3. Memory consumed by initial page tables on RV64 system is 2
> > > > pages
> > > > (i.e. 8 KB) which has significantly reduced and these pages
> > > > will be
> > > > freed as-part of the init memory free-up.
> > > > 
> > > > The patch also provides a foundation for implementing strict
> > > > kernel
> > > > mappings where we protect kernel text and rodata using PTE
> > > > permissions.
> > > > 
> > > > Suggested-by: Mike Rapoport <rppt@linux.ibm.com>
> > > > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > > 
> > > Thanks, updated to apply and to fix a checkpatch warning, and
> > > queued.
> > > 
> > > This may not make it in for v5.3-rc1; if not, we'll submit it
> > > later.
> > 
> > I'm seeing this failure on RV32 which I bisected to this patch:
> > 
> > [    1.820461] systemd[1]: systemd 242-19-gdb2e367+ running in
> > system
> > mode. (-PAM -AUDIT -SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP
> > -LIBCRYPTSETUP -GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID
> > -ELFUTILS
> > +KMOD -IDN2 -IDN -PCRE2 default-hierarchy=hybrid)
> > [    1.824320] Unable to handle kernel paging request at virtual
> > address 9ff00c15
> > [    1.824973] Oops [#1]
> > [    1.825162] Modules linked in:
> > [    1.825536] CPU: 0 PID: 1 Comm: systemd Not tainted 5.2.0-rc7 #1
> > [    1.826039] sepc: c05c3c78 ra : c04b5a74 sp : df047ce0
> > [    1.826514]  gp : c07a1038 tp : df04c000 t0 : 000000fc
> > [    1.826919]  t1 : 00000002 t2 : 000003ef s0 : df047cf0
> > [    1.827322]  s1 : df7090f8 a0 : 9ff00c15 a1 : c072166c
> > [    1.827723]  a2 : 00000000 a3 : 00000001 a4 : 00000001
> > [    1.828104]  a5 : df6f8138 a6 : 0000002f a7 : de62a000
> > [    1.828534]  s2 : c072166c s3 : 00000000 s4 : 00000000
> > [    1.828931]  s5 : c07a2000 s6 : 00400cc0 s7 : 00000400
> > [    1.829319]  s8 : de491018 s9 : 00000000 s10: fffff000
> > [    1.829702]  s11: de491030 t3 : de62b000 t4 : 00000000
> > [    1.830090]  t5 : 00000000 t6 : 00000080
> > [    1.830392] sstatus: 00000100 sbadaddr: 9ff00c15 scause:
> > 0000000d
> > [    1.831616] ---[ end trace 49a926a1a5300c00 ]---
> > [    1.835776] Kernel panic - not syncing: Attempted to kill init!
> > exitcode=0x0000000b
> > [    1.836575] ---[ end Kernel panic - not syncing: Attempted to
> > kill
> > init! exitcode=0x0000000b ]---
> > 
> > Does anyone else see this?
> > 
> > A simple revert of this patch on 5.3-rc4 fixes the issue for me.
> 
> Yes, I do see those in Fedora/RISCV build farm every morning, but
> with
> riscv64 and 5.2.0-rc7 kernel.
> 
> You also seem to run 5.2.0-rc7 kernel.

That is just a copy error as I copied the log from my bisect to paste
it into my commit. I can reproduce this on 5.3-rc4 as well.

Alistair

> 
> fedora-riscv-4 login: [178876.406122] Unable to handle kernel paging
> request at virtual address 0000000000012a28
> fedora-riscv-7 login: [17983.074847] Unable to handle kernel paging
> request at virtual address 0fffffdff5e14700
> 
> david
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
