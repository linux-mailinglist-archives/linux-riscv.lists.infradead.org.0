Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FAD8F5D5
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 22:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZTUQLwhtuHnkSU0UuskhktqOiDJtLEUenYZdpcNOKA=; b=SqenFIH54mK+Y6
	i0YhL+0FYYmcdEsCvyBboy1gVJ6L8CzDb7PwcYbrwrNMQMxGCTVM75ggfPJ/U+JKH6sv7YoNSwVdC
	VVs0SHLYH3UkhnrUniYgFc8cx5C1UnzvCfnq0Th35jaUWneVKp4Cd3HhNDRIpo6bnY39ULBkKtar4
	JV9EdaYXlayZxLcrUDRo4QhfN0fHi+EP/BT3xuk+2NDgixYtDhDKTd5zgOXMCu25WC7xfHEhAl011
	B1FqWPDlM6xY8efhPKBCXveR4cEDiDMevt/br4E5/GAy6PNHrYXePO2g+W1qlXgrVAEBPB0xnS4kC
	9/Mr47XTsNZU92QAA+7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyMUj-0005zI-QH; Thu, 15 Aug 2019 20:37:13 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyMUe-0005yK-QI
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 20:37:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565901429; x=1597437429;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=O+MzaVa3dUEUP3AwnyiPb55qAsw5XchBeqI8a9bshRg=;
 b=p0gtI+nTCcizPrI+eBKKJnRXho5xfNKhsZ9mdm7kWuK2uqer1IAIDQYf
 FbjPboxcxOhxOI8WNJq9DocP38eNSJ/5qsXzsjiSLqRxZMBNP5PJErKWN
 YgZjjAcbRykENIFE1EaZi/Z5gJ0sfcLZE6BfldCItXz/1e+SEMUF1CVrn
 7NxYjD5fpwbcHb6V8S8CdZQdq82irpuRvoFi3Qy+l0sNokG4+vSsIM7Ve
 jWKtV3bK7jTzIYeS6DRIw6Ho0o7gatD3qg/EWAoBQaolvyI0wDl2W2Gzu
 Ut8Y/nTimVJCLPBHnr/Pfjsq9t1phOUa8fcYt7HhIPnI8TmgFAaC+FKxo w==;
IronPort-SDR: gkxHrAO5dYNII5CtAkwSGc2X9ax57zqSuJvXzJ0A+8u0ST/AH9jsoJtW7hwYP2A68Ou/B75Ggd
 muTfxremkifNk712UjhMhaIcNuMIF5v1XQlar4VWpCVwm+O2pY8E92sQVrduI1mKwAvNHCIlvN
 UKVit8L+A7T1rAD/0gJy9xFykv8w757vOVyybvkKdIsDX4CYuWhD6CNi5S9iGFawdCK+thMiGY
 OXyPl1pfP2RJa3sNM6mhzdrEl3X13erM9J/VncYE8DKMyGjk6GHYr4UEeI9niJtKAF8lFoakHC
 xIE=
