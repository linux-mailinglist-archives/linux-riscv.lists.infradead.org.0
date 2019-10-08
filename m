Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE3ECEFFC
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 02:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qcwDXoWJA8g3dXwIMdocesw2Y3wRFX78HZpHxMbMrE=; b=uQP2zNQcsDclRy
	aPzze46CGTQrdwDmI9fAYT1JRBmizLs73uJBX/nunT6h17rJDwgO3Rnazj4WXdcH2Jy2ewH4TYTnm
	QV+cWOVtz4z99sq8PG0Kcwuj+ij1gLbfiLpiXf6zvPgDiJemUtR96whunMBlzhlETw0gUSXd/cjeC
	EJrhtQ/YM4XfnqQx0RJVUnaoyFKkK0kxenauGhtUniuoTqmwh0dqDdbGcaMLpcMkn5q9hXUtenp/g
	w6bKqg1LEVXwJk8aL4D5vzCw1DcbjGLTPbJPRnk6XsMOQ9kraDz+8qXDMUHzCFN3xRH67zLaxmM94
	OxIXJARCA9V8y3vYvH+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHde7-0008PP-Ti; Tue, 08 Oct 2019 00:46:36 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHddk-0008GM-F7; Tue, 08 Oct 2019 00:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570495573; x=1602031573;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+iibpsbzKo+2uP86ePikwjKxFNw8o16gqfIuNejW31U=;
 b=KV/Bb5oyaYvRkTmo0cWxo7sxS8yQI4MyjjdiuAKiiFeOU7cNNvTmgJgu
 SHspGNuVEn6BoKM8i5lISb2xLszdJSY0OjkfQhFghYG9Prsc2aBxlgJRd
 ssJ8lInJEbfW0kqw6pq3sNsAeUYCET02Hp1cy3b4aDmdaahmaaE/Kw/XT
 lZfvXKzdT0eo8n9ASQg/BWlh43FQXLX/Sm4FTR2zh7Bjl11V/4CiEJkEa
 fRcL43/rYqilRlNDhk9PQTIP9Dw95IBLUAud2UgcZnfU3KAFuORRlmwgi
 kyNXlM6OM09bdbsWtsDukChytl19AwlmG6FsR04UPX06X93fyAV1/bBvb g==;
IronPort-SDR: VgLNUBIqb1xhnoecXmVta8eV5eziSES1BIgRoJOIWXENAaW6UKBroYjmWVicg8QJEbHmtlp1Gg
 21bEd+hNlItCofaINvE/IZW6emId3NsXZTwccGO+Gsqgez3zUFEnOWPOGuoZCYYB9K85JNt/i2
 naYACaR4XOdQAoUu5KyWuLzUgbwveuQYebzgbwAoeg+2/p0LYagfTmuGPCmluE3P2X41WVLM9Z
 gG7ZcCu9T7Tmc39GRpnnX9B2hCeniHRjMYbyybNfdxep9AIi/5apvxk12VyeMruuhqaJW/Jlun
 6h8=
