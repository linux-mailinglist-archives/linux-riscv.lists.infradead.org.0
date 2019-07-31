Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931717B73D
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 02:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AKWrf8uLsZtiRY6zvM0Mmn4gHnKcAUyfZdSpR00AHw=; b=BWb1ZcUVGX53ot
	p4Oy6DVbVQSu/4s/0/pQ/RXagDftRfidTXJAJIOk+JVS55rSSpbMy7Fhiqa9dIosvy3KHjOEYonCy
	4a7JbBg4XYlAiYtOIjo2ANJSJX8NUzbH9NSJ8NZfTYS1RiK132HNtypiP3BxZrNQboMlpmnjCHw1D
	sZLa9RNQ0ZSd7hHtcV5IlHOuEPInxt1Mkc9fa6gNudQVHm+y5+vNM0X5yYQWrjjTHMDGdHZMNG3wa
	oecjApLvd6BdhOYktbK5N6Z7tQ0HGdX+3SmhYF7l9bpj7jCbc/sJXCRqtpfguFFKAY6+JQxMElCa8
	ixWqEXD17jXMUvknAjXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hscaC-00029t-Uj; Wed, 31 Jul 2019 00:35:08 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsca6-0001Bz-KL
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 00:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564533324; x=1596069324;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3MetdInZ0WXq/vRjEpP92VtQ0JemjZ9FQvZQE9X5sgo=;
 b=ZSAu0UJ0Ah6h5E2QhTcMnkpqAH/9sJJFcDmdBnLVhzy/T3j+W8W+XoE6
 1uYuw0BVuuMWtV8al1lVGGJ0Jmb7LfXfnqzjA1rsMe+j/IeehyjfrcC+G
 kqgS7C0Nx2mtOUMRmhzgAoGGdOxug9XQF028FTsTlF0hWxqT+uyGfVA5u
 XBbY4bQeArk2Td9T1HOBzv3J3i1BuaiNiCJy07CMbK9DD00TMeHZm4ixN
 9Er6fcOYuls2y/QBcN5NNh4qVTpZ2qWcTgLZJulmJhv0SAOET80voxN0R
 RBAKVAFBm9qEyU+Q6Ud3N5zYb69yDFxjWeIm2n0osHUUGyEYe9hgjo6R1 g==;
IronPort-SDR: YZgUTS6vAL0wyZVefZ8Or1Sz6iDj3dFlcTRLWmF9JNUqY3RFKLAeGOYe5u+f/P0kM0BML9SkZz
 ddZevAL5iCb6FyynZZTiJFnvcyXgrKs2GXOm8d3OqhFZEG+jvTXWxcynJC5GNDg/JBYhvofWpF
 z4wVIVJUm0DI+JDxWIPokTGU6qGQgt6nI91+dzn0+PuvcGiOR5uii/KqfyJR76ZYJD4QqUV3zo
 giKUFMoZlnTc3cn00x0ktaXU+Cc9fXWPVikcp5eD7Sb2ISK1nIlgdFaa96iCEwQ1oc5QkQ/qCG
 slw=
