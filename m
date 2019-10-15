Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8325FD6C78
	for <lists+linux-riscv@lfdr.de>; Tue, 15 Oct 2019 02:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrKCaAEswmlPC6XoT22qvWEIHZtxtfLaaF5tbDxQd5E=; b=b1EZEyH4cERlJN
	hjn1sBiRxBlCstsLPNfDa/vVQaw1mR1F69F0PlbDqlPmOjKvuCTT1YjLhdNcXjCzf7TSi+yaRmR4L
	2NEYIpIhIkvT1om2/c60cmc+ZTRYhyNYWRBUqWtn7KjlZ8Cv2vt1Y6dKijUZc0OLII+egFgu1aB7d
	TTm8MXYIegEqUBX/dcQvXsod3495R8/9Vf4vfOp+6a/5Z6Yd4DEM3ijo3w1jY5J34BbdSXGKZQMNk
	ZJMcKN34JMJajq4C7YH0JNmp0MDRqwvejwpVhxJTJKQoDQWNRPenTUz3Yz4XhDN8B1JyoWBaACcmN
	WaLXYonxNHbteKf2iGmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKAku-0007jA-Fo; Tue, 15 Oct 2019 00:32:04 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKAkZ-0007Ea-Vl; Tue, 15 Oct 2019 00:31:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571099503; x=1602635503;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vGUAUiE6HWuzW05ag+uD2UDXYvceeHSfyWnl+vAUii4=;
 b=VpgmsF4BdYPnRYWvxGUaYcso9ayXCtpGp/jTwGPwNFZmgOCg/wG418Rx
 KCrg8RNVCh81cILwNi7kQrFLB0+7yirR38VAAwNdTHxTRNKPkiy18D8lq
 otwIqfZK8RoPtqlnPlrSpSCwFKPDN9YHLay0dxUvGi92MgILZYkppLwsX
 1C4GoPRvsap7epuBnsqmuAkJ4QdzcNUaDT8U5WxDVkobu1xFXeKvOUqfm
 iO1jLhA480AiHOxZixzAAFOmyfSlS7uJTwQPAE+jp3vmu4zHsMenxJhdW
 L8EVCJAKqr/xhiPS6f7kOhQBz3gN/TpPr6q3WBLDmDqxwm4kpcttevLL/ A==;
IronPort-SDR: EL3n9BzG789Qj1bCB4B+Ajiv0j75T5aIVfEjdsYGCkbyo/Oi2vTCZFpdGrduQFGnnGH6WZwxbZ
 Zz/R5oKDVePf1iny5k4ZmNdavSoijb5oKBhMk9JLRdIGP97UjqLwWOLpl9HWooK1ieslSIA21N
 kyYI6zn1UpcXI9WPZnN7wm4kSW/3j9hMJ1Q/1BAmrqmURLP9IfwsifAyhwvkFLgHkCTG1fH1r3
 70zs9IGZ9xR/tSHfSNLPzuPf+u5QbWF+NQRznDPt5MJvFqTVkraqLCZPRaoVhGpUYgwZ+5JmH2
 iFA=
