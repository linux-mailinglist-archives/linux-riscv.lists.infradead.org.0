Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639DBC2EC4
	for <lists+linux-riscv@lfdr.de>; Tue,  1 Oct 2019 10:22:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SheAVM37zb+J3hCL0rJLl6GtlEgUn7FLWJpfuyQzq4w=; b=RuSaRxUr0W82pH
	cH3mUfToJ37V3gcmX1pIP95eO2U+nLd+pxriJibcr4KAqBYqSRkFZKHUsOrkvJUPCmq1mH670RDgF
	zYSyuEJwIBYkhcLd9pkaDn/uqz19cZsQLCv2gNM+l/GZKgnSGZtj2vBZ9KysMQvb6NK1lkRfxKTCA
	pUVvztSwCBIYiKgFss8SV1zcGWsPYLsDKOwxzTOWUoIog1gkQKgxqlwQXkigp8sx+f2sEff8M4CbV
	imIHfvb4g3b0QQk4qE3HfMUTDreBcW5ZG7VANWhSdncGB8KXWlqbacF3Jzoew+9HXKURDAPimJj6O
	c4gD27lyE5CHmzqqzt0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDQi-0004ix-QN; Tue, 01 Oct 2019 08:22:44 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDQe-0004iN-Vs
 for linux-riscv@lists.infradead.org; Tue, 01 Oct 2019 08:22:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569918161; x=1601454161;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JqFKMRo8z8SsJPlNGMij5mgz+9iifWO8SeCfVSiinGw=;
 b=XPblI7tiB8R+4YfieDexGjiyBHmPpoAzcPezv2RBDvVicu7drLsVF31L
 QGRco1vtQ3QYeUPRDibc/Wn4DbneUuO4yuk4BJnQrZhMLQ73T4TJuRHHh
 kdE0fFTciMVmi3YNtebJV/+EnSFLwYtSk407BXqwEx+XXoX70hA7K50Qj
 5tRHfWQLCa4aWnm5RXDM9M5wFt5vxscBNFGMUM2OXTehJh6cg3myIIqxu
 2521GHlq/QOH0YGOMGRooGrrYcElbgrJo3WqOPA/6oZb/n8BsYehe9aZj
 agBvAMwJCiXufRBBkuaRAmz996AqEKItvta2LCX+ewDt0dVL0lsb3MlD1 Q==;
IronPort-SDR: V5o77ktqqVLO0YUpy7whMHn5oinK/bfArSIUq2wBE9lWI02Ot7gGT4bMcGpX3PjbBOLO0L3gFB
 cRVuJeEqPf0BPUQnfqDhokdR463Vn9chYvKM5TwnxaWgLaeEUJJKgZcn33SVNpGuCiWf1vAHmd
 7JKSmBhZZB78y/AF+H5GqzhWvXKVlKiRugu9M9bJQDpZTFu01zXvF/obGWoR07JjW6kBVXLPv5
 4t8V4U8ji0Edj7+eqMfj6haJnlccuFmeqqu7U3yJXY3KgFKLjXflYK/urag6MGaPOlwT0EBpbH
 hsM=
