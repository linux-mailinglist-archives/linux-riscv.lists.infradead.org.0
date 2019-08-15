Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8498F673
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 23:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAXpWaaExFFHp6/FJdYJUFUJRG9ulywWSyW5rsN+iVc=; b=kD6GbUUdaYmOPW
	HUQ0iIGDt4CSL73oeHGwiASeht9keT2zjwcq6pJrs2a3+g1r6MZnS0bs1tAxYkSRyC0+01YQHl23c
	U8gYqZN7XP3/eXsE+5KVUVyJj1Sh74PaGYnu6LtZ6Hvw2D1UcURH48Ij95iVjd5bwnjihZDhQS39Y
	ibX99kJlk7A4JX27S5jRDk2BQ2Y7QrgHJjX0VOU0j1e/+PZ9bSSOAS53OQB7Vq77TOBCZKLGLbbT8
	hURQivZX0ogctz1SBR0b5fIFg2oJIusFV52j4lDohHSHSXwn49M/NGHUzfXLPRIEoJbpZIOspS9ec
	qQMvAWJ7HcRuOaoyVZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyNM8-0000ek-7S; Thu, 15 Aug 2019 21:32:24 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyNM5-0000e2-4J
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 21:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565904742; x=1597440742;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=yYFSEQkHqKdpNXJTMbHP1qd8pqN9z/B8+2PPV1KS44g=;
 b=E7p9lQ+vxxM84I/Xs43tujpEitPR9GGKG9+lDOxAhzsuh1HKMlpZo8Vc
 bzOgeFJWGBQuyHoigfsJc3m9Kx64bervxuxO/1//fI6PefEgA65FPzvOd
 s2y2WMkb8Aj4Ded9hkYv/j70tDl5lrOP6ZEXlAUv0hZljK/hJ0q0gqG4V
 89NEc3Y71kFyXtVzlkLEKbBEu4JBuyHvzH2++CWvhJJWcj8tRfCNlhIYz
 pCtUAzjxR3sF09gcbfwk0YUiqtz9RvYqHXiFVMoa0DNX35OJ9jfsEMYRY
 l1qOqlnGcVt4ALYK8cWac6qikKs63Yozil7PkADA3DRoTGMaupaY6QkSw g==;
IronPort-SDR: 3CeGUfjsKYe/e8ZArBgLKScgQOp5k9DTlEO/GG1z+ai+LDo6zJthgEM94XABZlU0PcSV+oq95N
 bnuaowS6CtqoP8+XddNMcqkx21ZXZWP9gDr10dCuLYnTVNFM4dmZd6EisiQKX/TCdevMrgw/ig
 6j9HAZujJ++n405Y1Etsem8P7hJblKavLdEaSW/nWv+E1A1WLoTjf4+PrmSIrS0P8WGhordbpW
 toMjCA5yQbSPvjlrDpl7T0IjssvyYhOcjDfm7KejcrTZTD0Rm05o6Ujx27Wkko+i0m3JRHVVxl
 BXc=
