Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C264D8F602
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 22:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zf4nsRWTQwHsCAZldx4xg+nfPnXIG/dgsepTBKS//aw=; b=Rjo+xrnvVPrMz5
	W+fqi8J6vUziqkKsE8J04QaiWee6It63tl+fYYOZigp0aIz+HXMH7lADWZu9zICP19Yy3axZJULoi
	h+BR1vZmcj7fAOBObWGC3kUOThWYGaK7HapI37urmwKFEAIDBZ0VKJkUWqI2oRmEktWCr/JZY+1SX
	sStkduKS7mrzkx8150qXVcMn0vpAsjREdcR0RUMmBZjJ4cg2i+z3msIC8BGNUXulsoGG7IQLtpYoY
	m+K0K8cqsxqJiYH8uqW2Rhqi2e0Q6RRLO46JwdLS9vD/4F0rSF71w997G50mHRJb6+6xecF33era1
	RvZ0FCAC9foPhGl6MUxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyMjr-0002TM-5v; Thu, 15 Aug 2019 20:52:51 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyMjl-0002GF-Qq
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 20:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565902366; x=1597438366;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8se7hYgMAFALYw7S0G1SF2X+GC0ILIKEQTqZyETdzYU=;
 b=TB1QzysofZhkGELzmG7eEEJjdzfM56XsgpKInTPOcfWnnWU9vq/yMv2C
 UNS0yWKwgHNArf+L0K+8u3pdLIDpCoVrM3eD0h7MvogK5l5i4N6Qv+EJZ
 Nvw8g2uYtpff7QwiMHTTEAfts8q+wKLX7lELXzD53qjjjagsSQRA/qETP
 P/9SrukINmhUKEiZZ/BUpejnV60G9xN9rapMhfgvnllhRyZhlLcn5aFKM
 8n7dmLYOX7mF6kgUPz6lA08kd9yAgQ5BUsgQNsQRrnAXHcxWXyrii5rHn
 /nihXkPQW9gwboqW3f7mD2zedFRUwwnv28NqQp2Hr6AmZUP2w4RLaPZwW w==;
IronPort-SDR: FWY++dhnNkWOuhCnpo4DQMefhPAwS4tuVsTZJmVVLRVb8ZEvq+bNYui5x7FJRdyt4yc1XHQJQF
 jJm7dP9Lnw8QCpR4cp3JeHSRmWLgOgO55482DS3kzrx8hlFR6nTRFbtHIyL5HVyZUZGv1jfW/s
 dw+aznG+tIEUcHMxjGBYL7Nm3rWvFke2iVgKMS9NxCZFlDbMm3/zfOUPqGjWX8cW6IFzJJZBnj
 nYgxdZ+N8/CwUypmob/XlP7D4GcfOnWXg5RNKv0a9QuMTc3ETh9wPlWZCwOqGQgspS18DXc5Re
 YKo=