X-IronPort-AV: E=Sophos;i="5.64,570,1559491200"; d="scan'208";a="121090248"
Received: from mail-bl2nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.55])
 by ob1.hgst.iphmx.com with ESMTP; 01 Oct 2019 16:22:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FmD8KqD2m11oAfoTSE/96MGYjmba2wSDQ39UMZHekfywwxc37p6pql4wlMC7c/9yHeMrBPP6kl2ZejsttTJqE3q1Nw4h2Sahp0aV7SJRRYuxxh4ir/PnYR7Lf/sZ2FuDr29GVy2vu/4hsvKgAzpQKriyFnVcpKjvciQhCSomZHfyabbAuBDIibRB1bNFkb8QtGp5K4Uer48fMYJj9iDAr0CVF4dfJ58OVXUgOiAxjbyqmLz7PKoZNMdm6QE+ImjrymadiR2Yy4fngWmL+FGEaRothQwi6ZrtcErKkGjkJRhTKKR/l8XN58LZCf1RAZj+qz5piDSiJ/CPCe1HPXLRZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JqFKMRo8z8SsJPlNGMij5mgz+9iifWO8SeCfVSiinGw=;
 b=dPPfwqWog46k8SY/nDGeHlxVzyob/lnyq+IPsv9PN7F29KFJh+NdYpQzJ/3ZosHZjdVM7IiOZs5MPARHOUkJCGuWfNYMllg8Q4hoc4SJtmRNM1YSlyGmAkBK0aT53fCQUx+00unBGfMl0d27Ef7xhrfxNpHW4WS1Lzx3befAvKGFZA09r6FSHYtgbJeMX2h4H7Wt2Inf0hgNZTjGCa6bqcd48Jo8argx69dOxcQKCxvFQ2CU1j8g4TEMADT4qqmGpFpOdtXeZKJYOpzK3pzc0+OAhpOR8bQwfMCZIxJFW9Hs36NCWUg80tEzHAfp7mOG/mTzbl0GCEcEoqei19exPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JqFKMRo8z8SsJPlNGMij5mgz+9iifWO8SeCfVSiinGw=;
 b=PptUqPq7RpVAgrwIgrx0W+3VbApGShXphUOCuqX3OJt6ZgUxzsXbbBQsoW2Nh1p5TLfkV7jeqcJcmviz9J8u5N3Ef/ObXtgwJH1/xW+zdnJ11wN+M9i47jtUPmbn5RQlJ2AfvwdhLxh+nt/QitcLJTpOuhbevAMzC+tmgs6ZrL8=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5127.namprd04.prod.outlook.com (52.135.233.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Tue, 1 Oct 2019 08:22:37 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2305.022; Tue, 1 Oct 2019
 08:22:37 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [v6 PATCH] RISC-V: Remove unsupported isa string info print
Thread-Topic: [v6 PATCH] RISC-V: Remove unsupported isa string info print
Thread-Index: AQHVd+597x5i5uf5J02UT+QA3h/uMqdFXIsAgAAWWgA=
Date: Tue, 1 Oct 2019 08:22:37 +0000
Message-ID: <b0c39a9895698d74e2f44eb1f2faed46eee54bc3.camel@wdc.com>
References: <20191001002318.7515-1-atish.patra@wdc.com>
 <20191001070236.GA7622@infradead.org>
In-Reply-To: <20191001070236.GA7622@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73dd034f-a68c-4384-c33b-08d7464884d2
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB5127:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB5127E1B4351365C30C7740A7FA9D0@BYAPR04MB5127.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(396003)(376002)(346002)(39860400002)(189003)(199004)(81156014)(6246003)(66946007)(966005)(8936002)(81166006)(1730700003)(6512007)(76176011)(46003)(54906003)(6306002)(7736002)(66556008)(76116006)(66446008)(64756008)(66476007)(71200400001)(2501003)(14454004)(71190400001)(316002)(478600001)(8676002)(25786009)(36756003)(86362001)(118296001)(5660300002)(476003)(2616005)(6916009)(11346002)(446003)(2351001)(5640700003)(99286004)(486006)(102836004)(6116002)(2906002)(4326008)(6436002)(186003)(305945005)(229853002)(6486002)(6506007)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5127;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ppi3aE0qpaWJAtidO0LABlMUtuJZzt5qW/Zh8nhZZinErmWAHB7E1eJLVOlgAsxRhWOxpTlIX1XbTnxdC8aF1Z+IrGvrrBbs5AN46ze5qlaEJin3LPBiVUppbwdLk06EMjmkiHrnXOiCKJ1UmlUUbvFXukTriC8prlAxfn7319bKGtbs2/JmQEhZNOoxAWygdyK2NiMzUyOiS4QSwoCk0GFYx9aTVV06Pj/v0AdwlNsnG9AIqB4IkSshM4+bRNI4JGmiMgsh9HMB/MtgN78DjiiNZ7GIVeZculzRl6ahIwlf4/USdWGQjAZTAopf1M6Y0wVbKhP+8i7m/wca+GVJDFho4b+4Wx4rAG8igHKyRjX2X6FvdiK2j0LnkXd68mLNFyov00YSrBwP0RFN4Jm/YycVfCSPxf7MqN0pfQCqXvS+aQGyf3llAQ2Q041tkueAGKmO05l1NZ9zU+AYwLt7iQ==
x-ms-exchange-transport-forked: True
Content-ID: <4411D8A6E974234D995AB4FE79E365FA@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73dd034f-a68c-4384-c33b-08d7464884d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2019 08:22:37.5219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 92ol1izJnSSf5DLg4a4GsJRW67hBnCSgx7FuYvrOQhHn99LsdMNcRobM08MBD33tvRBbPiBBHl9UyJknWVGJcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_012241_062518_64FA3D96 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, 2019-10-01 at 00:02 -0700, Christoph Hellwig wrote:
> On Mon, Sep 30, 2019 at 05:23:18PM -0700, Atish Patra wrote:
> > /proc/cpuinfo should just print all the isa string as an
> > information
> > instead of determining what is supported or not. ELF hwcap can be
> > used by the userspace to figure out that.
> > 
> > Simplify the isa string printing by removing the unsupported isa
> > string
> > print and all related code.
> > 
> > The relevant discussion can be found at
> > http://lists.infradead.org/pipermail/linux-riscv/2019-September/006702.html
> 
> This looks good, but can you also rename the orig_isa argument to isa
> now that we never modify it?
> 
Sure. I will do that.

> >  	/*
> >  	 * Linux doesn't support rv32e or rv128i, and we only support
> > booting
> >  	 * kernels on harts with the same ISA that the kernel is
> > compiled for.
> >  	 */
> >  #if defined(CONFIG_32BIT)
> > -	if (strncmp(isa, "rv32i", 5) != 0)
> > +	if (strncmp(orig_isa, "rv32i", 5) != 0)
> >  		return;
> >  #elif defined(CONFIG_64BIT)
> > -	if (strncmp(isa, "rv64i", 5) != 0)
> > +	if (strncmp(orig_isa, "rv64i", 5) != 0)
> >  		return;
> >  #endif
> 
> And I don't think having these checks here makes much sense.  

Correct. As we are dumping the isa information as it is, we should get
rid of these checks as well.

> If we want
> to check this at all we should do it somewhere in the boot process.

riscv_of_processor_hartid() or seems to be a better candidate. We
already check if "rv" is present in isa string or not. I will extend
that to check for rv64i or rv32i. Is that okay ?

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