X-IronPort-AV: E=Sophos;i="5.67,296,1566835200"; d="scan'208";a="227576049"
Received: from mail-cys01nam02lp2059.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.59])
 by ob1.hgst.iphmx.com with ESMTP; 15 Oct 2019 08:31:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lEL3qjtrhNcDpqLYxd/THVrYF8ScE1wQ9yjDN5dWk/CQ1U9VRYFTe0eIfdh3BDvc6hTGDcasa27vSxNIRc4FoGoHkpvc2A9OUiweBiAMaQwE502qDZ3uktfDEfBbdfuck86DrGcXKHILPQFzKKuzCmmOOjBHBf7rYd1GZSzYXkiJ3LK+OsjnA54GHMKqhUlzyCtQss3r2tJ95xlajUeo5txleHhDiVjsE1kHrh3jSGdYjYlIC3ubWe9J2/PDcRLiebDyokctcAXUgIBSAoAZZtGXFM682kJMj7Geihwb++46FAx6CWm4CDDsbI76tsvQPFHH4UhA3gRSFk//PlpJ4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vGUAUiE6HWuzW05ag+uD2UDXYvceeHSfyWnl+vAUii4=;
 b=UZYWzcm/ywUKFgZWKRK2Adjm24QtfVdWOI5tdf4V0oU//oCg8W97yGaK3rB65p7A4lBWvQieRQoclTR1E/7CtNFqQChc2HyH3zv61tRQnG9TlOEt8gxGDY6MiA+0YmVL3EhAmvWjSysJBsKvN9hWXzzotCvvMdF9kKYz6W4BVNOQd4WvheHgrpsXANbMRizeVBXoXDNCy+QJlVLOgPkEw9XEbRFmsrOjqllBn7CgBfDXCqbCoL9rzJuhgMJ99vbdwt4+LaDrB3MVQuur15Bp7IHQQhWULarZumUe4tTdFed/vsfdRUEwfBOcGAQ5hDGIy5KA5ZjHWSnedeNWMc+TBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vGUAUiE6HWuzW05ag+uD2UDXYvceeHSfyWnl+vAUii4=;
 b=OSO+Zc4RUwdoiumO6CdeR+WWSH3cM5AlTEQC0G9lZCAaPf1R9kegFQTReGwkl06zKnXAHD7++W6xBWyU+7Z7A+d8+uQcDJMyZBiwH9GhjdqbAGOeLV5DiWvILlS5dgO27i/NOftmcF7FoNdklo6KAlfxhbMz5NRWxBNWNcolLFw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4981.namprd04.prod.outlook.com (52.135.233.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Tue, 15 Oct 2019 00:31:37 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3%3]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 00:31:37 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "alex@ghiti.fr" <alex@ghiti.fr>
Subject: Re: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
Thread-Topic: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
Thread-Index: AQHVTbNRR2y1x3jR5Uinm4nvlyFP7KdLqT4AgAOZyQCAAQUZAIAAu9IAgADtSYCAARUzgIAIPfkA
Date: Tue, 15 Oct 2019 00:31:37 +0000
Message-ID: <d27c8eac16d1cc4d5ca139802b4d0cdd2dbbca11.camel@wdc.com>
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-15-alex@ghiti.fr>
 <208433f810b5b07b1e679d7eedb028697dff851b.camel@wdc.com>
 <60b52f20-a2c7-dee9-7cf3-a727f07400b9@ghiti.fr>
 <daeb33415751ef16a717f6ff6a29486110c503d7.camel@wdc.com>
 <9e9a3fea-d8a3-ae62-317a-740773f0725c@ghiti.fr>
 <d9bc696aa9d1e306e4cff04a2926b0faa2dc5587.camel@wdc.com>
 <4192e5ef-2e9c-950c-1899-ee8ce9a05ec3@ghiti.fr>
