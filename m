Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E5D8FA5A
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 07:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXamr7WuUoE+thWcAbZc7d8L/GMxaga3FwBRgG4CpyU=; b=UVgMZnMIcBwkaj
	JAhatP2DLienziNo2oK/XrH0Dx18Jix6Un4gxW7zINva1ds/M5e+NPWo/TycsGTdlCVbr/rWqfIr+
	/pySah/vJ5BAsHgOYELYz1bCUnw8zSrW2/SAtbqo9D3o92Jym5DasIzeuLjw2KRR6OOOdeC6/us+E
	lz7l1aeea8SboPIHgWuiMMfQi6VlTew6/YO6CFcPLuu4m0MadUN3ym8rxjxuJfcYzI+lwbc6CClE7
	3TQdKqBAfxG7qsGWv0UUmwjOc9oa9gE/LzUKuKG6+1sYllkFMx0ajje7Y4aiUbvPbHyoz7COXKDT/
	rL840Gve1pBS5rUA8Kdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyUhh-0001dN-Gu; Fri, 16 Aug 2019 05:23:09 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyUhd-0001cR-Bk
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 05:23:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565932991; x=1597468991;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Av7S7Dur+RYPK6q2Jm+xuSqb1rK+2/5YzvEbq9sZRzQ=;
 b=qDCXel2Co5lFmPUKb86xHxhF2QYhsNChMFAx4i9ChZluIT57K74MmCMB
 abe3tVcBFQ9lPk23Xq32mZGdIKNjcXTnOtXp3ENtL081DJJXPNZvUKLBu
 9RoDV161auQ8DNHYmPdcYhsG8YNuGTQJ3lqALZpKizeYKNgfCG9MyyWdg
 46NAl6yuyD+u6IvONnUZyctCRwBN/xmrycHR2G7TepmEljxdyEaR2aTB1
 ERbjAFgS3clxvGgcG4sRWcs4ogweJrl9mh1F69vMowCepPRvi4xGsUnwa
 XVYCMrx7ymttg8Um3S+30Ks55q+k+viJXDfVv8419PpuJJhCA0tMdlePs Q==;
IronPort-SDR: A+HWwDA0idBXk9b41NNzKLb9sB5XXx2txat0vo5aGnhb35wIttjSBT29jHe8LLe93UQtmXAIKm
 0E6LJQXXVlUtFm88JdoAordVz3v6UI8PkFNfmhY/whRejEIQ/x2GpTshZchUEoP9y1umIJEiKN
 vLGNJFd7QwrxkLNMw+yaFhSsQZQk3h6d0yGFCh63c8bNd2GX6SVzXzPzvlL9E2rh9zG4/flVg/
 Zpovp+8Fvt+qjiIJKpAahLtLogGJGfkhfBDIb4krd3tKkMEbypiUiv6QMmzKbX25vGK4ciHqkf
 qJ8=