X-IronPort-AV: E=Sophos;i="5.64,389,1559491200"; d="scan'208";a="120537235"
Received: from mail-by2nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.52])
 by ob1.hgst.iphmx.com with ESMTP; 16 Aug 2019 04:52:46 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gpTGZhFucK9isaVQX9Xk9MU5RGTeBAEE7/7G+kfYQZUHSDlfxVuByE0UN5XuA6Tf6mYYO3/8XBC1wGZ4+9HcYI9+sHeqobzuMbanCtlpzLldvF/U9ujV2BM/YTBD4tcd7gCKVWIHpH7Y7pTBhKmkjVuI8bvzm7BnyuFV4uc6MZkdjogz/AC/0nfs+D5W7Qoi9i5Bd8qWk3HkS2y9a7KltIgd88anBJ9Wvm2bf5Go7SpUsCoKaaPw7DGroPMkYyrKsfZk0fecSrUfoiHzVBA+gKRkZlHpx8/uiF5atOMkRN5RfDos0U7ct8RJTCeldpurtIjLjLGBf88v5MLJOsvikw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8se7hYgMAFALYw7S0G1SF2X+GC0ILIKEQTqZyETdzYU=;
 b=MVBX9EFK4dm98pQk3gRp1UXRGXmIF6gLcSXJDwFb9JlX0vmZkMw7VRwJco04eT5oCi96oF1WaPgdrC4t3i1NCwJ/UjtwHY/eGACsCoD8C24fJJtLjawKHnpf0HijM7Jmwo2PFn0nS8yP5vqKIUl6lvH/0AQ5P3tFhOkZ43m78ZaQPZlc9bWECk/VCg17BwM3sQwJJr/roVhix2N6309/d0OrLN0mHI3jAx/sKeXoSoS398+pTcrnisCm7uJufE2wHumSYpkJtzNJmIsd0KaQ1bds3sPtb7Ra5BVzY+nyhv4r3hnhKdQxamlc0z0UXWHqv8ISI0FB4Siz0IAJpnuqWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8se7hYgMAFALYw7S0G1SF2X+GC0ILIKEQTqZyETdzYU=;
 b=z/e1JWJ7mML6slTrYSoPzzDfVGwGSFSgAV7vZVW7YZszerSFmVlMQ/xiTgLLdZdZKjozGMr8DnkrsAn3h0K8F0AMSmT/LdFtG6rqirYPz1f56yX/CQWRuQ/hxqYXcyA6R1DXqEUkUwc/GpIycmp0e+phnFtg8X/UvrEQzqsrAcg=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5878.namprd04.prod.outlook.com (20.179.59.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Thu, 15 Aug 2019 20:52:44 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9%6]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 20:52:44 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "schwab@suse.de" <schwab@suse.de>