In-Reply-To: <4192e5ef-2e9c-950c-1899-ee8ce9a05ec3@ghiti.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 151b5772-8635-4938-ebbd-08d751070a40
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB4981:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB498189266DF51BCFEFBFFB68FA930@BYAPR04MB4981.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(376002)(136003)(346002)(366004)(189003)(199004)(52314003)(66066001)(478600001)(966005)(81156014)(8936002)(81166006)(5640700003)(25786009)(6436002)(6512007)(76176011)(14454004)(99286004)(8676002)(4326008)(6306002)(118296001)(6246003)(66946007)(1730700003)(66476007)(6916009)(64756008)(66556008)(2351001)(66446008)(7416002)(6486002)(76116006)(2906002)(3846002)(6116002)(229853002)(7736002)(2501003)(316002)(71190400001)(19627235002)(86362001)(305945005)(54906003)(2616005)(486006)(36756003)(186003)(446003)(11346002)(102836004)(30864003)(5024004)(14444005)(256004)(53546011)(71200400001)(476003)(26005)(6506007)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4981;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P106JlTSeFaU9XkPrWzyhDtAtfzb8pa/uhB7IoOvtbP22JTafFXPnP4vU/K4MOHqBrFwIqmnPmkEFe0NfG+lMNUs6cYxOfUwccXMb2vGP+799D6syCcTPNeeTR9/u4vU4emAlh5iH4Pf/HBNjKB+Y+MkOIljImxO/uC1DchYe03s/n4i4zs/tWI8R84d1B1+KEscdlMvXJmmBPUCwTyQj2FwLhsUTTqfD7I3za3SFGAe3fzVkODggOIXvkCO+CE94J1F/nUvbpEBV7PPwgFm4BnUd6geYZ2+CX9ebThMCVt/ividoq9Bcz58NvGuohVIsscC5cdyyD/U6vuY7HYs14VGkas+45eobosXdckXC+fp9G5FHqVmYFPiT4z6XEkW3vTPju2jgAiH82Mw7NAnCsbiSKTUMEVjQpil6sr5rgpX64Wxf9/rlWEb1+m90eD9Xs7uWCR6VcSrCVfvFqFADg==
x-ms-exchange-transport-forked: True
Content-ID: <DFD9BC418220F5459EDAAD8429D5F8D2@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 151b5772-8635-4938-ebbd-08d751070a40
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 00:31:37.3672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Q18QHVEvQ42kpL2GIf6HGPia4hmeh4hYJI8KhDGsRg466fTa+zI9LY8eXkkHO76ICPN7wW7AFkRpmsN+NKVkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4981
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_173144_214171_5CB3B985 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, 2019-10-09 at 14:39 -0400, Alex Ghiti wrote:
> On 10/8/19 10:07 PM, Atish Patra wrote:
> > On Tue, 2019-10-08 at 07:58 -0400, Alex Ghiti wrote:
> > > On 10/7/19 8:46 PM, Atish Patra wrote:
> > > > On Mon, 2019-10-07 at 05:11 -0400, Alex Ghiti wrote:
> > > > > On 10/4/19 10:12 PM, Atish Patra wrote:
> > > > > > On Thu, 2019-08-08 at 02:17 -0400, Alexandre Ghiti wrote:
> > > > > > > In order to avoid wasting user address space by using
> > > > > > > bottom-
> > > > > > > up
> > > > > > > mmap
> > > > > > > allocation scheme, prefer top-down scheme when possible.
> > > > > > > 
> > > > > > > Before:
> > > > > > > root@qemuriscv64:~# cat /proc/self/maps
> > > > > > > 00010000-00016000 r-xp 00000000 fe:00
> > > > > > > 6389       /bin/cat.coreutils
> > > > > > > 00016000-00017000 r--p 00005000 fe:00
> > > > > > > 6389       /bin/cat.coreutils
> > > > > > > 00017000-00018000 rw-p 00006000 fe:00
> > > > > > > 6389       /bin/cat.coreutils
> > > > > > > 00018000-00039000 rw-p 00000000 00:00 0          [heap]
> > > > > > > 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-
> > > > > > > 2.28.so
> > > > > > > 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-
> > > > > > > 2.28.so
> > > > > > > 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-
> > > > > > > 2.28.so
> > > > > > > 155556f000-1555570000 rw-p 00000000 00:00 0
> > > > > > > 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
> > > > > > > 1555574000-1555576000 rw-p 00000000 00:00 0
> > > > > > > 1555576000-1555674000 r-xp 00000000 fe:00
> > > > > > > 7187   /lib/libc-
> > > > > > > 2.28.so
> > > > > > > 1555674000-1555678000 r--p 000fd000 fe:00
> > > > > > > 7187   /lib/libc-
> > > > > > > 2.28.so
> > > > > > > 1555678000-155567a000 rw-p 00101000 fe:00
> > > > > > > 7187   /lib/libc-
> > > > > > > 2.28.so
> > > > > > > 155567a000-15556a0000 rw-p 00000000 00:00 0
> > > > > > > 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
> > > > > > > 
> > > > > > > After:
> > > > > > > root@qemuriscv64:~# cat /proc/self/maps
> > > > > > > 00010000-00016000 r-xp 00000000 fe:00
> > > > > > > 6389       /bin/cat.coreutils
> > > > > > > 00016000-00017000 r--p 00005000 fe:00
> > > > > > > 6389       /bin/cat.coreutils
> > > > > > > 00017000-00018000 rw-p 00006000 fe:00
> > > > > > > 6389       /bin/cat.coreutils
> > > > > > > 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
> > > > > > > 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
> > > > > > > 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00
> > > > > > > 7187   /lib/libc-
> > > > > > > 2.28.so
> > > > > > > 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00
> > > > > > > 7187   /lib/libc-
> > > > > > > 2.28.so
> > > > > > > 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00
> > > > > > > 7187   /lib/libc-
> > > > > > > 2.28.so
> > > > > > > 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
> > > > > > > 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
> > > > > > > 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-
> > > > > > > 2.28.so
> > > > > > > 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-
> > > > > > > 2.28.so
> > > > > > > 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-
> > > > > > > 2.28.so
> > > > > > > 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
> > > > > > > 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
> > > > > > > 
> > > > > > > Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> > > > > > > Acked-by: Paul Walmsley <paul.walmsley@sifive.com>
> > > > > > > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > > > > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > > > > > Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> > > > > > > ---
> > > > > > >     arch/riscv/Kconfig | 12 ++++++++++++
> > > > > > >     1 file changed, 12 insertions(+)
> > > > > > > 
> > > > > > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > > > > > index 59a4727ecd6c..87dc5370becb 100644
> > > > > > > --- a/arch/riscv/Kconfig
> > > > > > > +++ b/arch/riscv/Kconfig
> > > > > > > @@ -54,6 +54,18 @@ config RISCV
> > > > > > >     	select EDAC_SUPPORT
> > > > > > >     	select ARCH_HAS_GIGANTIC_PAGE
> > > > > > >     	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> > > > > > > +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> > > > > > > +	select HAVE_ARCH_MMAP_RND_BITS
> > > > > > > +
> > > > > > > +config ARCH_MMAP_RND_BITS_MIN
> > > > > > > +	default 18 if 6legacy_va_layout4BIT
> > > > > > > +	default 8
> > > > > > > +
> > > > > > > +# max bits determined by the following formula:
> > > > > > > +#  VA_BITS - PAGE_SHIFT - 3
> > > > > > > +config ARCH_MMAP_RND_BITS_MAX
> > > > > > > +	default 24 if 64BIT # SV39 based
> > > > > > > +	default 17
> > > > > > >     
> > > > > > >     config MMU
> > > > > > >     	def_bool y
> > > > > > With this patch, I am not able to boot a Fedora Linux(a
> > > > > > Gnome
> > > > > > desktop
> > > > > > image) on RISC-V hardware (Unleashed + Microsemi Expansion
> > > > > > board).
> > > > > > The
> > > > > > booting gets stuck right after systemd starts.
> > > > > > 
> > > > > > https://paste.fedoraproject.org/paste/TOrUMqqKH-pGFX7CnfajDg
> > > > > > 
> > > > > > Reverting just this patch allow to boot Fedora successfully
> > > > > > on
> > > > > > specific
> > > > > > RISC-V hardware. I have not root caused the issue but it
> > > > > > looks
> > > > > > like
> > > > > > it
> > > > > > might have messed userpsace mapping.
> > > > > It might have messed userspace mapping but not enough to make
> > > > > userspace
> > > > > completely broken
> > > > > as systemd does some things. I would try to boot in legacy
> > > > > layout:
> > > > > if
> > > > > you can try to set sysctl legacy_va_layout
> > > > > at boottime, it will map userspace as it was before (bottom-
> > > > > up).
> > > > > If
> > > > > that
> > > > > does not work, the problem could
> > > > > be the randomization that is activated by default now.
> > > > Randomization may not be the issue. I just removed
> > > > ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT from the config and that
> > > > seems to
> > > > work. Here is the bottom-up layout with randomization on.
> > > Oups, sorry for my previous answer, I missed yours that landed in
> > > another folder.
> > > 
> > > Removing ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT also removes
> > > randomization
> > > as this config selects ARCH_HAS_ELF_RANDOMIZE.
> > > You could remove ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT and
> > > selects by
> > > hand
> > > ARCH_HAS_ELF_RANDOMIZE but you would have to implement
> > > arch_mmap_rnd
> > > and
> > > arch_randomize_brk (elf-randomize.h).
> > > 
> > Ahh okay.
> > 
> > > The simplest would be to boot in legacy layout: I did not find a
> > > way
> > > to
> > > set this in kernel
> > > command line, but you can by modifying it directly in the code:
> > > 
> > > https://elixir.bootlin.com/linux/v5.4-rc2/source/kernel/sysctl.c#L269
> > > 
> > Setting this to 1 works.
> > 
> > > > [root@fedora-riscv ~]# cat /proc/self/maps
> > > > 1555556000-1555570000 r-xp 00000000 103:01
> > > > 280098                        /usr/lib64/ld-2.28.so
> > > > 1555570000-1555571000 r--p 00019000 103:01
> > > > 280098                        /usr/lib64/ld-2.28.so
> > > > 1555571000-1555572000 rw-p 0001a000 103:01
> > > > 280098                        /usr/lib64/ld-2.28.so
> > > > 1555572000-1555573000 rw-p 00000000 00:00 0
> > > > 1555573000-1555575000 r-xp 00000000 00:00
> > > > 0                              [vdso]
> > > > 1555575000-1555576000 r--p 00000000 103:01
> > > > 50936                         /usr/lib/locale/en_US.utf8/LC_IDE
> > > > NTIF
> > > > ICAT
> > > > ION
> > > > 1555576000-155557d000 r--s 00000000 103:01
> > > > 280826                        /usr/lib64/gconv/gconv-
> > > > modules.cache
> > > > 155557d000-155557e000 r--p 00000000 103:01
> > > > 50937                         /usr/lib/locale/en_US.utf8/LC_MEA
> > > > SURE
> > > > MENT
> > > > 155557e000-155557f000 r--p 00000000 103:01
> > > > 50939                         /usr/lib/locale/en_US.utf8/LC_TEL
> > > > EPHO
> > > > NE
> > > > 155557f000-1555580000 r--p 00000000 103:01
> > > > 3706                          /usr/lib/locale/en_US.utf8/LC_ADD
> > > > RESS
> > > > 1555580000-1555581000 r--p 00000000 103:01
> > > > 50944                         /usr/lib/locale/en_US.utf8/LC_NAM
> > > > E
> > > > 1555581000-1555582000 r--p 00000000 103:01
> > > > 3775                          /usr/lib/locale/en_US.utf8/LC_PAP
> > > > ER
> > > > 1555582000-1555583000 r--p 00000000 103:01
> > > > 3758                          /usr/lib/locale/en_US.utf8/LC_MES
> > > > SAGE
> > > > S/SY
> > > > S_LC_MESSAGES
> > > > 1555583000-1555584000 r--p 00000000 103:01
> > > > 50938                         /usr/lib/locale/en_US.utf8/LC_MON
> > > > ETAR
> > > > Y
> > > > 1555584000-1555585000 r--p 00000000 103:01
> > > > 50940                         /usr/lib/locale/en_US.utf8/LC_TIM
> > > > E
> > > > 1555585000-1555586000 r--p 00000000 103:01
> > > > 50945                         /usr/lib/locale/en_US.utf8/LC_NUM
> > > > ERIC
> > > > 1555590000-1555592000 rw-p 00000000 00:00 0
> > > > 1555592000-15556b1000 r-xp 00000000 103:01
> > > > 280105                        /usr/lib64/libc-2.28.so
> > > > 15556b1000-15556b5000 r--p 0011e000 103:01
> > > > 280105                        /usr/lib64/libc-2.28.so
> > > > 15556b5000-15556b7000 rw-p 00122000 103:01
> > > > 280105                        /usr/lib64/libc-2.28.so
> > > > 15556b7000-15556bb000 rw-p 00000000 00:00 0
> > > > 15556bb000-1555933000 r--p 00000000 103:01
> > > > 3755                          /usr/lib/locale/en_US.utf8/LC_COL
> > > > LATE
> > > > 1555933000-1555986000 r--p 00000000 103:01
> > > > 50942                         /usr/lib/locale/en_US.utf8/LC_CTY
> > > > PE
> > > > 1555986000-15559a8000 rw-p 00000000 00:00 0
> > > > 2aaaaaa000-2aaaab1000 r-xp 00000000 103:01
> > > > 283975                        /usr/bin/cat
> > > > 2aaaab1000-2aaaab2000 r--p 00006000 103:01
> > > > 283975                        /usr/bin/cat
> > > > 2aaaab2000-2aaaab3000 rw-p 00007000 103:01
> > > > 283975                        /usr/bin/cat
> > > > 2aaaab3000-2aaaad4000 rw-p 00000000 00:00
> > > > 0                              [heap]
> > > > 3fffc97000-3fffcb8000 rw-p 00000000 00:00
> > > > 0                              [stack]
> > > > 
> > > > 
> > > > > Anyway, it's weird since userspace should not depend on how
> > > > > the
> > > > > mapping is.
> > > > > 
> > > > > If you can identify the program that stalls, that would be
> > > > > fantastic
> > > > > :)
> > > > > 
> > > > It stucks while booting. So I am not sure how to figure out
> > > > which
> > > > program stalls. It is difficult to figure out from boot log as
> > > > it
> > > > stucks at different places but soon after systemd starts.
> > > If you can attach the running kernel, I would use vmlinux-gdb.py
> > > commands
> > > to figure out which processes are running (lx-ps command in
> > > particular could
> > > give us a hint). You can also add traces directly in the kernel
> > > and
> > > either use
> > > lx-dmesg command to print them from gdb or use your standard
> > > serial
> > > output:
> > > I would then print task_struct->comm at context switch to see
> > > which
> > > process
> > > is stuck.
> > > To use the python script, you need to recompile with DEBUG_INFO
> > > and
> > > GDB_SCRIPTS enabled.
> > > 
> > > FYI, I have just booted a custom buildroot image based on kernel
> > > 5.4-
> > > rc2.
> > > 
> > vmlinux-gdb.py works only if you are running in Qemu or have a
> > JTAG.
> > Right ?
> 
> Yes. Does the problem appear on qemu too ?
> 

