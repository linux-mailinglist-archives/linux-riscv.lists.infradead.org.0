Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFB0A6484
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 10:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9SwB7kEGy287ufiRc4q7cvF1iGjeejytENBKiYvwMQ=; b=vBMGkDO5Km+v0V
	4BYnsz+CLZJ533UBFVdD9YrJmeqSuHpxUFdTocitOLrZH6B8LPsMjL8QJMuAW2jCJCc1zSa/dcAnI
	STHN857WfQGHejgXD+HJqkGRcBizoj4nH2djmrm4izfg6mKu3+CSj08MKItHtQZ1qmQFiEVPGdrm4
	y0LoAc+DsdeDWYGN7KP56xL2yq1BQj9//EK3A0v0u+9pApk4ldBBcMJ510BsFem8IezPjDHO/dBpN
	42IiGYaEFyyNVKNOYgLm6H9y+EKLobWS5FuL1NuFLkZjvSuGPQxsSZA6s4PN72DIFVeOvNxEI1QKb
	pcswH1NGjTIaaCI/3cwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i54d0-00080H-Ad; Tue, 03 Sep 2019 08:57:30 +0000
Received: from mail-eopbgr750110.outbound.protection.outlook.com
 ([40.107.75.110] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i54ce-0007md-QK; Tue, 03 Sep 2019 08:57:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ffEmgDXQ32ktnYik+eVGVMhdy8ERJFJeO9bVlL8V0Mxg4D6rOgPOUmRR7Fyc3r5aBchk3kD/SxYNJ6jDqMm+AlskxxR5D6gxXz4Ap3C9770rvYs5nLEsf8mirPxU147GUK5AgKTMUtISMWNOtFlGwWzrwULp+0VStdI2wTEgEgT9m9CiXwweHgnAEA6bmg/le9JCAHcolXW4kVPKP+4i/tjNhpMPCtb+PiJR4S+hcx3BtV38qnjTaW2sukEWyMAFLneojynBG7YRQMRvUfkTpCTzG2o8YIi3y8H3g6xYI5TS5hmsnaBUCgqXB3ZFMQw1YJyeLXmZ+RH55DXVzybgeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pKGjwp1Uo8LfIHoyH7+b//d/bD44+fJfePgvviW7l8g=;
 b=mG1tWN7uUdyshf80A5MUT9b4f6P+Wl3TJJjI2GQ8ZUx0AFflfdICBbq8iw3/Yhzq8BPbGw5wEEcJcYFHMoY9CTTLu5rjbdoYrQRooJHt40TGSSs8CRwl3yHAmgH3BcdBm212x/sNaI/JHePgkCL5RI5ImrHCW4Va/8xjqT8RxvnislgjsJYAH74bugV/eCnLe84HjYXFBqSKMRX7dUb10TLokdEPKjB2Pk6ZuJOwUa60shooMhVChq5OtJZYqPC3c7Lh8TPywmKg3ZnAePzVm64g0iURm4a0MshUvC9WoYxNmVvtGmHAyRBCFSAQ2px4keNF4rch/Xz1xwu89RP0iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pKGjwp1Uo8LfIHoyH7+b//d/bD44+fJfePgvviW7l8g=;
 b=VCoxzS8WWTGfTcQYd0/WZ+jzrF0fosMbreNkfKpbvjQ4IW659Bg+NPwvuAf4EQKOuVRKFsAOj0pCb8p+7Dill9cY5mxZ4QAPW5CJCiLvD1LY+jZ1udVFo87TRkJbmYam+XgewallJsGzm3jjrChp1wMbXFymbbSiyHLv9/Ei034=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1422.namprd22.prod.outlook.com (10.172.59.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Tue, 3 Sep 2019 08:57:01 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f9e8:5e8c:7194:fad3]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f9e8:5e8c:7194:fad3%11]) with mapi id 15.20.2220.021; Tue, 3 Sep 2019
 08:57:01 +0000
From: Paul Burton <paul.burton@mips.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 04/26] mips: remove ioremap_cachable
Thread-Topic: [PATCH 04/26] mips: remove ioremap_cachable
Thread-Index: AQHVYjWM7xZdW0g9rk2mdDHsFCA7Ig==
Date: Tue, 3 Sep 2019 08:57:00 +0000
Message-ID: <MWHPR2201MB1277E4E8214F6E50E5EC9BFCC1B90@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190817073253.27819-5-hch@lst.de>
In-Reply-To: <20190817073253.27819-5-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0041.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:61::29) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.196.173.241]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc4e3957-ec12-4171-af7d-08d7304cae89
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1422; 
x-ms-traffictypediagnostic: MWHPR2201MB1422:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR2201MB14223E109C3EC6DA480974C1C1B90@MWHPR2201MB1422.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(366004)(376002)(346002)(39840400004)(199004)(189003)(7736002)(71190400001)(6116002)(4744005)(3846002)(71200400001)(256004)(7416002)(99286004)(966005)(8936002)(66446008)(64756008)(66556008)(66946007)(66476007)(14454004)(8676002)(478600001)(386003)(6506007)(55236004)(53936002)(102836004)(2906002)(6246003)(74316002)(6436002)(42882007)(316002)(44832011)(446003)(476003)(11346002)(26005)(486006)(9686003)(6306002)(186003)(54906003)(55016002)(66066001)(81166006)(81156014)(25786009)(52116002)(7696005)(305945005)(52536014)(6916009)(229853002)(5660300002)(4326008)(76176011)(33656002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1422;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; PTR:InfoNoRecords;
 A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AMsW0LyaOM/yHrXI9m5Kie1YaQxjkfvMhyNX9ES2CGzwwwtpZntVqBckfi52aNkMc1Cdw2HlQMfo43GMtbo5mFVnqmdWekTCV8WgfEaqK2CjzX3+jfIMYgUYhhBN4zWgT9CB6mowfVObZSeeIEMtj7+DNC2MxefkmdolMdDmNiKZeyM/3alS0wsSmeCRCsmzACIx3yo9Czz0fYxxpPvPbHTf+KaRtsqNbIV5fuR38UuaxwgSY7khdFw8Ar3ThZt6HWelwgU4vmFePNfnQ/2+RAPxMWvPKk8KwT0tM6kvsaKJZ5DXKM+M8iKqCcMBcLD53stvyeVLaj4Syqkv0mqrETEw4t6/7LI69R/6BoyyTS/WN9nNKWlcsqFhE/rl8Anat/j9v2p6UBqUVH6JJkwAm+0PTbtyAY3KukhvYKL2BNg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc4e3957-ec12-4171-af7d-08d7304cae89
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 08:57:00.4929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CsvUw2VRN18dDCQo8ThReG3qLd2pbxbAWkvlwIUDlGTbHTsWbcHQ6WJEwrmmhkC2GbNjKIBlixwAJHAstD6HBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1422
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_015708_892517_5855C792 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.110 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Vincent Chen <deanbo422@gmail.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-hexagon@vger.kernel.org" <linux-hexagon@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 "openrisc@lists.librecores.org" <openrisc@lists.librecores.org>,
 Greentime Hu <green.hu@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Guan Xuetao <gxt@pku.edu.cn>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "nios2-dev@lists.rocketboards.org" <nios2-dev@lists.rocketboards.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello,

Christoph Hellwig wrote:
> Just define ioremap_cache directly.

Applied to mips-next.

> commit 60af0d94cc37
> https://git.kernel.org/mips/c/60af0d94cc37
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