X-IronPort-AV: E=Sophos;i="5.64,389,1559491200"; d="scan'208";a="116881348"
Received: from mail-by2nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.56])
 by ob1.hgst.iphmx.com with ESMTP; 16 Aug 2019 05:32:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IMOAyDt+Mj6Oe+K/qu7wu/NUzwMvgy9RxZxQVyCai0NJAcXzSYkxJdAUTM0JGsxszV0+7vZRtz/XguA158RJGlbo+MN0d8MVgWbDn3dcqDabrUyv0rivnItcRPg9H3ALHDkEBpSnujq8Jc+7yVbmMQO30ZXAhRqi+xeWpAj6tUClMUdlMJP8x/uVfIcOffuyBZ4o6K739ydCLwhC1JhacMh9wp8SYWi0j0Nr0LHg2pUuYg/BT5tVaZDV113hn0mQhaklZwc6v04CHw7c4kjXbxhgHUnLukREGJtVN6wwwYc0K0ZSojbdtqjTgLdbf3FtgMpYET967JLQCvhDIEjO+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yYFSEQkHqKdpNXJTMbHP1qd8pqN9z/B8+2PPV1KS44g=;
 b=LQWwU2mARMSAFKdnelekR1rcfYJ08zbezSIMvMSaAF2yiDzA1Q/T1EnRVPXzYg4ZhPwyt9Z7kWROIsEJfaHqMI1r2jhOrTWpNUfBLn1PimhNV98Ht8Tto7HLdvf0Zuzxmj/ketY+EzkNYuNK9bglDcAY6jcEZNBVskoV3/7GbpyaPDEbCCafQR/CyicVbCXEVHZ02yQ6oW/+GgO/HMd0gyb9KIIZE1IoMizpZD7RPMX3LMxFnQGLJcd2TZ4wQFkOfT02ItVRwEvoaOqF78vKGK1TSHN2Nt5CocupCr5lhkkklRjV8AF138E9i8KajoBTMB3oSGlXYPqKoMmPTUPaGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yYFSEQkHqKdpNXJTMbHP1qd8pqN9z/B8+2PPV1KS44g=;
 b=QHnaMbq8jZEhXvpN7KjFj6qTe4bMeOZfWjWJEfWlazid8zhotkHE1+6W0s+YMmcJFxRlc18BQ8Ptxtj+4j1x0uw9IaugcKiaxCWDHt4ygD5jcqbrWu892Hs9wp1Er3MUs7ikYsAJoBRJnp0TJUqE+lEWqTTQufh3Bt+cZo73KGA=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB6198.namprd04.prod.outlook.com (20.178.232.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 15 Aug 2019 21:32:17 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::702b:2326:3cee:c07a%2]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 21:32:17 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
Thread-Topic: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
Thread-Index: AQHVN3xcQ1Fn35uAxU+uy0ugjEz8uab8xqoAgAADpYCAABb1gIAAEJuA
Date: Thu, 15 Aug 2019 21:32:17 +0000
Message-ID: <89abd38c67eb3e02551b8a3a1705c9bf591cfbcf.camel@wdc.com>
References: <20190607060049.29257-1-anup.patel@wdc.com>
 <20190607060049.29257-3-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1907101703150.3422@viisi.sifive.com>
 <847fb8c879bbd2c3fd41dc1e428b3217253acebb.camel@wdc.com>
 <CAEn-LTpz_iL0Ts5GG9J6oESN76DcjBaNs-Oz-c9CcpbmRiN5Sw@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908151327490.18249@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908151327490.18249@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ba77f8c-a291-4478-984d-08d721c80be9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6198; 
