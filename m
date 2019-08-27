Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8463D9F428
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 22:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dB+zNOqwC189oXjfe42RiJbDgMjrTS7bY/x8td2XViI=; b=LRN/LTHBJZOAIS
	choWDsA+zKIS4tIAXB/6qoU0ytjdIwCVBRawCkeY/Jz13EIdHSB1iRlSkCKx4AYy1Ykb6diDTtDDy
	AXOHnu9lJSie+jAlnz0FYVuTjCyKZuXJd3xxn7sDRZK6IR3tH9/OlAKUGbwGoouDPsZuQnVCxReI9
	Rd5gUxyKzvSWLJxDhhDTOhHURj+aIafzyAQSc1dVV1hCrGqMXccsJnCC919gr2Sz/ea7PzNVRz0Vk
	aNhjUntpO4xKWpGqBBQPUBqX9HwSoRV05gQ+LIF7ONu4EGj8aXizITMPhoSk+cypLGiZJSlTgoO4A
	/sUkxq2dKEzEnAeB48QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2i7C-0001e6-7q; Tue, 27 Aug 2019 20:30:54 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2i76-0001dM-PH
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 20:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566937849; x=1598473849;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nDkkweA/CluQQKsuUKgthWjp6xAgm1jgzLjwiewzuBQ=;
 b=q3C7DNRMPvMw68QLDOWwnMKgy2bUust6dpCyclwnUp4lIkVuUjplLekm
 SA0usmoIeESwaRnl5Ido432to5VDJBTtiisLW9JNp5rLr+zc6d2DbVYN6
 Jxwh26RKJ5owV7rS7AszZjoqm5Mbau0u5ghaN5JMxqLui5XnAzybVV2O9
 A+QfkT+2slKa+MigiqKu68o/sppVbntV0RMS8//UWG2Mkgr31De/lzhtl
 bX+pGNF6L1kcRkI8Wa0WPlWk01nLiPjrWKXv9iNJj2j1d3p5O1JAfU3Pv
 WdheugTEhBHs/I/hbpfTZVy3Ia/0PlSy7hQETcuS9gq2S+prHVpzxsMmu Q==;
IronPort-SDR: bOL9WUcgEv9ETBwTtZznQLf/3UTJorR0gRD9UdpXKNfvopqtlFBLWkenqtihWJYZBz7O2KjwnU
 bA7EmHQkBc7OpB49s6iiDAJofzCp0Tg7cdl5YFC6IkGGp8ICN9jT1TbWNSZNAPdc1VT6msdYGG
 GW5RTFP6XfKCLGSvc7B+MPFn5fSylfp3nfrxjUwQo4SBDv9mkDpMcnzNUAZhJIqmlgbEJ2cSVJ
 2Ub0xVXBmzISSvGwgzt063UBx960S6wJTC9uPS2+aTWmMt4rexQoRI6A7oyFIhYWPhNZjmXiqJ
 0eg=