X-IronPort-AV: E=Sophos;i="5.67,269,1566835200"; d="scan'208";a="120744742"
Received: from mail-by2nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.55])
 by ob1.hgst.iphmx.com with ESMTP; 08 Oct 2019 08:46:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4g6BJ8rix5iROPyuih+Mf0dj3W6XjRKuxXLhkv+QkHiuZqPzkNgT4fc0kgmeq5/cE5TJqHcYFxd8LmAGbfL471yEjc8tmqoYgKDxUY86Ayn8VJmwl/JnV+kqp2GucH7IvzI0+6LsPk7UdDgBsyaF+crXKfD9pPVcb3EDQmayyAZZLTf0jLiFM9DSv+krZF1xvLjsoLAvghVAhIWO8pYVzEYiJL1ulzsXsdArg8PY8Mq8/ddl1cOKJFAARiROHT7j8OMnODznd35pqMZ1VXyubEkRQitLjNQxS25TCfry1fwWfEeqaGYWX20mxrqrtOfJfIMPxf41Zwvk4MZxS7fYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+iibpsbzKo+2uP86ePikwjKxFNw8o16gqfIuNejW31U=;
 b=YIkv8ljStxf8HPA65QLgU+lqXVNh442WriXMvd8wwxN1wu26yikURwvfse1xOqV1d5E0zH8TlPjr1uAJP5o/uzUizAl7KZGEys2tEwaUUxd1Mcs5VC0BmWKKZVBWsrpiBlIgLp6L9WHv1WO/AvBVQDhLGtqiON2COyYKgSUOwWkbO4jRwMgMqRqrSMPqEx4DN2BxaunfKzy0b2B4hthf+hL4DpPt/1JOYpe3K8M1NiLUenlHnHrhbcu3Kwl8ePlaOvvyxhz2EQbqSBqco2u1XdsUyzfpELo8sX7Wq+iMNs/f8mguCdEetx2sTgcqYKCMBnOK7I774W1OGQPyfH2fhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+iibpsbzKo+2uP86ePikwjKxFNw8o16gqfIuNejW31U=;
 b=WhL5BZaowaPyvlQgg4im8RLXt/xst9R3rq9slHNnAw3SrxYQed+7Rv/EFWoSe3ep6yPdkuG0o1G2eQlHK+FxbqxKC71Ujy9BNClgF82E0uRAPvUKeO8iiUJU2jYJ3bgxKxf7RtKdSUo1Oqrp4IvcNtyAdq4Pyd8w2aOVIl8lDAA=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4389.namprd04.prod.outlook.com (20.176.248.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 00:46:05 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3%3]) with mapi id 15.20.2327.023; Tue, 8 Oct 2019
 00:46:05 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "alex@ghiti.fr" <alex@ghiti.fr>
Subject: Re: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
Thread-Topic: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
Thread-Index: AQHVTbNRR2y1x3jR5Uinm4nvlyFP7KdLqT4AgAOZyQCAAQUZAA==
Date: Tue, 8 Oct 2019 00:46:05 +0000
Message-ID: <daeb33415751ef16a717f6ff6a29486110c503d7.camel@wdc.com>
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-15-alex@ghiti.fr>
 <208433f810b5b07b1e679d7eedb028697dff851b.camel@wdc.com>
 <60b52f20-a2c7-dee9-7cf3-a727f07400b9@ghiti.fr>
