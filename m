Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0734415FC63
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 03:41:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=sdIqdFhjaGjek7tTtSFwyIV7JF0KNsz5AE187jXYOyc=; b=lCTQU5Q8x36l8VMaReXr0v8Bi
	Au2YlY1DDHME3CfOJfWu1MmI/qQ55a0jIvlrSFwlu0cC8WKuF7vC5gNcdKPdPWzAW3nYU8IRr3ya1
	QzGzvDswXsZfScS5Ypp7o05O9lCE/lpUW1sgdLVj/c4O9jo2EwWh3E348oe6dOn92QzxPIpRIfnZM
	SzDTEkv4lNcaTax0T5q8P0NkgDps9bU1XAcg4AqYmeN55m67zvo5L7dY3CG1WCOGUtvVh9H/bMKbn
	mV0DUduKu4hd/hRn2VDH1sOaSIJlhC0uMeci1nQD3rriLDf7mMnk9PJuAaqqm5bD58DjzfGrZvNzr
	CbeUo3OfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2nOF-0004Y6-Fx; Sat, 15 Feb 2020 02:41:07 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2nOC-0004Xj-50
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 02:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581734463; x=1613270463;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=8gYm7cLAW7qT2o2r2AaLoSyCXzdsf6289wvNg+ErOwQ=;
 b=fz1O+63QCyR0qm7LK17BjJ4j43kI8ZuRi92zivejBp+z+/cYjHVhmqOL
 cBnWlXet6UGpNvmayocRL2EwlIYUh+izVMxvdxY34X5AqJrAW43Refhug
 k8qnLiMBEu7GBsddPwCcECqg2ZFn9Sg1gj5oigQWKLjzsfFtcTWKv2Mt4
 EFDFXMVkfFItaJi88JSnFlOfZzR9gQtrGWAqpsv0josqmuCUqoVVYyjjG
 zGVFhZf2mzoDYAvbJclLKOQJLVqz7tVwvmw8O8vsriPmxDV4Lj1Zwtxv2
 OPLodwRuePIOL5Gkd1bvJ8Qj6naP02w+hrT1ipr5FG5x4qeKQLg8lrxxX g==;
IronPort-SDR: wEZ0U33aIxcs1Iz8VItkzpTxTttGQrw5z9rkZHLknhEMt2JmHgemVID9DAMDymJsB31EPLIjfD
 3LC96ywrOX2CnRPopzBz/RH8roERHf78tns7gpajyX/T9VVBaZaZoAsV3DslGEzwKjCUNegQM/
 uQ6IeDAFNgFD5tnjGInWgd6WneNCdKN7Fai93av8+IA6kKCdmwdfg7Q/sn5SUfSqw48iBngGOR
 74kNX3E+UeCJzL3QyaykA3QN4+wRCmOn2kR/spRRI+sAQtKd+9ZFMmwJdUwL8ah+fgdhPY5+rN
 jB8=
X-IronPort-AV: E=Sophos;i="5.70,442,1574092800"; d="scan'208";a="129908543"
Received: from mail-bn3nam04lp2051.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.51])
 by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2020 10:41:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n3um2dqDAWASfCCJl481NZ8ww75srcGaDRj1+moqbrDLxGL1gHV57wtP9db6TdFHee7f7IIJDSqaCT2LmAPr70WR82OTBXQtzSkCGojlwmhIOKQG0F+1kprEcii0k2IJc1P5SnK+8veF0RgwiJFn+A+MHSiTBw3t0ZaZlsckQcgXwtBVuyASZWLnh8+I7ZaVAteGJzKrSbdx7DZIyInVaK3Zb43OJaxmUNHHBsw2AWLpfS5TpFJdWODPdc9WdZQFlA7TZnh6VzfqFC6rlWeefpM6DIeQq+Ao6TQHIKKim73VQZlYwylrwF9IZRFax6F1M+RYVGBt0rUvJjQ777sNYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sdIqdFhjaGjek7tTtSFwyIV7JF0KNsz5AE187jXYOyc=;
 b=eh2pCxG4b8xy7rvMdW80mvXOjfSggX80JaTkBKlBUxvEC3yt0AGItjxmJLjh6G8POFYOCHWng0eG6z76SGHi9ZVDs4RfF6kR6b1wxTptKR7jGDQB0ZGiNoei0MZgDcoJw50HXEbopHuc6li2XNdekZQA7C3GjRx1UUNVwibzw5LRx3O2tFiW/wNxqkSb98vV6CMrGjouUXSx4WjWdJMIcu611eDnE8WOWyD6/zgxbuPZ9PKVLEdFaVO+ppvRJalDRcHF8qW8xEh18AME/uP9a2shDwyMJQ/OCT5vccYv9hFA91BgI7loatgp5BCI0GvyUg0RkRSCJoAFHhcJelQn/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sdIqdFhjaGjek7tTtSFwyIV7JF0KNsz5AE187jXYOyc=;
 b=ZZp3/xx/zEymw0KWrTJyPnaqQsJ2YIiLG7WGjLKx5wKufLOpT0qP9njuGAceQgr5kZET060K97NSdDlYU1ret6TUj4M4B3bRyzLIu4Sn+hFKzf3G6hqCRGr6dI7JMvVHzJ4WVzUhoFQWF6Dv2zT5TG/0yR5bA8DwYi9wviDm1Hw=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB3877.namprd04.prod.outlook.com (52.135.214.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Sat, 15 Feb 2020 02:41:00 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61%5]) with mapi id 15.20.2707.031; Sat, 15 Feb 2020
 02:41:00 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 02/10] riscv: Force flat memory model with no-mmu
