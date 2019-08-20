Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90139590E
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 09:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnIrkEdjaBvcOrNqUnvXUqCHEojrh5njnlYxOtcbRjM=; b=AgnjF5/M1SBvar
	K2Zy7E1BhtZKQoXnsTYZjc3aSa+4GYCqHsteJ4lS27I6PXTI7C6nXhQ2kUX0iLxxMiUqOr1lonNgY
	ImPghmdISDaP5dmj1SSTIhlzz+62MB3SLJeSnzVKGPSJzcMGF9CDf1mdIGR7sAuohBjfpzEZ4B3vQ
	jvM9nE58y4mtbEfSFKR4dU9boOE/Fd2NSZtTnk/JHwH1KzmaIh2e2/Js/q/7QV8/VqqRq45eHMKIV
	TkjLqQPAdAJnVQTcH4LjARN5LjY+2aJW3TtnXsauJXAxzZSTXjscP/GPl+Awf/zasgVYDzHgACuyS
	r1IOGInqiLx+F2eY68dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzz2t-0001CL-P3; Tue, 20 Aug 2019 07:59:11 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzz2o-0001Bt-Br
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 07:59:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566287947; x=1597823947;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dmk0X4c+vWIP8FSIEOqatMdjm18nLLT4fLBCUiDEfek=;
 b=VWNum5zkmuWr5yOwGWWquc8QExnOZjvV7tZ6QIokx+n0FXrmYkrN3l9M
 1cf4dxBHxOdzvraMTqDh9dFZIM6bDzn0ifWnDuuFEQzNSczN5h3cXhRAY
 ThK8PXARdm5f6Qel3gjlEkUl8Z1nkzDMQqFR9keP0dn3Qq+1e0qo2uWvL
 2251mEnZfXUmrDimJOAmE+OXylz0fPqJF7VG8WxhQhxv+cNPOp+PYSwEK
 V1UnlwuY79v15JpZcLn+s52TkBYTUIRirhISWjS89kWnvcvLkqV7rY+n+
 2hbkRJwReKNRihjvLfdsC5D4VZI2GtFiWreUinkiUUHp+sCXAGRZZhoUo A==;
IronPort-SDR: ZiO0eKxjXUR1iVtXItaTF2Svwa//FuTv1GLGPyHFn31MUjjQe9FJ2RATXwS1WJyzGP4KEi5IGN
 I4bhYUYFtt2abcsCm9l9qqKnZCJISolfl12VFYSLbhCfB/VtXXjSf2Ng8d5OJ7fsdelP5StZgo
 6sul0YJz7xAGzE0HT81Fs3JogjnsBga6mT/Iv50AG21s3YBLw7doU4Qmn1jlCnFecR0d0SCRZQ
 aZ4gS765C1EmnD7PZ0bjLZbuXtUcJi2yx0s2Fe08nzJKFCcHE+IBStckb625f+WL0Y4OqrsDWP
 hjQ=