In-Reply-To: <60b52f20-a2c7-dee9-7cf3-a727f07400b9@ghiti.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22aa01cd-a6df-4c36-cac6-08d74b88e69a
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB4389:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB43897DD2483DCF55A88B1230FA9A0@BYAPR04MB4389.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(366004)(52314003)(189003)(199004)(478600001)(86362001)(11346002)(19627235002)(6116002)(5660300002)(3846002)(14444005)(446003)(256004)(66556008)(64756008)(66476007)(66946007)(66446008)(71190400001)(71200400001)(6916009)(76116006)(2906002)(54906003)(8676002)(81156014)(1730700003)(81166006)(7736002)(316002)(305945005)(7416002)(2501003)(476003)(53546011)(2616005)(99286004)(76176011)(6486002)(66066001)(6512007)(6306002)(26005)(186003)(14454004)(118296001)(5640700003)(102836004)(25786009)(4326008)(6506007)(36756003)(966005)(6246003)(6436002)(486006)(8936002)(229853002)(2351001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4389;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jQcka4iBDzbX8dXjAW6AzZxiJWHkKHluYUhqthlX6xNyBZ4nsGej5/zxxxjAOeVmihL5UzyvUP11HMqMJSvBDywu4YXXH9ULqoNh+tN80hIXy3ybaTZNEdjueAAHKtbaL/eMkrU0oSJvbYa2zOTyYiEoCv8ppU9q05Ec9F5o9GC900Piwf5ZMO1Tk1Eiyz3NUD1WX5n2G3/LWjo4+Y/TeGx1vfKcAiOaZftxcefPsR69ZWSLfEH+7NHjCqhgTTsdTmfh5dzwfbMyx+fGjHU08xnBjemznc+v6BAOplptNa8glJJHK09Z2yLK8qq8TMYM6WtfhGvXw/i0bRrKr+Be956c1xJzb/gZp06FH9Eve7y4arcTlYyNGk8T0SVh2+tQb/FQsqcCEhcv5P8G9RXBTNRXHcS+F0GwnEK3s9TY9qIWFeuiWCcGtcQ0X24IWyYkKpkB9PbLs6+3F+ufoj7z2g==
x-ms-exchange-transport-forked: True
Content-ID: <BEE24D9872879F46A08910C44A14742A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22aa01cd-a6df-4c36-cac6-08d74b88e69a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 00:46:05.0995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: idp60l09im0u3iGmpbbAMBhVJOfuH3loaNVqujes97ceFsT7+kGzt6vAa75qNMcdKy+4a5JVGFVyBSyBmwelEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4389
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_174612_571971_7671546B 
X-CRM114-Status: GOOD (  24.37  )
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
 "keescook@chromium.org" <keescook@chromium.org>,
 "jhogan@kernel.org" <jhogan@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcgrof@kernel.org" <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-10-07 at 05:11 -0400, Alex Ghiti wrote:
> On 10/4/19 10:12 PM, Atish Patra wrote:
> > On Thu, 2019-08-08 at 02:17 -0400, Alexandre Ghiti wrote:
> > > In order to avoid wasting user address space by using bottom-up
> > > mmap
> > > allocation scheme, prefer top-down scheme when possible.
> > > 
> > > Before:
> > > root@qemuriscv64:~# cat /proc/self/maps
> > > 00010000-00016000 r-xp 00000000 fe:00
> > > 6389       /bin/cat.coreutils
> > > 00016000-00017000 r--p 00005000 fe:00
> > > 6389       /bin/cat.coreutils
> > > 00017000-00018000 rw-p 00006000 fe:00
> > > 6389       /bin/cat.coreutils
> > > 00018000-00039000 rw-p 00000000 00:00 0          [heap]
> > > 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> > > 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> > > 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> > > 155556f000-1555570000 rw-p 00000000 00:00 0
> > > 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
> > > 1555574000-1555576000 rw-p 00000000 00:00 0
> > > 1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-
> > > 2.28.so
> > > 1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-
> > > 2.28.so
> > > 1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-
> > > 2.28.so
> > > 155567a000-15556a0000 rw-p 00000000 00:00 0
> > > 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
> > > 
> > > After:
> > > root@qemuriscv64:~# cat /proc/self/maps
> > > 00010000-00016000 r-xp 00000000 fe:00
> > > 6389       /bin/cat.coreutils
> > > 00016000-00017000 r--p 00005000 fe:00
> > > 6389       /bin/cat.coreutils
> > > 00017000-00018000 rw-p 00006000 fe:00
> > > 6389       /bin/cat.coreutils
> > > 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
> > > 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
> > > 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-
> > > 2.28.so
> > > 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-
> > > 2.28.so
> > > 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-
> > > 2.28.so
> > > 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
> > > 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
> > > 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> > > 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> > > 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> > > 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
> > > 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
> > > 
> > > Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> > > Acked-by: Paul Walmsley <paul.walmsley@sifive.com>
> > > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> > > ---
> > >   arch/riscv/Kconfig | 12 ++++++++++++
> > >   1 file changed, 12 insertions(+)
> > > 
> > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > index 59a4727ecd6c..87dc5370becb 100644
> > > --- a/arch/riscv/Kconfig
> > > +++ b/arch/riscv/Kconfig
> > > @@ -54,6 +54,18 @@ config RISCV
> > >   	select EDAC_SUPPORT
> > >   	select ARCH_HAS_GIGANTIC_PAGE
> > >   	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> > > +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> > > +	select HAVE_ARCH_MMAP_RND_BITS
> > > +
> > > +config ARCH_MMAP_RND_BITS_MIN
> > > +	default 18 if 6legacy_va_layout4BIT
> > > +	default 8
> > > +
> > > +# max bits determined by the following formula:
> > > +#  VA_BITS - PAGE_SHIFT - 3
> > > +config ARCH_MMAP_RND_BITS_MAX
> > > +	default 24 if 64BIT # SV39 based
> > > +	default 17
> > >   
> > >   config MMU
> > >   	def_bool y
> > With this patch, I am not able to boot a Fedora Linux(a Gnome
> > desktop
> > image) on RISC-V hardware (Unleashed + Microsemi Expansion board).
> > The
> > booting gets stuck right after systemd starts.
> > 
> > https://paste.fedoraproject.org/paste/TOrUMqqKH-pGFX7CnfajDg
> > 
> > Reverting just this patch allow to boot Fedora successfully on
> > specific
> > RISC-V hardware. I have not root caused the issue but it looks like
> > it
> > might have messed userpsace mapping.
> 
> It might have messed userspace mapping but not enough to make
> userspace 
> completely broken
> as systemd does some things. I would try to boot in legacy layout:
> if 
> you can try to set sysctl legacy_va_layout
> at boottime, it will map userspace as it was before (bottom-up). If
> that 
> does not work, the problem could
> be the randomization that is activated by default now.

Randomization may not be the issue. I just removed
ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT from the config and that seems to
work. Here is the bottom-up layout with randomization on.

[root@fedora-riscv ~]# cat /proc/self/maps 
1555556000-1555570000 r-xp 00000000 103:01
280098                        /usr/lib64/ld-2.28.so
1555570000-1555571000 r--p 00019000 103:01
280098                        /usr/lib64/ld-2.28.so
1555571000-1555572000 rw-p 0001a000 103:01
280098                        /usr/lib64/ld-2.28.so
1555572000-1555573000 rw-p 00000000 00:00 0 
1555573000-1555575000 r-xp 00000000 00:00
0                              [vdso]
1555575000-1555576000 r--p 00000000 103:01
50936                         /usr/lib/locale/en_US.utf8/LC_IDENTIFICAT
ION
1555576000-155557d000 r--s 00000000 103:01
280826                        /usr/lib64/gconv/gconv-modules.cache
155557d000-155557e000 r--p 00000000 103:01
50937                         /usr/lib/locale/en_US.utf8/LC_MEASUREMENT
155557e000-155557f000 r--p 00000000 103:01
50939                         /usr/lib/locale/en_US.utf8/LC_TELEPHONE
155557f000-1555580000 r--p 00000000 103:01
3706                          /usr/lib/locale/en_US.utf8/LC_ADDRESS
1555580000-1555581000 r--p 00000000 103:01
50944                         /usr/lib/locale/en_US.utf8/LC_NAME
1555581000-1555582000 r--p 00000000 103:01
3775                          /usr/lib/locale/en_US.utf8/LC_PAPER
1555582000-1555583000 r--p 00000000 103:01
3758                          /usr/lib/locale/en_US.utf8/LC_MESSAGES/SY
S_LC_MESSAGES
1555583000-1555584000 r--p 00000000 103:01
50938                         /usr/lib/locale/en_US.utf8/LC_MONETARY
1555584000-1555585000 r--p 00000000 103:01
50940                         /usr/lib/locale/en_US.utf8/LC_TIME
1555585000-1555586000 r--p 00000000 103:01
50945                         /usr/lib/locale/en_US.utf8/LC_NUMERIC
1555590000-1555592000 rw-p 00000000 00:00 0 
1555592000-15556b1000 r-xp 00000000 103:01
280105                        /usr/lib64/libc-2.28.so
15556b1000-15556b5000 r--p 0011e000 103:01
280105                        /usr/lib64/libc-2.28.so
15556b5000-15556b7000 rw-p 00122000 103:01
280105                        /usr/lib64/libc-2.28.so
15556b7000-15556bb000 rw-p 00000000 00:00 0 
15556bb000-1555933000 r--p 00000000 103:01
3755                          /usr/lib/locale/en_US.utf8/LC_COLLATE
1555933000-1555986000 r--p 00000000 103:01
50942                         /usr/lib/locale/en_US.utf8/LC_CTYPE
1555986000-15559a8000 rw-p 00000000 00:00 0 
2aaaaaa000-2aaaab1000 r-xp 00000000 103:01
283975                        /usr/bin/cat
2aaaab1000-2aaaab2000 r--p 00006000 103:01
283975                        /usr/bin/cat
2aaaab2000-2aaaab3000 rw-p 00007000 103:01
283975                        /usr/bin/cat
2aaaab3000-2aaaad4000 rw-p 00000000 00:00
0                              [heap]
3fffc97000-3fffcb8000 rw-p 00000000 00:00
0                              [stack]


> Anyway, it's weird since userspace should not depend on how the
> mapping is.
> 
> If you can identify the program that stalls, that would be fantastic
> :)
> 

It stucks while booting. So I am not sure how to figure out which
program stalls. It is difficult to figure out from boot log as it
stucks at different places but soon after systemd starts.

> As the code is common to mips and arm now and I did not hear from
> them, 
> I imagine the problem comes
> from us.
> 
> Alex

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