X-IronPort-AV: E=Sophos;i="5.64,327,1559491200"; d="scan'208";a="214726862"
Received: from mail-by2nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.58])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 08:35:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MDRwvNTGdIKklZ1Rk8sS4i4UKaibbGlSyJOM5qQDrf3ZydmVPJOQpGqNS4MpXTpUGlu8DB+Lfbbze088yybLTm5516q4zW5Lj/XO+rMucVbjM+r8AGxXVNeyK5slE4mQzV093+Q2g5y2pVlZglKWM5ZiFMMeqFnV8C75NaPfH2UHvUNyNNSkrGVo9mieaup5xTynAdKLkM8ZjblI/555j68RakCvxWfJyvF2Y7ULgpC+q6+0oe2ZAaifGjIySYuoaGnLrNFs+yN5b8M+cibB2msGdK1DgKMpjYyazLEPwkLVgqFqZ17FOcy2WbFRIZAJ+HGXipQJMrznNEX/BDbELw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3MetdInZ0WXq/vRjEpP92VtQ0JemjZ9FQvZQE9X5sgo=;
 b=kc1qmMU2fXg/Q67AVbxxDo3PNKb66U+EFxdvHbEvXpKnGYkilGpnYu0bHIo9zG1gL3PkZo2GOZ3c2MfMFmalnMoZg3CC9a135tM9N9hX3X59aJKmYS/uxZ2HmOR16HyObqc2hB/v+8pA/58g/tYvlSuDj8aXR/IDWgj4EziyjZDP+SFjjOwXZeGvsgw6vRBcOG5st3a+MNnl4l2BB5X7PTHb7d16+32+sFrptxy6sDOvnPu+pMTrWVbd0AsFDKpQfhdhvr3gmwcDiM89/2HXS/iuEfbieVz7uYzn963x/S/yT19wZBgbUNcQa08S2PaESVeH0hvvb5Yrja8qwY4oGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3MetdInZ0WXq/vRjEpP92VtQ0JemjZ9FQvZQE9X5sgo=;
 b=yHkwNk5E927zVeSbQl4J4gwxmnNsQCyprBXdcgCp4YPQ+xHkpE6g5kpGcbAOZhGoxBoekYY9X8N11qQBgZGhUISDObLDm6f+LVGY/oP6ln9YxSWo0wXYK2BkT6uXoMFhd9i72VV/fr/P5SJeYy12F5+bPtyfJo0qHPUGbR9NDFk=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB6231.namprd04.prod.outlook.com (20.178.235.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 00:34:57 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 00:34:57 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
Thread-Topic: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
Thread-Index: AQHVQ+refROWkRWGQ0GJqrWaHX74e6bdXtyAgAAaDYCAABM8AIAAMKIAgABcAYCAAAOGAIAAAveAgAPQpgCAAfB4AIAAB1QA
Date: Wed, 31 Jul 2019 00:34:57 +0000
Message-ID: <021f5c82273d643b28567a3dd05254492d53bf5c.camel@wdc.com>
References: <20190726194638.8068-1-atish.patra@wdc.com>
 <20190726194638.8068-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907261346560.26670@viisi.sifive.com>
 <a8a6be2c-2dcb-fe58-2c32-e3baa357819c@wdc.com>
 <alpine.DEB.2.21.9999.1907261625220.26670@viisi.sifive.com>
 <MN2PR04MB6061790AFE4E0AAA838678028DC30@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1907270043190.26998@viisi.sifive.com>
 <CAAhSdy0Eycc0ORSnh6LJeC_D_x9yLOkoc7OkPNuN6qOcZEGVWg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1907270108420.26998@viisi.sifive.com>
 <8ed4d461ffe5ac41b475d22b38019578b29a8d09.camel@wdc.com>
 <alpine.DEB.2.21.9999.1907301611040.4874@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907301611040.4874@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3cc3651f-0f8c-48ef-5a9a-08d7154eea22
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6231; 
x-ms-traffictypediagnostic: BYAPR04MB6231:
x-microsoft-antispam-prvs: <BYAPR04MB623179624F7EE3E5196F2015FADF0@BYAPR04MB6231.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(376002)(346002)(39860400002)(396003)(189003)(199004)(66556008)(3846002)(6116002)(66946007)(4326008)(66476007)(64756008)(2906002)(6512007)(66446008)(66066001)(53936002)(229853002)(478600001)(118296001)(186003)(25786009)(76176011)(26005)(99286004)(36756003)(6506007)(7416002)(76116006)(102836004)(305945005)(14454004)(71200400001)(2501003)(256004)(7736002)(6436002)(68736007)(316002)(5640700003)(2351001)(14444005)(2616005)(11346002)(476003)(446003)(486006)(81156014)(6916009)(5660300002)(8936002)(81166006)(6246003)(54906003)(71190400001)(6486002)(8676002)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6231;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EnBq2rZO6+GleWZXjqYhY99pKSIRyh5iIcdxi+t64Qu8IxHXTYR3RBvn3zXUbVTm07DyIFG98TjB63KT7e3V2EHoXp1N/USDyTVDRztQq3QXfGmHoaBaCPz4NKi67zhvYPHqcSQyHw0CTYaHy+Wb2TL2nDvmJAjedQE1Qvh/5MXcZ2ukcSghRQQpxOpZlXAwTsHHLgNd2FG2pl1HWCxu/6BEiLhyxFuiDvs8OXyrYaBpGwaP87LwvCtQXHMl2Tm2TUq9EVEp03jYtHLpA087706IjYCyGuNzwung0ktsiBn2mF3mlZ59UX7+zOgTIGAUK0+WtW6bZ0PDy6np5+sXKHBNyYZxKXV/qctdXXQ9nQMxJ1wchs/o+3JBnQruqlrFC1DBrynG97Y3pFVTSsFlF5DOVpMFdgQ+65edXvTcJYo=
Content-ID: <78F5DFFDA7A3B3408CE1699C068FB1F6@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cc3651f-0f8c-48ef-5a9a-08d7154eea22
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 00:34:57.4767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_173502_781595_726315AC 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-07-30 at 17:08 -0700, Paul Walmsley wrote:
> On Mon, 29 Jul 2019, Atish Patra wrote:
> 
> > The yaml document did not specify anything about all isa-strings
> > has to 
> > be lowercase unless I missed something. The two enum values are
> > all 
> > lowercase but the description says all ISA strings are documented
> > in ISA 
> > specification which describes the ISA strings to be case
> > insensitive. 
> > IMHO, this creates confusion resulting the patch.
> 
> If it's helpful in understanding my earlier comments, I don't think
> that 
> your patches were "wrong," or anything like that.  And you're right
> that 
> the DT YAML binding does not unequivocally state that all future
> additions 
> to the riscv,isa string must be in lowercase.  But to be clear, the
> DT 
> YAML schema defines exactly what is currently permissible for
> riscv,isa 
> strings in kernel-oriented DT data, and right now, all of the
> permissible 
> values are lowercase.
> 

Going forward, yaml schema should define only the mandatory isa strings
(i.e. rv64imafdc) or the list should be updated as we keep adding new
extensions (i.e. rv64imafdch with kvm patches).


> Good Linux kernel patches are driven by clear functional
> motivations.  
> Like, "The current kernel crashes or doesn't support the hardware in 
> situation X; thus we change the kernel to add feature or bugfix
> Y."  And 
> in the kernel, solutions that involve fewer lines of code are
> generally 
> preferred to solutions that involve more lines of code - more bugs,
> more 
> noise, etc.  
> 

I completely agree with you on this.

> Where these case-insensitivity parsing patches fall short, in my
> opinion, 
> is that they don't have strong functional motivations.  There's been
> a 
> precedent for a few years now in the mainline kernel that the RISC-V
> ISA 
> string is all lowercase.  I've asked you and Anup for situations
> where 
> that precedent isn't sufficient to handle functionality that's
> described 
> in the RISC-V specification, or to phrase it differently, "what
> breaks if 
> we don't make this change?"  So far no one's been able to cite
> anything 
> here.  There's just a repeated appeal to authority to the section of
> the 
> RISC-V specification that states that "[t]he ISA naming strings are
> case 
> insensitive."  As you can probably sense, this doesn't seem like a
> strong 
> justification for changing the existing behavior.  From a functional
> point 
> of view, if case doesn't matter, why care if the DT data and kernel
> only 
> support lowercase strings?  An all-lowercase string should be
> functionally 
> equivalent to an all-uppercase or mixed-case string.  Since there's
> no 
> functional point to the changes,cause mysterious DT parsing problems.
>  why add more code to the kernel?
> 

There was no immediate functional requirement but to have a more future
proof code. As I said earlier, the idea of the patch came from the
confusion created by discrepancies between two different piece of
documentation/specification. As long those are resolved, absolutely no
need of this patch.


> Later in your E-mail, it sounds like you ultimately agree with these
> basic 
> conclusions.  If that's so, I don't understand the amount of effort
> that 
> you and Anup have put into pushing back here.  There's nothing
> personal 
> about these review comments.  If there's some meta-problem here
> that's 
> unrelated to the technical merit of the patches, please send a
> private 
> E-mail.  Otherwise, if you disagree with the functional conclusions
> in the 
> previous paragraph, let's hash the issues out here.
> 
> > I am fine with dropping this patch if yaml clearly document the
> > case 
> > sensititve thing.
> 
> Great!  If you still think so now, let's resolve this issue with a 
> one-line patch to the DT YAML schema to note that riscv,isa DT
> string 
> values should be all lowercase.  Will you send a patch?
> 

Yeah. Sending it right now.

Regards,
Atish
> 
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