X-IronPort-AV: E=Sophos;i="5.64,408,1559491200"; d="scan'208";a="117812848"
Received: from mail-co1nam03lp2053.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.53])
 by ob1.hgst.iphmx.com with ESMTP; 20 Aug 2019 15:59:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YklqI9506w0uey5EDpDJB9pXZQnpNg0vqxNSN5Is9tBXsz+M0vZOY+2K3xlsYmFaBqqpz99R6JoXYk9zYX6MJj8jt7uQJZa5FMb54oWXLXFZQnXLzH0MyWWWBtfjmCJeW/nOiCqhWyfybMKnBK68EI5n2/0wOkk9FwH8xboaNWGjLPKf8Q/rKbV3uCAkGMbS8ggnAODeyWig++h5XCoYMY33lB5AveMDnYL1TtB9ADNuNqXbWN4CtpXtzfEHHBbMBbi/Kjo4Pz9UBtZU7cNu7j1MgcSiDMD9Fs8WmWwWx5+OMq9I5Hs9nn7Cu8Wtka/KGojBKtfY72IlOL+hnJPdOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dmk0X4c+vWIP8FSIEOqatMdjm18nLLT4fLBCUiDEfek=;
 b=Hx8jJxLCPcarOxiNuPOwHyCdlrK92vh0CFnBqxkLcyiMydkvLzIQ85zsDNNPTZFT3Rp8dlG5QLwT2k546oui9reubKsX6yrAORwST2sLCirTRGJihTUhHb7MFOFX65cKfG9l4PIwsJ4lbqT5Z5oJ6AipXuRhK+d1xGPHT0NK2Y3vTmm2FRZ/2qfsZ2A0bUztDL4HrL8HhVqWwDwDgsCHnZjzL3Xq41s8NNnuJwh5dIcOY9gUWvkQjF/QVQ0fuE8/9d2AjHXktVHq6K4RrzlOH1lUAU3FBCLQYXrll0Pe/5fJ8NQpM6RZ6UmzpY2TFVNwrVWuJADqPKXFcgIU9T0Haw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dmk0X4c+vWIP8FSIEOqatMdjm18nLLT4fLBCUiDEfek=;
 b=QJ5MDOXEZSvDuNfpg1+n5cVuYVGoV8sIk4J9/MHST1acXk29rBlV/OwclF+ZN3PHX8POmwekhWds+5RrlFQnSaFDL1xRWIaWv6RC4nymOk9n2metMdr51CF7+qfmeDuo5zIiywxhBMjeTnavlS6iW6lwzJoJ8fxaWoKivNC88bA=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5445.namprd04.prod.outlook.com (20.178.51.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 07:59:03 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 07:59:03 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Thread-Topic: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Thread-Index: AQHVTU090lWiUiEQM02Uoz9V3NTipqb3o0CAgAaR3ACAAxJmAIACeCUA
Date: Tue, 20 Aug 2019 07:59:02 +0000
Message-ID: <67e670a4600d7dc7ec3c7a7374e330b9a1dbe654.camel@wdc.com>
References: <20190807182316.28013-1-atish.patra@wdc.com>
 <20190812150215.GF26897@infradead.org>
 <3fb8d4f0383b005ecd932a69c4dd295a79b6fb1a.camel@wdc.com>
 <20190818181630.GA20217@infradead.org>
In-Reply-To: <20190818181630.GA20217@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c923876-919f-4f0b-a370-08d725444458
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5445; 
x-ms-traffictypediagnostic: BYAPR04MB5445:
x-microsoft-antispam-prvs: <BYAPR04MB5445C577C89B554AA38DA043FAAB0@BYAPR04MB5445.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(376002)(366004)(346002)(39860400002)(199004)(189003)(25786009)(53936002)(14444005)(8676002)(476003)(186003)(11346002)(316002)(256004)(2501003)(6246003)(1730700003)(81156014)(81166006)(71190400001)(71200400001)(4326008)(446003)(46003)(86362001)(2616005)(102836004)(8936002)(478600001)(76176011)(5660300002)(36756003)(6916009)(229853002)(2351001)(7736002)(305945005)(99286004)(6116002)(6512007)(6506007)(2906002)(118296001)(76116006)(66946007)(54906003)(486006)(6436002)(66446008)(14454004)(5640700003)(66556008)(64756008)(66476007)(6486002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5445;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QPLUkU9bbM7a0HOnANasAz3a3q999QekBaZgegHN3GSB+VohAwW4JGpI/w1LzFdDvcKUiCmSByPIMJgM4cGgQFgWz55LsZ61g1Tsy8L8PNLMfLOdvJNFwHZtAk3gSiEsm1EWIS/ZHzJODu/i+/jnBo93gEHY+Uv//ZxGUIxFHzQalS1g8oLAxjYb6kqlIEl+NmhIcw1pI54y3GRR6O/5q8KfmhDnZh6lrJ/n+wlqV6QOHQuq1qbFEMoEeqT2K+wUNZGWXaIDffQ0IAM9qpet4yOFlhmyuZ8Ptjdxnn1+VP21w/K3dq9x8AwPDCmZgryUwwdBfjPTJDKaZTsbsA+nxgkALZ8JcqyrNzoX0ZRtmxsK1ZSiBD4/ccjt3OAaF6AZpwTm76WcTYDagt3r7ty+ASe89yUq5FAlcv3Oeh+xd5c=
x-ms-exchange-transport-forked: True
Content-ID: <F5782799CBDB3F428B349E76D0F5B098@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c923876-919f-4f0b-a370-08d725444458
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 07:59:02.9328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qQemwOSj6jpATzWbvhVS9R2SWNrYGzDIBtNL4duSP61+0rFSzXtUCHRo7gVTFP0yYVW2NxIlaRVc8rZb52fEEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_005906_444739_74828F68 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 2019-08-18 at 11:16 -0700, hch@infradead.org wrote:
> On Fri, Aug 16, 2019 at 07:21:52PM +0000, Atish Patra wrote:
> > > > +	if (isa[0] != '\0') {
> > > > +		/* Add remainging isa strings */
> > > > +		for (e = isa; *e != '\0'; ++e) {
> > > > +#if !defined(CONFIG_VIRTUALIZATION)
> > > > +			if (e[0] != 'h')
> > > > +#endif
> > > > +				seq_write(f, e, 1);
> > > > +		}
> > > > +	}
> > > 
> > > This one I don't get.  Why do we want to check
> > > CONFIG_VIRTUALIZATION?
> > > 
> > 
> > If CONFIG_VIRTUALIZATION is not enabled, it shouldn't print that
> > hypervisor extension "h" in isa extensions.
> 
> CONFIG_VIRTUALIZATION doesn't change anything in the kernels
> capabilities, it just enables other config options. 

Yes. But it must be enabled if virtualization is supported in kernel.
The idea was to let userspace know that if virtualization can be used
or not. 


>  But more
> importantly the 'h' extension is only relevant for S-mode software
> anyway.
> 

Do you think we should just print all the extensions available in isa
string as it is ?

> > This is just an information to the userspace that some of the
> > mandatory
> > ISA extensions ("mafdcsu") are not supported in kernel which may
> > lead
> > to undesirable results.
> 
> I think we need to sit down decide what the purpose of /proc/cpuinfo
> is.  IIRC on other architectures is just prints what the hardware
> supports, not what you can actually make use of.  How else would you
> find out that you'd need to enable more kernel options to fully
> utilize the hardware?
> 
> Also printing this warning to the kernel log when someone reads the
> procfs file is very strange.

Agreed. May be something like this ?

Let's say f/d is enabled in kernel but cpu doesn't support it.
"unsupported isa" will only appear if there are any unsupported isa.

processor       : 3
hart            : 4
isa             : rv64imac
unsupported isa	: fd
mmu             : sv39
uarch           : sifive,u54-mc

May be I am just trying over optimize one corner case :) :).
/proc/cpuinfo should just print all the isa string. That's it.

Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