X-IronPort-AV: E=Sophos;i="5.64,391,1559491200"; d="scan'208";a="216331032"
Received: from mail-by2nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.52])
 by ob1.hgst.iphmx.com with ESMTP; 16 Aug 2019 13:23:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PCS0T3o8FcpkN+jMxu+C1yXyMoPQkPhjLWd/+Rg8UazK3PszIIiGDNvkf1eRZ1GLxANT7eBjVyiz42e+aR3gpgnme1PmCvwvG4Kr842uSkKIJdU749v/mIunoUxtAoUf0pUew0NU8L2H75+JvqR+vBOqm32pndurRp9VlGJyKvHuyjtftmO88kfVTLVOYPIIlt/lGdZG9fBQbgsbqknUyTT5kjl9B796S9jBBMxAXhwUyeZxZBHsdgd3w5Ek1qhCdmBFokBwjErgjTUwFGQ3dSKq4NCxrJBmceBrwZDVTBUp/zS2g4JAt4kVyhlRhnEmJtQym37S07rkuQ4jWknarA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Av7S7Dur+RYPK6q2Jm+xuSqb1rK+2/5YzvEbq9sZRzQ=;
 b=FUrSQjeuIdZh6TAE1oUrag6IAp4cee6Ady2xK4uEkO+3tqU1gOH1FOQhDoxKV/J1PPCaB8++HZFxr6/wwUb1u8gbOPSHluxQ4KcxTQo60107u7sXmw42tX52apEYHYM3r4jV2C+nF/Cds/jhl7AjXJ8fio30kyXBVEdgELdIJFnjVLVczBCXa2ia+1WmRdZQGL4ixnCW4X77aIZoWpvsOHgGW+AysPLd6aV95KaDcBf9+sPolDszINUxOancpeszM32MKV+abHEfHn/hUZ5OmgmbkVbKXDWmSfyaQUdQ6JCS+NbIPMSS1TkjeXB7sFQC1XLSh2L5basKM8uNvYp1VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Av7S7Dur+RYPK6q2Jm+xuSqb1rK+2/5YzvEbq9sZRzQ=;
 b=bwSAn0buW0VwlIpk79un25BlPgeEIhCC7SP719+HD+9B+0yB1K3SPSEvytZ1IzB7n2+yR+7W3LRTxHANQEBLPCsQVklVjI/LQ7lDEf4CrKyPGhRKi7iDcQYRASganJ0t9ySPwcGjxNHC+3zbtA5vdrk5s+DmupcT/Ecut1Dqh5Q=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5622.namprd04.prod.outlook.com (20.179.56.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 16 Aug 2019 05:22:58 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9%6]) with mapi id 15.20.2157.022; Fri, 16 Aug 2019
 05:22:58 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "schwab@suse.de" <schwab@suse.de>