X-IronPort-AV: E=Sophos;i="5.64,438,1559491200"; d="scan'208";a="117716878"
Received: from mail-by2nam01lp2050.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.50])
 by ob1.hgst.iphmx.com with ESMTP; 28 Aug 2019 04:30:47 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lwJ7I2ZW164B1e3lw+dzI6NGUomBEZNVeNjJleQaNI5IQYaVYu7oexhkHxrHAlxPEmqYe+XzfedoOTObgq5w1dHtcvoqCMzSG1FwxcQ+bYqxDhC4lJVlW33/hgmKsaXd1kw9dt1kbnzNYSJgia71BtVmxwM7bq08dbGZmM/+JaQ6wg1eVyLMlvvMyTo95OjQsLi3QSdgSaneuVoTisP/36D9H3lVtyyjqQe/ZdHGJBxfDSCW8FGmXu0tONn2YeNUKJ9m+P201twGDImdsTlVZi/IhNhfu2FKug9NMgjCjRwqTtJfDVxqlG2Z7lRC/sBChWqt2nrPwZHSV3x/xt5gcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDkkweA/CluQQKsuUKgthWjp6xAgm1jgzLjwiewzuBQ=;
 b=DX5K7cg4fVI/3F0ySXmT9B8VOwLjE4SrCwJ971jwZIRnXpduP2LXayBvOuTW8ryGbZ048+N69D5IcWQ+f0vrcrFlpzFLcg/qKF/UJWm9A4VPkJGp6f/ECcwkWIUR4m+/2KyJTAGm+i4PRcwHpaNr8iQJne4CJkXZgLeABN6O466lge8Fs5ykn0akkVEVr4ep2v8rrOfoKXQTgoj1mjcDMgjf/Y2Ikqk2LDdeb39LxmJiCrimn8cts/vtoU1eHxYp6lV2pbmWLY7PpI0v8xx86gLPEqBEchOT0XvQ7VY8ew0yi+fUtMzlW565uFtmz5jjA1Sly0N2iAnB9XmsWoHH4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDkkweA/CluQQKsuUKgthWjp6xAgm1jgzLjwiewzuBQ=;
 b=LKx+Air6RJf0GuJ4wfKuLib8tpD5CjsvoEjBsEp8Beg015qeQUOlaj8PTn9BeZkV5a0dspQLEc7O2vhF3f9eufPBXu0rq4uX87u8a9z2MxQd7GgpaH3j0XXQYB1k4FVrHJGIZ/NDSTccogwFj4nhjHI2ZMNBuI9VkiBJmy5cE04=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4325.namprd04.prod.outlook.com (20.176.251.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 27 Aug 2019 20:30:45 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Tue, 27 Aug 2019
 20:30:45 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>, "rppt@linux.ibm.com"
 <rppt@linux.ibm.com>
Subject: Re: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
Thread-Topic: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
Thread-Index: AQHVXGawG+IpOh5bxU6Og3bOIuxxjKcOoaMAgAAG8YCAAARtgIAAxsyA
Date: Tue, 27 Aug 2019 20:30:45 +0000
Message-ID: <8e7eea1435c121d3cdbe484af85814583daaf547.camel@wdc.com>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-3-atish.patra@wdc.com>
 <20190827075831.GD682@rapoport-lnx>
 <CAAhSdy3gynEv1k84pghLY6+HcpBCiteUQUDbGn4_eEH_UFpbCA@mail.gmail.com>
 <20190827083913.GG682@rapoport-lnx>
In-Reply-To: <20190827083913.GG682@rapoport-lnx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2508fad8-bcbb-48e1-637a-08d72b2d7064
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4325; 
x-ms-traffictypediagnostic: BYAPR04MB4325:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB4325E63754CD71B036B2B074FAA00@BYAPR04MB4325.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39860400002)(346002)(376002)(366004)(396003)(199004)(189003)(476003)(6486002)(26005)(2501003)(256004)(6436002)(316002)(53546011)(2906002)(102836004)(14454004)(6506007)(110136005)(118296001)(229853002)(2616005)(305945005)(36756003)(14444005)(7416002)(8936002)(7736002)(186003)(86362001)(71200400001)(11346002)(478600001)(6246003)(30864003)(5660300002)(4326008)(54906003)(71190400001)(81156014)(99286004)(81166006)(53936002)(486006)(76176011)(6116002)(3846002)(64756008)(6512007)(76116006)(66556008)(6306002)(25786009)(66476007)(66066001)(966005)(8676002)(66946007)(66446008)(446003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4325;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jDbX7itBGw0VkHAynCiFjlMw0LAJU5cf/ux0/9YTMaU5blnDJ2g+W+ilulRGpAfBiXdlVcayfkH1Fq0Q7+8aK1foLOUs3EOAXMzyU/j6FlFG4vW47fPhUWRqbpP50Jc/pPy5bklzmolfcYYvbv9l+dZYpMxk0EMS+RZoJ1EjEcalIJHFs0n07VscltHDxbuO4IQTCrfwm2uuZxuGt4Zb8nL+eHsDwioV1a85eNj7S5CxQNYP/bt3AEEMW2pFvTrZota2db2Pdmw/vkAotMA6fLSNjhYAFnNbqQUk2ID2XdUFQySwHHKH/A1NfaN0JGrwDQZwX3bmpPGxMUmOSuDobjFmZNvXsOYLpeCCNlD8n0s/qoTYpOg+gzSudKQfkqyhK4Gzpj1yjZqqc5WGQyCAAlhBfgHUONWr4D22JCnGkk8=
x-ms-exchange-transport-forked: True
Content-ID: <1A0331106228B4409F35AD5A2E3645AA@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2508fad8-bcbb-48e1-637a-08d72b2d7064
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 20:30:45.4684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 62TbxDawBfFJ6/UnVswSJxh7ln1R1pJCl3rkXH2FGahsmSqtOiRQA1X3dRDHW+JBuA2SiXayIW0SCNHBPwwQmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4325
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_133049_031067_B5C761AE 
X-CRM114-Status: GOOD (  27.31  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 11:39 +0300, Mike Rapoport wrote:
> On Tue, Aug 27, 2019 at 01:53:23PM +0530, Anup Patel wrote:
> > On Tue, Aug 27, 2019 at 1:28 PM Mike Rapoport <rppt@linux.ibm.com>
> > wrote:
> > > On Mon, Aug 26, 2019 at 04:32:56PM -0700, Atish Patra wrote:
> > > > The SBI v0.2 introduces a base extension which is backward
> > > > compatible
> > > > with v0.1. Implement all helper functions and minimum required
> > > > SBI
> > > > calls from v0.2 for now. All other base extension function will
> > > > be
> > > > added later as per need.
> > > > 
> > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > > ---
> > > >  arch/riscv/include/asm/sbi.h | 68
> > > > +++++++++++++++++++++++++++++-------
> > > >  arch/riscv/kernel/Makefile   |  1 +
> > > >  arch/riscv/kernel/sbi.c      | 50 ++++++++++++++++++++++++++
> > > >  arch/riscv/kernel/setup.c    |  2 ++
> > > >  4 files changed, 108 insertions(+), 13 deletions(-)
> > > >  create mode 100644 arch/riscv/kernel/sbi.c
> > > > 
> > > > diff --git a/arch/riscv/include/asm/sbi.h
> > > > b/arch/riscv/include/asm/sbi.h
> > > > index 7f5ecaaaa0d7..4a4476956693 100644
> > > > --- a/arch/riscv/include/asm/sbi.h
> > > > +++ b/arch/riscv/include/asm/sbi.h
> > > > @@ -8,7 +8,6 @@
> > > > 
> > > >  #include <linux/types.h>
> > > > 
> > > > -
> > > >  #define SBI_EXT_LEGACY_SET_TIMER 0x0
> > > >  #define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
> > > >  #define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> > > > @@ -19,28 +18,61 @@
> > > >  #define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
> > > >  #define SBI_EXT_LEGACY_SHUTDOWN 0x8
> > > > 
> > > > -#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> > > > ({             \
> > > > +#define SBI_EXT_BASE 0x10
> > > > +
> > > > +enum sbi_ext_base_fid {
> > > > +     SBI_EXT_BASE_GET_SPEC_VERSION = 0,
> > > > +     SBI_EXT_BASE_GET_IMP_ID,
> > > > +     SBI_EXT_BASE_GET_IMP_VERSION,
> > > > +     SBI_EXT_BASE_PROBE_EXT,
> > > > +     SBI_EXT_BASE_GET_MVENDORID,
> > > > +     SBI_EXT_BASE_GET_MARCHID,
> > > > +     SBI_EXT_BASE_GET_MIMPID,
> > > > +};
> > > > +
> > > > +#define SBI_CALL_LEGACY(ext, fid, arg0, arg1, arg2, arg3) ({ \
> > > >       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
> > > >       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
> > > >       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> > > >       register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);   \
> > > > -     register uintptr_t a7 asm ("a7") = (uintptr_t)(which);  \
> > > > +     register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);    \
> > > > +     register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);    \
> > > >       asm volatile ("ecall"                                   \
> > > > -                   : "+r" (a0)                               \
> > > > -                   : "r" (a1), "r" (a2), "r" (a3), "r" (a7)  \
> > > > +                   : "+r" (a0), "+r" (a1)                    \
> > > > +                   : "r" (a2), "r" (a3), "r" (a6), "r" (a7) \
> > > 
> > > Maybe I'm missing something, but how is this supposed to work on
> > > systems
> > > with SBI v0.1? Wouldn't this cause a mismatch in the registers?
> > 
> > The SBI v0.2 has two major changes:
> > 1. New improved calling convention which is backward compatible
> > with SBI v0.1 so older kernels with SBI v0.1 will continue to work
> > as-is.
> > 2. Base set of mandatory SBI v0.2 calls which can be used to detect
> > SBI version, check supported SBI calls and extentions.
> > 
> > Old calling convention in SBI v0.1 was:
> > Parameters:
> > a0 -> arg0
> > a1 -> arg1
> > a2 -> arg2
> > a3 -> arg3
> > a7 -> function_id
> > Return:
> > a0 -> return value or error code
> > 
> > In SBI v0.2, we have extension and function. Each SBI extension
> > is a set of function. The new calling convention in SBI v0.2 is:
> > Parameters:
> > a0 -> arg0
> > a1 -> arg1
> > a2 -> arg2
> > a3 -> arg3
> > a6 -> function_id
> > a7 -> extension_id
> > Return:
> > a0 -> error code
> > a1 -> return value (optional)
> 
> So with this patch SBI_CALL_LEGACY() uses SBI v0.2 convention, right?
> Doesn't it mean that you cannot run a new kernel on a system with SBI
> v0.1?
>  

Thanks Anup for the earlier explaination.
I have used SBI v0.2 convention for legacy calls as well to keep both
in sync and more redable. I just set a6 to zero and do not use a1 as a
return value.

With this, both SBI implementation & kernel are backward compatible in
both ways. Any newer kernels using SBI calls defined in 0.2 or later
will use new convention(SBI_CALL_*) and older SBI calls will continue
to will continue to use SBI_CALL_LEGACY*.

I thought this is more readable but probably it is not. I will preserve
the legacy convention and use different calling conventions based on
the firmware version.

> > All legacy SBI v0.1 functions can be thought of as separate
> > extensions. That's how SBI v0.2 will be backward compatible.
> > 
> > Regards,
> > Anup
> > 
> > > >                     : "memory");                              \
> > > >       a0;                                                     \
> > > >  })
> > > > 
> > > >  /* Lazy implementations until SBI is finalized */
> > > > -#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0,
> > > > 0, 0)
> > > > -#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which,
> > > > arg0, 0, 0, 0)
> > > > -#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> > > > -             SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> > > > -#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> > > > -             SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> > > > -#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> > > > -             SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> > > > +#define SBI_CALL_LEGACY_0(ext) SBI_CALL_LEGACY(ext, 0, 0, 0,
> > > > 0, 0)
> > > > +#define SBI_CALL_LEGACY_1(ext, arg0) SBI_CALL_LEGACY(ext, 0,
> > > > arg0, 0, 0, 0)
> > > > +#define SBI_CALL_LEGACY_2(ext, arg0, arg1) \
> > > > +             SBI_CALL_LEGACY(ext, 0, arg0, arg1, 0, 0)
> > > > +#define SBI_CALL_LEGACY_3(ext, arg0, arg1, arg2) \
> > > > +             SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, 0)
> > > > +#define SBI_CALL_LEGACY_4(ext, arg0, arg1, arg2, arg3) \
> > > > +             SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, arg3)
> > > > +
> > > > +extern unsigned long sbi_firmware_version;
> > > > +struct sbiret {
> > > > +     long error;
> > > > +     long value;
> > > > +};
> > > > +
> > > > +void riscv_sbi_init(void);
> > > > +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int
> > > > arg1,
> > > > +                            int arg2, int arg3);
> > > > +
> > > > +#define SBI_CALL_0(ext, fid) riscv_sbi_ecall(ext, fid, 0, 0,
> > > > 0, 0)
> > > > +#define SBI_CALL_1(ext, fid, arg0) riscv_sbi_ecall(ext, fid,
> > > > arg0, 0, 0, 0)
> > > > +#define SBI_CALL_2(ext, fid, arg0, arg1) \
> > > > +             riscv_sbi_ecall(ext, fid, arg0, arg1, 0, 0)
> > > > +#define SBI_CALL_3(ext, fid, arg0, arg1, arg2) \
> > > > +             riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, 0)
> > > > +#define SBI_CALL_4(ext, fid, arg0, arg1, arg2, arg3) \
> > > > +             riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, arg3)
> > > > +
> > > > 
> > > >  static inline void sbi_console_putchar(int ch)
> > > >  {
> > > > @@ -99,4 +131,14 @@ static inline void
> > > > sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> > > >                         start, size, asid);
> > > >  }
> > > > 
> > > > +static inline unsigned long riscv_sbi_major_version(void)
> > > > +{
> > > > +     return (sbi_firmware_version >> 24) & 0x7f;
> > > > +}
> > > > +
> > > > +static inline unsigned long riscv_sbi_minor_version(void)
> > > > +{
> > > > +     return sbi_firmware_version & 0xffffff;
> > > > +}
> > > > +
> > > >  #endif
> > > > diff --git a/arch/riscv/kernel/Makefile
> > > > b/arch/riscv/kernel/Makefile
> > > > index 2420d37d96de..faf862d26924 100644
> > > > --- a/arch/riscv/kernel/Makefile
> > > > +++ b/arch/riscv/kernel/Makefile
> > > > @@ -17,6 +17,7 @@ obj-y       += irq.o
> > > >  obj-y        += process.o
> > > >  obj-y        += ptrace.o
> > > >  obj-y        += reset.o
> > > > +obj-y        += sbi.o
> > > >  obj-y        += setup.o
> > > >  obj-y        += signal.o
> > > >  obj-y        += syscall_table.o
> > > > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > > > new file mode 100644
> > > > index 000000000000..457b8cc0e9d9
> > > > --- /dev/null
> > > > +++ b/arch/riscv/kernel/sbi.c
> > > > @@ -0,0 +1,50 @@
> > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > +/*
> > > > + * SBI initialilization and base extension implementation.
> > > > + *
> > > > + * Copyright (c) 2019 Western Digital Corporation or its
> > > > affiliates.
> > > > + */
> > > > +
> > > > +#include <asm/sbi.h>
> > > > +#include <linux/sched.h>
> > > > +
> > > > +unsigned long sbi_firmware_version;
> > > > +
> > > > +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int
> > > > arg1,
> > > > +                          int arg2, int arg3)
> > > > +{
> > > > +     struct sbiret ret;
> > > > +
> > > > +     register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
> > > > +     register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
> > > > +     register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
> > > > +     register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
> > > > +     register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
> > > > +     register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
> > > > +     asm volatile ("ecall"
> > > > +                   : "+r" (a0), "+r" (a1)
> > > > +                   : "r" (a2), "r" (a3), "r" (a6), "r" (a7)
> > > > +                   : "memory");
> > > > +     ret.error = a0;
> > > > +     ret.value = a1;
> > > > +
> > > > +     return ret;
> > > > +}
> > > > +
> > > > +static struct sbiret sbi_get_spec_version(void)
> > > > +{
> > > > +     return SBI_CALL_0(SBI_EXT_BASE,
> > > > SBI_EXT_BASE_GET_SPEC_VERSION);
> > > > +}
> > > > +
> > > > +void riscv_sbi_init(void)
> > > > +{
> > > > +     struct sbiret ret;
> > > > +
> > > > +     /* legacy SBI version*/
> > > > +     sbi_firmware_version = 0x1;
> > > > +     ret = sbi_get_spec_version();
> > > > +     if (!ret.error)
> > > > +             sbi_firmware_version = ret.value;
> > > > +     pr_info("SBI version implemented in firmware
> > > > [%lu:%lu]\n",
> > > > +             riscv_sbi_major_version(),
> > > > riscv_sbi_minor_version());
> > > > +}
> > > > diff --git a/arch/riscv/kernel/setup.c
> > > > b/arch/riscv/kernel/setup.c
> > > > index a990a6cb184f..4c324fd398c8 100644
> > > > --- a/arch/riscv/kernel/setup.c
> > > > +++ b/arch/riscv/kernel/setup.c
> > > > @@ -21,6 +21,7 @@
> > > >  #include <asm/sections.h>
> > > >  #include <asm/pgtable.h>
> > > >  #include <asm/smp.h>
> > > > +#include <asm/sbi.h>
> > > >  #include <asm/tlbflush.h>
> > > >  #include <asm/thread_info.h>
> > > > 
> > > > @@ -70,6 +71,7 @@ void __init setup_arch(char **cmdline_p)
> > > >       swiotlb_init(1);
> > > >  #endif
> > > > 
> > > > +     riscv_sbi_init();
> > > >  #ifdef CONFIG_SMP
> > > >       setup_smp();
> > > >  #endif
> > > > --
> > > > 2.21.0
> > > > 
> > > > 
> > > > _______________________________________________
> > > > linux-riscv mailing list
> > > > linux-riscv@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/linux-riscv
> > > 
> > > --
> > > Sincerely yours,
> > > Mike.
> > > 

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
