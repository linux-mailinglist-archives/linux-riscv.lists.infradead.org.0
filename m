Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4537373DA6
	for <lists+linux-riscv@lfdr.de>; Wed, 24 Jul 2019 22:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKKY/eYLzZxbCYXUhXmOtqbFb5ZA/5z75/RHjqHn25A=; b=m/Ac8x9ycWwNYQ
	BR6OgEqTcDoA+LyZ2OeP3sFEnaZh4wdZ4SgHzo6ispFCGWpaqGOQERtwJi266qPyyoXcR0djEU1kA
	JjFhX2CfDzEAHpKUXWuvic3a4M+vngVWNUe+Ex4NcT22tz9CT4PEGDgbn6gZcdxwMpPVm1w0Ed25V
	Q37p4sJHvKGdKyTt318AIfw6meQS3JKIBI6Mh2XKpRPnfAm0b1qZpEe9hSJ4TnG2fj72zdO+y+AXd
	rSNRCH9LgrnR0dJN0gEFN3v4qKQd9MhiKZPxX+1nxMqmPY/gMmq0cQKCE24Ko2S2vZgcZqqY9sdpa
	VdxxsazidbIllyY93QFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNik-0001ac-6q; Wed, 24 Jul 2019 20:18:42 +0000
Received: from mail-eopbgr820099.outbound.protection.outlook.com
 ([40.107.82.99] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNiT-0001Pg-1L; Wed, 24 Jul 2019 20:18:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dEcxRKaSO2AoIYxNQlEQnkYJF2+19aVRVaTXx8Qw3axYRl/nLGeZfzFMjj1ZYJBmKKaWddySOzvyiciZ/6hJK4xKjxL0dZVinXzwh14S0G1RWOwE4RjVBfpnyl7luLPgd0tYIDXgik518b6P/yG//lB8JPFTMuZsLjFr/uRSobpQL/xyWrti1LDLtZahRvcbXUm8hDvg48/FVdsowPpi77B8GyqOxiolZJupjMAo1i2AaC5dcTTuH8NDbYNHQw+46k+LrdhM4oNZznypB0KV3fOijfVMMH5fO2ZELTUsLPk6N1lwsj5zr7xRCvLx/tRrmL6cQvosIRMOWGuQhFLSjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0O8bf3MkktXRPasPPM0aZ8FRhXf2oYT66ZTm5ExM6I0=;
 b=GjhLEl/3aCpE5yBEUbXtH7RFh0N9vPDeyFB+jonv13OOm4aWyqfkCo1pN1W3C6mjbmpPhJ+i/bR6jawkwlTKLSUpYHZ3prIaAap+t4x/tu+UjMcG8KmwX8eeZJvIeLP2nLc4DmcqLZdwAF0RPMUwaoGSCMK6aOJIMa0L3t6Qm7Vc/xR/9akg/PsTeGxNQDj4qUbr8IfEtKw6qEJcbL77erp/nvlgvklh+KMXKF8GD7MfGSE/oPuKlWTBq92AqpSHpXXkVbGg6ImH/zuJ08zTtjz3WWBB4f6b0biPbpFqm1Drzbby17IeZsahVMhLS75esyNZu+e9MXgeCNFhjDUY7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0O8bf3MkktXRPasPPM0aZ8FRhXf2oYT66ZTm5ExM6I0=;
 b=rw9cYvw81npIghzHa7jJTgc1qKS8CzgD6T/igdouSV7aKAtnCQJLFdVX/2PpIJOQdRopyH3dpan9mgJOq0s8DcBq3tDVKzZFLg2PkOmiC7UIUPAl27C/gDUf/lQ/qbYDUchMN505PEuBt6ls8gbnJffVAYz3kD3VYMJDx5h89vk=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1136.namprd22.prod.outlook.com (10.174.171.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 24 Jul 2019 20:18:21 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::49d3:37f8:217:c83]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::49d3:37f8:217:c83%6]) with mapi id 15.20.2094.017; Wed, 24 Jul 2019
 20:18:21 +0000
From: Paul Burton <paul.burton@mips.com>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [EXTERNAL][PATCH REBASE v4 00/14] Provide generic top-down mmap
 layout functions
Thread-Topic: [EXTERNAL][PATCH REBASE v4 00/14] Provide generic top-down mmap
 layout functions
Thread-Index: AQHVQeTmQ3VcX06rl0WqkHC9YJERUabaNhSA
Date: Wed, 24 Jul 2019 20:18:20 +0000
Message-ID: <20190724201819.6bhvyugquhfrldfa@pburton-laptop>
References: <20190724055850.6232-1-alex@ghiti.fr>
In-Reply-To: <20190724055850.6232-1-alex@ghiti.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::14) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf1a8fed-1258-4da6-cc22-08d710741252
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1136; 
x-ms-traffictypediagnostic: MWHPR2201MB1136:
x-microsoft-antispam-prvs: <MWHPR2201MB1136D73898811083245B6C6CC1C60@MWHPR2201MB1136.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(366004)(199004)(189003)(33716001)(6246003)(76176011)(498600001)(256004)(52116002)(66066001)(66946007)(5660300002)(64756008)(66476007)(66556008)(3846002)(66446008)(8676002)(1076003)(4744005)(6116002)(68736007)(4326008)(386003)(6506007)(6916009)(71190400001)(71200400001)(305945005)(102836004)(26005)(6436002)(81156014)(7736002)(2906002)(9686003)(6512007)(229853002)(7416002)(42882007)(58126008)(54906003)(8936002)(53936002)(99286004)(446003)(11346002)(14454004)(44832011)(25786009)(6486002)(186003)(476003)(486006)(81166006)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1136;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WBLpAxl0Uei/df2NBs1wSm/pUK/0/nZcFDTE1JL7co+n5YffPuoFkkubkl2DnVpFgsg/ShI7v/j6PI9el+OoSH8IU2+aUbrLiI01ePp1Fs53VLA9mtAmRRnZp8+vW42I5fKA1+Ac4MpqTLk6mmK9Jd13L1B872iZfJJW9mQXvPI5y04CDfIUnuvE9/v0W3wCHzAOltlSpJz8W5kShY5DuIFTr4FUed7TIDpYIkdTvdn3S3/wOi3lpaeO6iok/SUjHQNbYc9UG0fA0qngBZ40kdwQlkJHU84J7Dn18x9xrG9/OFSLu8YGXF68xqleN7IbrKMBUD4/6098KibtOs92PqSWKhSVzMJ5H3yXfDTPAgCb0NlEhASAuZMyMmFxm3cz2OVVn3LhXIa/pNmaiSDsVCwK3zx1cFnTDUNs0Q7hteM=
Content-ID: <FB1BB9830032BE468CCBFB9649F40069@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf1a8fed-1258-4da6-cc22-08d710741252
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 20:18:20.8213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_131825_146671_017E838E 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Luis Chamberlain <mcgrof@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, James Hogan <jhogan@kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Alexandre,

On Wed, Jul 24, 2019 at 01:58:36AM -0400, Alexandre Ghiti wrote:
> Hi Andrew,
> 
> This is simply a rebase on top of next-20190719, where I added various
> Acked/Reviewed-by from Kees and Catalin and a note on commit 08/14 suggested
> by Kees regarding the removal of STACK_RND_MASK that is safe doing.
> 
> I would have appreciated a feedback from a mips maintainer but failed to get
> it: can you consider this series for inclusion anyway ? Mips parts have been
> reviewed-by Kees.

Whilst skimming email on vacation I hadn't spotted how extensive the
changes in v4 were after acking v3... In any case, for patches 11-13:

    Acked-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