X-IronPort-AV: E=Sophos;i="5.64,389,1559491200"; d="scan'208";a="120536498"
Received: from mail-sn1nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.56])
 by ob1.hgst.iphmx.com with ESMTP; 16 Aug 2019 04:37:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cjh0iNvGkDjTFbFecyvOij8rd6YgQgxXJMnDOfHvCpOg7rP1iFL4NCnPIQq+CgBzirm4UmkbystWefxm9eB7VPgQVoUfclkXHuhi/IWFAS9jRH7ZrIIDuUPvrOlgMCaZnHXDEu/XOyO9BfPTacsjC6TiEqswNrKdu+4Iat3rUEQgX9YbPO8rT2zzxWeOG+I4YxxiGwx0yyHqPsvK2okMKONHPbrS9AkLpiB4pIQcTmTss0nNt8w6Ny/SdVJHW5ADNm9iX8/s0w+usYCl/z8E59lrSlgpkq3hrnuQQvUvxEuU3bW6VQm5fyS3IHVqSL34pDi/JJa1at7FYHEPaNOYMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+MzaVa3dUEUP3AwnyiPb55qAsw5XchBeqI8a9bshRg=;
 b=XuB5beYfsNjzG4XQpCq2Chiy2OFaMZCzppNhM8fTZhfZ6qHgiPaVY7zjWvBMWzXBbU+HTiA9Ajvi62kcghiTVCdodyPDuL0wCz91hXYjfQo8pXxFnV1MnzymB4Iln/BxRGF06lSy9Mqi25N0ccbxijrX26mBElrDRnfy5+RaFxlKU8OAB6oiPno4QMciSp5DSjUbhnONlU/eINzulV8hhTywt6F2U1Yb2Shw0gUJJcFt0sR2oPfLI10XaobwVTz4tBs7cWUOay8CtKdnHoxhdRVUfjtkBhD02ALG72rbdbh4KbVZzurvImuuT425Q35AH0hFbaAZY54IRkeI0DkVfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+MzaVa3dUEUP3AwnyiPb55qAsw5XchBeqI8a9bshRg=;
 b=YDYl/kqljC1PQGdCfN2FPJdPaAxj0mUe2CSminWXlKCvOKr72HhN8xKCMjuIHdKSK/VYuGrwAilSnL6Jx6I/w4jeGSXaME+w5NlFP+2LUYGWi+BZrhYZ8NH2NXuUe7uHO0EqIQot7Du0zH3akFea2/lN129w0/AOB2hvlp/kUHY=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5478.namprd04.prod.outlook.com (20.178.197.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Thu, 15 Aug 2019 20:37:05 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9%6]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 20:37:04 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Topic: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Index: AQHVTxz5XkoGRRVrekixM0/zCIcSeKb3ngaAgACcGwCAAO7ygIADixaA
Date: Thu, 15 Aug 2019 20:37:04 +0000
Message-ID: <3f55d5878044129a3cbb72b13b712e9a1c218dc7.camel@wdc.com>
References: <20190810014309.20838-1-atish.patra@wdc.com>
 <20190812145631.GC26897@infradead.org>
 <f58814e156b918531f058acfac944abef34f5fb1.camel@wdc.com>
 <20190813143027.GA31668@infradead.org>
In-Reply-To: <20190813143027.GA31668@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4336747-6038-4a49-ea27-08d721c0557d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5478; 
x-ms-traffictypediagnostic: BYAPR04MB5478:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB54788A8CD828EBA435C0695DFAAC0@BYAPR04MB5478.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(396003)(136003)(346002)(39860400002)(189003)(199004)(7736002)(6512007)(71200400001)(476003)(66556008)(66946007)(305945005)(2906002)(316002)(186003)(86362001)(66446008)(76116006)(99286004)(229853002)(446003)(11346002)(53936002)(66476007)(2616005)(71190400001)(5640700003)(2351001)(118296001)(64756008)(6486002)(6436002)(81166006)(66066001)(6506007)(81156014)(14454004)(36756003)(486006)(5660300002)(256004)(478600001)(1730700003)(4326008)(26005)(6246003)(3846002)(8936002)(2501003)(6116002)(54906003)(25786009)(102836004)(6916009)(76176011)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5478;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SAYV6uu07GIc23VnkwZR8otX4ntpFrYKhIoxG7aKGOe0ZWjs/SgoVpJTbeKAHyr3jv6XpxcZpB0JZ9ubVDiPCK3sdorxor2vaUw+x1UhaIzpO03KyV9Upz4QWpA2ge3eE72Z6f0TddmsP0lMMqXCChtbF6KP88RA6yhYCe4O0RKhdOOIc99fYz0zqPwf6Pn/Tst6CstP8md8gTP6vyoxX2xhy0Ck5GzbfhA+e90Sd0myIxwf8SedF+7q2d9Er9I5d/0XqvO5hz2lmBxs3PKDzSTgfZeULTFqMMWUGIUOqe5kkfqnOVs0Oiz5FKhpFn/VvWc/CEigoxYLB3CdE2AWLRwgot+Lg7UsZRTPCBi8b+Ef9kCJ3jles2KrrZnrMl7yprwxFSDl0SVANDfSHKxyEh7AeuH+WTI7srlp3aFBilA=
Content-ID: <9E58DB51E878DB49B49FA5E3D5869C2E@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4336747-6038-4a49-ea27-08d721c0557d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 20:37:04.5688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cP9q6IQJA/kKaWi/JbCpjgxVlYJgJkKwW11o/HJeqXfAZ75Fh5hei5It9hg8GD1NFyVWszr+5eOohDwmNbpVqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_133708_970677_23CEB9E7 
X-CRM114-Status: GOOD (  21.23  )
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-13 at 07:30 -0700, hch@infradead.org wrote:
> On Tue, Aug 13, 2019 at 12:15:15AM +0000, Atish Patra wrote:
> > I thought if it recieves an empty cpumask, then it should at least
> > do a
> > local flush is the expected behavior. Are you saying that we should
> > just skip all and return ? 
> 
> How could we ever receive an empty cpu mask?  I think it could only
> be empty without the current cpu.  At least that is my reading of
> the callers and a few other implementations.
> 