x-ms-traffictypediagnostic: BYAPR04MB6198:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB619816048E40A5D8B1F9048890AC0@BYAPR04MB6198.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(39860400002)(396003)(136003)(366004)(199004)(189003)(45080400002)(486006)(25786009)(6116002)(81156014)(6486002)(86362001)(446003)(76116006)(81166006)(66946007)(3846002)(2616005)(476003)(66446008)(64756008)(66556008)(66476007)(6436002)(6506007)(99286004)(11346002)(76176011)(305945005)(7736002)(6246003)(4326008)(5660300002)(71200400001)(2906002)(316002)(36756003)(229853002)(110136005)(118296001)(71190400001)(26005)(8936002)(6512007)(102836004)(54906003)(14454004)(53936002)(186003)(14444005)(256004)(478600001)(8676002)(66066001)(2501003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6198;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZQmrKoCLUz7QNp3g8Je9yFh6VKg7Qn3/UaTDh7q+6DLZxOqtCO7k/583tO1CrpOGiSzdXQ2+1CeA2V4V2C5Yc1ruL6QqmnVV5UNqtUAj0+Z+cG0UsAZIsc8mk84nkATZaYogUrhBB8eHgXNzvA3R+T9uwh3BvIMXzd951O+JLd1tAwMdyDp9wgbBa1CiCrjXN3iqOK9XqgogKUxSUjD3OfSlcuLQheVwB2DYNAoLd9NNEzjL/Dku0yHrdyhqeQGeHtK7v6zZv7WLhLxAhJPS9K1Rajwk9xD1SXLMKPUgAGul1FRutG4bFX98AXA539hdhIQdxK644J/EJTYZo+EMT3gpcdAKz4CvEnKKAdVl6PE4ZgE6y2fShGqrdNcY5cxsoTaUUltTvbfQRHqev0AoqsvRppy+gJm1HKErewCeB78=
Content-ID: <C3045C1B9C4BC145A1DB8DCB94CB00DE@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ba77f8c-a291-4478-984d-08d721c80be9
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 21:32:17.1719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DeN7juKIIWV4rNNnWrmKpyso0bOBeBupJ8tXa+M7WACouQAHALaYnvsDYDONqirr4TDFTUtEQ+aQlqz/1ILS00EWefVPL/e61R/eYmnwFJA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_143221_368473_F4137D5C 
X-CRM114-Status: GOOD (  18.22  )
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
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-08-15 at 13:29 -0700, Paul Walmsley wrote:
> On Thu, 15 Aug 2019, David Abdurachmanov wrote:
> 
> > Yes, I do see those in Fedora/RISCV build farm every morning, but
> > with
> > riscv64 and 5.2.0-rc7 kernel.
> 
> [...]
> 
> > fedora-riscv-4 login: [178876.406122] Unable to handle kernel
> > paging
> > request at virtual address 0000000000012a28
> > fedora-riscv-7 login: [17983.074847] Unable to handle kernel paging
> > request at virtual address 0fffffdff5e14700
> 
> Alistair, you're seeing panics immediately after the userspace
> transition, 
> right?  100% of the time?

Yes, just after init (systemd) is started. I see this 100% of the time
with 32-bit RISC-V.

Here is an updated log with a little more context:

[    1.227072] EXT4-fs (vda): mounted filesystem with ordered data
mode. Opts: (null)
[    1.228148] VFS: Mounted root (ext4 filesystem) on device 254:0.
[    1.274486] Freeing unused kernel memory: 192K
[    1.274788] This architecture does not have kernel memory
protection.
[    1.275298] Run /sbin/init as init process
[    1.682749] systemd[1]: systemd 242-19-gdb2e367+ running in system
mode. (-PAM -AUDIT -SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP
-LIBCRYPTSETUP -GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS
+KMOD -IDN2 -IDN -PCRE2 default-hierarchy=hybrid)
[    1.685536] Unable to handle kernel paging request at virtual
address 9ff00c15
[    1.686160] Oops [#1]
[    1.686409] Modules linked in:
[    1.686826] CPU: 0 PID: 1 Comm: systemd Not tainted 5.3.0-rc4 #1
[    1.687388] sepc: c05d2f74 ra : c04bd60c sp : df04fce0
[    1.687817]  gp : c07af4a8 tp : df050000 t0 : 000000fc
[    1.688329]  t1 : 00000002 t2 : 000003ef s0 : df04fcf0
[    1.688763]  s1 : df7090f8 a0 : 9ff00c15 a1 : c072f4a8
[    1.689186]  a2 : 00000000 a3 : 00000001 a4 : 00000001
[    1.689587]  a5 : df6f8138 a6 : 0000002f a7 : de62a000
[    1.689970]  s2 : c072f4a8 s3 : 00000000 s4 : 00000000
[    1.690355]  s5 : c07b1000 s6 : 00400cc0 s7 : 00000400
[    1.690732]  s8 : de496018 s9 : 00000000 s10: fffff000
[    1.691114]  s11: de496030 t3 : de62b000 t4 : 00000000
[    1.691491]  t5 : 00000000 t6 : 00000080
[    1.691797] sstatus: 00000100 sbadaddr: 9ff00c15 scause: 0000000d
[    1.692861] ---[ end trace 7aed3616cacc20ea ]---
[    1.695358] Kernel panic - not syncing: Attempted to kill init!
exitcode=0x0000000b
[    1.696158] ---[ end Kernel panic - not syncing: Attempted to kill
init! exitcode=0x0000000b ]---

> 
> If so, this is probably a different bug.  Most likely the TLB
> flushing 
> issue.

I'm not sure. I have tried with Atish's OpenSBI and kernel patches but
that didn't help.

Reverting just this patch does fully fix the problem though.

Alistair

> 
> 
> - Paul
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