Subject: Re: Random memory corruption with v5.2
Thread-Topic: Random memory corruption with v5.2
Thread-Index: AQHVRfuSsQxPefvVWkuKVI3774eLbabiNjEAgACFxKKAGg7XAIAAjo4A
Date: Fri, 16 Aug 2019 05:22:57 +0000
Message-ID: <f2e56dc61e9c385a1d19270b016650f0684ab72f.camel@wdc.com>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <a47ede7577580987feb279d9879a994786a65d1a.camel@wdc.com>
In-Reply-To: <a47ede7577580987feb279d9879a994786a65d1a.camel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a1747a0e-a01e-4195-528c-08d72209ccc3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5622; 
x-ms-traffictypediagnostic: BYAPR04MB5622:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB56229FB494885B8E32C8555EFAAF0@BYAPR04MB5622.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(346002)(136003)(396003)(39860400002)(189003)(199004)(71190400001)(6436002)(66946007)(486006)(476003)(6246003)(71200400001)(6512007)(6306002)(316002)(8936002)(4326008)(110136005)(46003)(53936002)(186003)(118296001)(6116002)(446003)(256004)(36756003)(14444005)(81166006)(81156014)(2616005)(99286004)(76176011)(2501003)(8676002)(102836004)(53546011)(25786009)(14454004)(11346002)(6506007)(76116006)(478600001)(64756008)(66446008)(966005)(7736002)(66556008)(305945005)(229853002)(5660300002)(86362001)(6486002)(66476007)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5622;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oow6rnotwyLniW/E85yvKLoWdoULBb5PvEVfPt0OAEk6qs+Okpnmbs7ibp9AfaA6ptkcYNgL5vzlYrycLpmMYGlqacZtXxl0CLjHPK5oipA/iQovb6uUtYZuvkvXkuRNY5c6tS1Uj6Y2erkX5C+N2e7nE3mKXsOMIi7YSfk/2rpqX/GGPbS9c0U7dRXYTSSoEH5wCWWf7I10tS60bsLJFVlXNB6CrL3kJFKraEx722XfsqdTTZ5Ulu9UUH5apiWaQnRUoqgdEd0H8Ah8tJDG42KfoMSYYWobjO3eVNM82Ax96OJ3AKgjO/5QVzyuXgoRCYnl+B2/GcOoefR+qRhRHkK848Zk23cPJB6CCAuJe71ej4aAidbGECTs0e0SsOAqSm464Hh1jTpn6FTFs0gLErfgjiu+TSmUBm7Sl4cj4yw=
x-ms-exchange-transport-forked: True
Content-ID: <988F778D4F9992458648957BB347E6EE@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1747a0e-a01e-4195-528c-08d72209ccc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 05:22:58.1057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VVxCju3pftTeR9HrAHVRX9pl/3fANXJ4cAgMAviKdw1xPFhFgtYL7s63MHyP7Eh8j5dPiAe/b9X0s0vLVGMnew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_222305_530846_5B4D0589 
X-CRM114-Status: GOOD (  19.61  )
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-08-15 at 13:52 -0700, Atish Patra wrote:
> On Tue, 2019-07-30 at 08:56 +0200, Andreas Schwab wrote:
> > On Jul 30 2019, David Abdurachmanov <david.abdurachmanov@gmail.com>
> > wrote:
> > 
> > > On Mon, Jul 29, 2019 at 1:51 PM Andreas Schwab <schwab@suse.de>
> > > wrote:
> > > > Since switching to 5.2 kernels I'm seeing random crashes and
> > > > misbehaviors on the HiFive, for example while building gcc or
> > > > glibc.
> > > > Perhaps missing TLB flushes?
> > > 
> > > Do you have some examples of crashes?
> > 
> > While building glibc:
> > 
> > an_ES.UTF-8...realloc(): invalid pointer
> > /bin/sh: line 1:  7841 Aborted                 (core dumped)
> > I18NPATH=. GCONV_PATH=/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/iconvdata LC_ALL=C /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/elf/ld-linux-riscv64-lp64d.so.1 --library-path
> > /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/math:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/elf:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/dlfcn:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/nss:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/nis:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/rt:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/resolv:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/mathvec:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> > base/support:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nptl
> > /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/locale/localedef
> > $flags --alias-file=../intl/locale.alias -i locales/$input -f
> > charmaps/$charset --prefix=/home/abuild/rpmbuild/BUILDROOT/glibc-
> > 2.29-0.riscv64 $locale
> > make[2]: *** [Makefile:422: install-archive-an_ES.UTF-8/UTF-8]
> > Error
> > 134
> > 
> > While building gcc:
> > 
> > ../../gcc/ada/exp_aggr.adb: In function
> > 'Exp_Aggr.Expand_N_Aggregate':
> > ../../gcc/ada/exp_aggr.adb:5311:21: warning: 'Csiz' may be used
> > uninitialized in this function [-Wmaybe-uninitialized]
> > ../../gcc/ada/exp_aggr.adb:5220:10: note: 'Csiz' was declared here
> > +===========================GNAT BUG
> > DETECTED==============================+
> > > 10.0.0 20190727 (experimental) [trunk revision 273844] (riscv64-
> > > suse-linux) |
> > > Storage_Error stack overflow or erroneous memory
> > > access                  |
> > > Error detected at
> > > output.ads:39:8                                        |
> > realloc(): invalid pointer
> > 
> > raised PROGRAM_ERROR : unhandled signal
> > make[3]: *** [../../gcc/ada/gcc-interface/Make-lang.in:140:
> > ada/exp_ch3.o] Error 1
> > 
> > Andreas.
> > 
> 
> Can you give it a try with following patch in OpenSBI & Kernel ?
> 
> Linux kernel:
> http://lists.infradead.org/pipermail/linux-riscv/2019-August/005889.html
> 
> OpenSBI:
> http://lists.infradead.org/pipermail/opensbi/2019-August/000386.html
> 
> In my testing, I no longer the stress-ng error or glibc local install
> issue if I use following command.
> 
> sudo make -j8 localedata/install-locale-files
> DESTDIR=/home/atish/glibc/build/install
> 
> 
> I still see segmentation fault if I use a archieve locale install
> command.
> 
> sudo make -j8 localedata/install-locales
> DESTDIR=/home/atish/glibc/build/install
> 

I am also able to run above archive locale install command successfully
multiple times after removing the corrupted locale-archive files
present in install path. 

Let me know if it works for you as well. 

I am now running stress-ng & parallel glibc locale install together to
fully stress the system.

Regards,
Atish
> But the error dump doesn't contain remap() error. Just a segmentation
> fault which may be due to userspace or just different version of old
> tlbflush problem.
> 
> 
> Regards,
> Atish
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