We get ton of them. Here is the stack dump.

[   16.735814] [<ffffffe000035498>] walk_stackframe+0x0/0xa0^M
298436 [   16.819037] [<ffffffe0000355f8>] show_stack+0x2a/0x34^M
298437 [   16.899648] [<ffffffe00067b54c>] dump_stack+0x62/0x7c^M
298438 [   16.977402] [<ffffffe0000ef6f6>] tlb_flush_mmu+0x14a/0x150^M
298439 [   17.054197] [<ffffffe0000ef7a4>] tlb_finish_mmu+0x42/0x72^M
298440 [   17.129986] [<ffffffe0000ede7c>] exit_mmap+0x8e/0xfa^M
298441 [   17.203669] [<ffffffe000037d54>] mmput.part.3+0x1a/0xc4^M
298442 [   17.275985] [<ffffffe000037e1e>] mmput+0x20/0x28^M
298443 [   17.345248] [<ffffffe0001143c2>] flush_old_exec+0x418/0x5f8^M
298444 [   17.415370] [<ffffffe000158408>]
load_elf_binary+0x262/0xc84^M
298445 [   17.483641] [<ffffffe000114614>]
search_binary_handler.part.7+0x72/0x172^M
298446 [   17.552078] [<ffffffe000114bb2>]
__do_execve_file+0x40c/0x56a^M
298447 [   17.617932] [<ffffffe00011503e>] sys_execve+0x26/0x32^M
298448 [   17.682164] [<ffffffe00003437e>] ret_from_syscall+0x0/0xe^M

It looks like it is in the path of clearing the old traces of already
run script or program.  I am not sure if the cpumask supposed to be
empty in this path.

Probably we should just issue tlb flush all for all CPUs instead of
just the local CPU.

> > > 	if (!cpumask || cpumask_test_cpu(cpu, cpumask) {
> > > 		if ((start == 0 && size == -1) || size > PAGE_SIZE)
> > > 			local_flush_tlb_all();
> > > 		else if (size == PAGE_SIZE)
> > > 			local_flush_tlb_page(start);
> > > 		cpumask_clear_cpu(cpuid, cpumask);
> > 
> > This will modify the original cpumask which is not correct. clear
> > part
> > has to be done on hmask to avoid a copy.
> 
> Indeed.  But looking at the x86 tlbflush implementation it seems like
> we
> could use cpumask_any_but() to avoid having to modify the passed in
> cpumask.

Looking at the x86 code, it uses cpumask_any_but to just test if there
any other cpu present apart from the current one.

If yes, it calls smp_call_function_many which ignores the current cpu
and execute tlb flush code on all other cpus.

For RISC-V, it has to still send the cpumask containing local cpu and
M-mode software may do a local tlb flush the tlbs again for no reason.


Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