Nope.

> > I am seeing this issue only on HiFive Unleashed + Microsemi
> > Expansion
> > board with Fedora Gnome desktop image. I can even boot a Fedora
> > developer image on same hardware and a busybox image in Unleashed
> > without any issues. But the issue is not specific to fedora as we
> > see
> > the same issue in OpenEmbedded disk image as well (HiFive Unleashed
> > +
> > Microsemi Expansion board).
> > 
> > May be it gets triggerd only if bigger userspace ?
> 
> The purpose of this patch is, on the contrary, to not lose address
> space by
> setting an arbitrary starting point (TASK_UNMAPPED_BASE) for mmap.
> 
> Do you a link to an image that fails to boot and reproduce the
> problem 
> on Qemu ?
> 

Nope. This is only reproducible in RISC-V Fedora Gnome desktop image on
a HiFive Unleashed + Microsemi Expansion. Just to clarify, there is no
issue with OpenEmbedded disk image related to memory layout. It was a
userspace thing.

Unforunately, fedora builders do not build gnome images now and the one
I am using is very old (~ 1 year). I think I can just use the sysctl
parameter for now in my tree and live with it until we have Fedora 31
images availale. We can revisit the problem after that. Thanks for
suggestions.

> I don't have much idea here, the only thing I can think of is
> finding 
> the application
> that makes the boot stall and understand what is wrong.
> 
> > > Let me know if I can do anything.
> > > 
> > > Alex
> > > 
> > > > > As the code is common to mips and arm now and I did not hear
> > > > > from
> > > > > them,
> > > > > I imagine the problem comes
> > > > > from us.
> > > > > 
> > > > > Alex

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