Subject: Re: Random memory corruption with v5.2
Thread-Topic: Random memory corruption with v5.2
Thread-Index: AQHVRfuSsQxPefvVWkuKVI3774eLbabiNjEAgACFxKKAGg7XAA==
Date: Thu, 15 Aug 2019 20:52:43 +0000
Message-ID: <a47ede7577580987feb279d9879a994786a65d1a.camel@wdc.com>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
In-Reply-To: <mvm1ry8au3f.fsf@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f86a049-4c91-410a-7d36-08d721c2856a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5878; 
x-ms-traffictypediagnostic: BYAPR04MB5878:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB58788A88D8CE25BAB8B49B86FAAC0@BYAPR04MB5878.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(39860400002)(366004)(376002)(346002)(199004)(189003)(966005)(14444005)(256004)(71200400001)(25786009)(71190400001)(86362001)(6306002)(229853002)(6436002)(53546011)(6506007)(316002)(5660300002)(478600001)(110136005)(186003)(14454004)(6512007)(76116006)(66946007)(102836004)(66476007)(66556008)(64756008)(66446008)(6486002)(8936002)(26005)(8676002)(81156014)(81166006)(2906002)(36756003)(76176011)(3846002)(4326008)(66066001)(6116002)(118296001)(6246003)(53936002)(305945005)(7736002)(2501003)(2616005)(11346002)(99286004)(486006)(446003)(476003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5878;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PAXCZh/8QnIwO+ctV0R4y4T7m7ncUnf+dyI4v14LLFbl7xh4mhtYvf/oTBMJKkkAUT7zua9w45N0e4Ry5jamQmLcZZNzNZcRWvHUPS0R/DTqCoF6+vIHNH+i45uOCR/Imy8a0jLIJURl+3TJ1UWDbf+ZCPugj4Y+mpz94cp3WdwLU7go7Lf9Rkfl/YDCss+h6F9CS6WndY/Hd04T+8NkXZCyBcAEN8KaX2oFDytFM0eV5jYzi1Wq7NjynmRECQqwSfYvCmB0b7euX5ajFAheMP16Ax85JEdHVOyQyoY924HPtcsL6ijiJruGorQsKbM8a5Ki6i897E038Y7QH0HFiTO7BPzgLl2jO1IUmrxsAstfW8+DRdsOyefC2tidvH6XJeNF1/j9fS2kHXZ9zvbejcI0WzMai0ag5Kte6N6mEJ0=
x-ms-exchange-transport-forked: True
Content-ID: <E29ADB5549C2964AB8427CBE0314A0EC@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f86a049-4c91-410a-7d36-08d721c2856a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 20:52:44.0535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YRQ9v9KV8DMsObz8EEqNaMUeI7lw8oqa1JjIFUr/a/JUzgPSnZnLe2ObWfyX1IzfW9h1vwimPIn/e7c3W19ZGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_135246_012397_760AA56C 
X-CRM114-Status: GOOD (  15.36  )
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-07-30 at 08:56 +0200, Andreas Schwab wrote:
> On Jul 30 2019, David Abdurachmanov <david.abdurachmanov@gmail.com>
> wrote:
> 
> > On Mon, Jul 29, 2019 at 1:51 PM Andreas Schwab <schwab@suse.de>
> > wrote:
> > > Since switching to 5.2 kernels I'm seeing random crashes and
> > > misbehaviors on the HiFive, for example while building gcc or
> > > glibc.
> > > Perhaps missing TLB flushes?
> > 
> > Do you have some examples of crashes?
> 
> While building glibc:
> 
> an_ES.UTF-8...realloc(): invalid pointer
> /bin/sh: line 1:  7841 Aborted                 (core dumped)
> I18NPATH=. GCONV_PATH=/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/iconvdata LC_ALL=C /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/elf/ld-linux-riscv64-lp64d.so.1 --library-path
> /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/math:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/elf:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/dlfcn:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/nss:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/nis:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/rt:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/resolv:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/mathvec:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
> base/support:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nptl
> /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/locale/localedef
> $flags --alias-file=../intl/locale.alias -i locales/$input -f
> charmaps/$charset --prefix=/home/abuild/rpmbuild/BUILDROOT/glibc-
> 2.29-0.riscv64 $locale
> make[2]: *** [Makefile:422: install-archive-an_ES.UTF-8/UTF-8] Error
> 134
> 
> While building gcc:
> 
> ../../gcc/ada/exp_aggr.adb: In function
> 'Exp_Aggr.Expand_N_Aggregate':
> ../../gcc/ada/exp_aggr.adb:5311:21: warning: 'Csiz' may be used
> uninitialized in this function [-Wmaybe-uninitialized]
> ../../gcc/ada/exp_aggr.adb:5220:10: note: 'Csiz' was declared here
> +===========================GNAT BUG
> DETECTED==============================+
> > 10.0.0 20190727 (experimental) [trunk revision 273844] (riscv64-
> > suse-linux) |
> > Storage_Error stack overflow or erroneous memory
> > access                  |
> > Error detected at
> > output.ads:39:8                                        |
> realloc(): invalid pointer
> 
> raised PROGRAM_ERROR : unhandled signal
> make[3]: *** [../../gcc/ada/gcc-interface/Make-lang.in:140:
> ada/exp_ch3.o] Error 1
> 
> Andreas.
> 

Can you give it a try with following patch in OpenSBI & Kernel ?

Linux kernel:
http://lists.infradead.org/pipermail/linux-riscv/2019-August/005889.html

OpenSBI:
http://lists.infradead.org/pipermail/opensbi/2019-August/000386.html

In my testing, I no longer the stress-ng error or glibc local install
issue if I use following command.

sudo make -j8 localedata/install-locale-files
DESTDIR=/home/atish/glibc/build/install


I still see segmentation fault if I use a archieve locale install
command.

sudo make -j8 localedata/install-locales
DESTDIR=/home/atish/glibc/build/install

But the error dump doesn't contain remap() error. Just a segmentation
fault which may be due to userspace or just different version of old
tlbflush problem.


Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