Thread-Topic: [PATCH 02/10] riscv: Force flat memory model with no-mmu
Thread-Index: AQHV43PjnjkcjlPPqU6LQC7Weju/tQ==
Date: Sat, 15 Feb 2020 02:40:59 +0000
Message-ID: <BYAPR04MB5816D6AB39649A563BC96F2FE7140@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-3-damien.lemoal@wdc.com>
 <05106cc4-3d79-7288-cd1f-0c996e5b1657@gmail.com>
 <BYAPR04MB58169D9654E97130A3CFD9BAE7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <cb38129d-ceb8-4eb0-6bbb-a9c825478410@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 820c0ea8-e48f-4332-dc10-08d7b1c07dea
x-ms-traffictypediagnostic: BYAPR04MB3877:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB3877BE0F4C399BA66A586152E7140@BYAPR04MB3877.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03142412E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39860400002)(366004)(346002)(396003)(376002)(189003)(199004)(52536014)(186003)(53546011)(2906002)(26005)(86362001)(55016002)(6506007)(4326008)(110136005)(33656002)(54906003)(316002)(66946007)(76116006)(9686003)(66446008)(66476007)(66556008)(64756008)(7696005)(8676002)(71200400001)(5660300002)(8936002)(81156014)(81166006)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3877;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oTjZYpiHZH/R84DV2fHf+2R0jbtZ1KvrWgw5v4hT7eKvOItulgzQZO6znGPvLOuV5f7hvGwt8xyFX/lR8nSseGWSMDhdWiAy3dJYYtR0aGWjBM8hOW3xbPuhHWS4JFIZGOCqhU0nvM3UqpoxQU2+OvvvQAJrXg4SHpFhvdwjHjkNnvT4hnUYLT4VU7pVBge+JgxB6gjM5F8rSZ9aRPFGZenYcOXpyW+CpA1L3XVC7bxqdLhZyD9T9FbzfH8srXkbuFlMpH1WOQAogBVPlET2T+bRsRaop5gZJpEmNBX5yol6cAu2xevv45w+7cHw3bqvDzDdLlYT4i7hjr6P4C/A2p9tOvbpFeekp0GZgDJ5F3+bHwKN7IbCz+YcD0y1Q5ib6sUbNUi1Cqym6uMXfLuGIteVxqaULZBUyedMRhSmj9IMux6cMvC2KZCZzUz2QGks
x-ms-exchange-antispam-messagedata: pXTEY8KxD8fLnEkfFIdZMVelk+r5k0ym4H5YAxDyqDI2VvpngnSHqVIGJeH07CAcOre5n3ki7cAt3kET6QO89saq0Ux6oQG2jhNZudkSmENh8fsrzl5lvf/brvMy2mNbFkdMGKx6rxYjb/HsFzBNIg==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 820c0ea8-e48f-4332-dc10-08d7b1c07dea
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2020 02:40:59.9266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ylLVHU7SUyaXUGmaO5C5M1+DpVFSjgVmE1jr510EAD2jsu9EtIlm+1gNB8aUPiIQsDClxNJJ73+CIOBaWaXHsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3877
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_184104_295060_0E16D5F0 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/02/15 11:26, Sean Anderson wrote:=0A=
> On 2/14/20 9:15 PM, Damien Le Moal wrote:=0A=
>> On 2020/02/15 5:18, Sean Anderson wrote:=0A=
>>> Hi,=0A=
>>>=0A=
>>> On 2/12/20 5:34 AM, Damien Le Moal wrote:=0A=
>>>> Compilation errors trigger if ARCH_SPARSEMEM_ENABLE is enabled for=0A=
>>>> a nommu kernel. Since the sparsemem model does not make sense anyway=
=0A=
>>>> for the nommu case, do not allow selecting this option to always use=
=0A=
>>>> the flatmem model.=0A=
>>>>=0A=
>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>>> ---=0A=
>>>>  arch/riscv/Kconfig | 1 +=0A=
>>>>  1 file changed, 1 insertion(+)=0A=
>>>>=0A=
>>>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig=0A=
>>>> index 73f029eae0cc..1a3b5a5276be 100644=0A=
>>>> --- a/arch/riscv/Kconfig=0A=
>>>> +++ b/arch/riscv/Kconfig=0A=
>>>> @@ -121,6 +121,7 @@ config ARCH_FLATMEM_ENABLE=0A=
>>>>  =0A=
>>>>  config ARCH_SPARSEMEM_ENABLE=0A=
>>>>  	def_bool y=0A=
>>>> +	depends on MMU=0A=
>>>>  	select SPARSEMEM_VMEMMAP_ENABLE=0A=
>>>>  =0A=
>>>>  config ARCH_SELECT_MEMORY_MODEL=0A=
>>>>=0A=
>>>=0A=
>>> Just for some background, why did you choose NOMMU? Afaik the K210 has=
=0A=
>>> an MMU following the RISC-V privileged specification 1.9=0A=
>>=0A=
>> Our early experiments with the k210 with opensbi revealed that the mmu i=
s=0A=
>> definitely not a normal one or that it is not functional (e.g. S-mode fa=
ult=0A=
>> delegation bit setup leads to a hang). So at the time, we started assumi=
ng=0A=
>> that this is a nommu platform.=0A=
>>=0A=
>> Since then, others also mentioned that there is in fact an MMU but not=
=0A=
>> following the latest specs (I think Olof mentioned that). But I have not=
=0A=
>> look into this (yet) to try to make it work. Not sure how much effort wo=
uld=0A=
>> be needed on the kernel to support this older specs mmu.=0A=
>>=0A=
>> In any case, considering the tiny 6+2MB of memory available, direct M-mo=
de=0A=
>> Linux boot avoids the bootloader chain and openSBI use, which saves a lo=
t=0A=
>> of memory. We could reduce this chain to opensbi with direct payload onl=
y,=0A=
>> but even then, page alignment will lead to memory loss. And at run-time,=
=0A=
>> nommu saves a lot too with the absence of page tables. Nommu makes sense=
=0A=
>> for this platform.=0A=
> =0A=
> Well, the VM mode bits are in mstatus for this priv spec, so OpenSBI=0A=
> won't work since there is no way to set them. =0A=
=0A=
Interesting. At FOSDEM, we discussed with Palmer the work that would be=0A=
needed to disentangle NOMMU and M-MODE boot, which for now are rather=0A=
synonymous, but shouldn't. I guess this platform would still require M-MODE=
=0A=
boot, but not necessarily NOMMU.=0A=
=0A=
>> This is the first step to get this platform running Linux. Due to the lo=
w=0A=
>> memory, it probably isn't a practical use case to use Linux in the first=
=0A=
>> place, but it definitely is a great inexpensive platform for getting=0A=
>> started with RISCV. NOMMU allows running Linux without much effort. Goin=
g=0A=
>> forward, we can also try to get that SoC MMU running.=0A=
> =0A=
> Yeah, that's pretty reasonable. However, I don't think much has changed=
=0A=
> other than the locations of some of the registers has been changed=0A=
> around. The existing code to set up page table entries should not need=0A=
> major modifications.=0A=
=0A=
OK. Sounds easy enough. But I think cleanup work to dissociate M-mode boot=
=0A=
and NOMMU will be needed first. After that, trying to enable the MMU should=
=0A=
be easier.=0A=
=0A=
> =0A=
> Alternatively, the base+bound scheme could probably work pretty well=0A=
> with low memory, though we would not be able to re-use any existing=0A=
> code.=0A=
> =0A=
> --Sean=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

