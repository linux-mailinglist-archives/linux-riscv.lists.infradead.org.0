Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835A5EB3AB
	for <lists+linux-riscv@lfdr.de>; Thu, 31 Oct 2019 16:13:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnZg99mmoHfMUvlnWw5ZuQtGmmVfBOPzG1bi1S76BA8=; b=BkUKPVPN+/dzBr
	4hPu/slsV0ipRTfb6sNm4Eu0gN+Ln31OTEvo4qid80slBI7Jv1b6aIdGpiQGIckPmFG24QMRS/In+
	Ub9IUgR/vKFJWB+JCcKoBT5+0OeQZk8E2PwTJrd8HopvWd7TI2Q6mVvXSsyi3x1Ioj+DzZYGeiRI7
	l0g+w1MGNIR+KPeEqh6V+gEdAVn/mFsUe0RLQzkAAXZ5OXa8cM6LQJ4QEozao6gYpH0un2FrEfwGR
	FUYu4Kmp44ayuO+TTw5tCLNlYzWQu60ES9iRFHc5tgll4STpgk5dcZ89fKH60cWizlhthEkd20qtn
	jBZ2/JRsEZv2bJ6+Ohgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQC8b-0001Lv-5U; Thu, 31 Oct 2019 15:13:25 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQC8X-0001Ky-3B
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 15:13:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1572534801; x=1604070801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=d0xWATE1LHooGfxIfb8JpVRj7rkZztd9pyHNtH5NSpA=;
 b=UX9R7WTvAUa4LsLkY/ycUUY2xFcMvsrxvrvZQfn7F71vjPbAIVFfk5gL
 W2JRmwtChnp4bYWEvalM+JHI4wXasGdevZkUjyUd3apFvzzPxIV1Gdlpi
 FLaReXuQ3JO3TdiB5koPQdNrH2el+hefvm0KhSggDK/NccCq4ZN49CuJt
 Dsa19rR1Lkymm34v0woZI6n6JQmnDEzIGyDnyFtZNTEhqrduAbsvzm6ZD
 lLFM2Sr7cblEpebWaFmE7BedIyaAduNCbe8CiYmHWVa2xMZ9Wi0EYJn4c
 OiQbO3I0/iu3YPP8ztAQnvjzNcjq4IdBortfWoISSn5efYLVEwTePFvmY w==;
IronPort-SDR: 1kkGM7p4aWm2pXHZp3n7fuLk7RTSxj2nNPY736rU5sDiszHuWabD5LboNeBZurOD/eM5dLl5o5
 A1hxXBfa+j8SPT/UIfg63xBcL7FXnhZbbMDvoyCeCgx6ba4P1yY14dh8mvpYB1ZMq5HbS+zY/3
 +T+neGrWpFtDV4gZm+0b/zAY79LgjKO5obmNZ9c1FFemthht/vsihM5S7WpEaFqMnFqMUUhVkg
 a9fubZSWDOZZr4f5HDqAyqsK7oi7upLx9R2BsG8pWIL7DLMB72nX5Do7yGW3nuf0rFtwewdANh
 FBg=
X-IronPort-AV: E=Sophos;i="5.68,252,1569254400"; d="scan'208";a="121811700"
Received: from mail-co1nam03lp2054.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.54])
 by ob1.hgst.iphmx.com with ESMTP; 31 Oct 2019 23:13:17 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+4JtGmhc6o4+BjCZnEg2Yw9vCsrW+8ktt9YbJH5GHRtdVoxiK3Hqr6mOccAeUqmpC3/tR84ZKZ33he5pivF1s/qtoJBO1UWtk1LPDmSdUrf3FDUfHDYpXPiopB9Z97aDetyIzPJZTxqf0CUxthvrJdmWZ4c7MxhIDd5xrp6vdDNXKjfLUPUvrIsiwgurIggAA19PgGNVweDgJzhb3cNrcPnxfWc1LVb1/8DUZ5NzrM1GcdlLiXvNrdn8T197iI3mPuKUOLsbFfs0vqZTO8WBak053qBXVF4lRxAQgFDhgeGahZS6y0jH90xx+Px29Im285XoE5iAvGjCTnEZhqJ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d0xWATE1LHooGfxIfb8JpVRj7rkZztd9pyHNtH5NSpA=;
 b=QGXXaR9GMthaZzU/Txnp3SSBlHTGg7OMsnXvn4sO3UfpdbhVdvndgBRGc9BeKy5N6VjD3XO+ekzUmUdPvlSxRZ+CAjVBaUbulTg89f8L+AijgNT8prGcZOkp3jAq19cBx+uQSr2zpWUJqJcBg9xrl381HMATS9NCnkoW2BcfCQrHyL98fQ4uXweVW+l2iUtsCSna7wi1vX4xGhNR8CstKaHYZBlj4F/5wLKmtuzNjT3ohOWLgs7SvDw64lR7CtV0yCL2Uz1RPYyv6CDDAEtEI9wywku+i2l5WfZVefmsIRG1EDd1qSRCmj8NeveS67fiU25NcGcFZsE3ZmawxVwM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d0xWATE1LHooGfxIfb8JpVRj7rkZztd9pyHNtH5NSpA=;
 b=nH82hHmvbCqj3siGl4FM9rVZA3ydoi4g/IiuTGDetWnZanMoyv0zilXHoFgdsZeyEvEZ016ABGaMuEcrr7Hov8kDLauK/dSZrNb1mOPljHENMeKOK90uERXKHgEhata9FWTH5cBosgG5V5wAb9Qj29rLaZQp3064mcfURrw7zZ4=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB6120.namprd04.prod.outlook.com (20.178.235.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Thu, 31 Oct 2019 15:13:16 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::f4e9:4744:a5a1:a35f]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::f4e9:4744:a5a1:a35f%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 15:13:16 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v4 0/3] Optimize tlbflush path
Thread-Topic: [PATCH v4 0/3] Optimize tlbflush path
Thread-Index: AQHVWL967ZZ9b4+26kS/tTJYa+paEqcUnDiAgFZ1kACACjglAA==
Date: Thu, 31 Oct 2019 15:13:16 +0000
Message-ID: <ad18523fdf51b426808a6ff115ca3decc8e80aeb.camel@wdc.com>
References: <20190822075151.24838-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1908301939300.16731@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1910242001550.28076@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910242001550.28076@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 19c8f478-c6d8-4173-f24a-08d75e14db05
x-ms-traffictypediagnostic: BYAPR04MB6120:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB6120F4369E911E683FB7927AFA630@BYAPR04MB6120.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(199004)(189003)(5660300002)(2501003)(6246003)(102836004)(5640700003)(2351001)(478600001)(2906002)(71190400001)(86362001)(25786009)(36756003)(71200400001)(316002)(229853002)(4326008)(8936002)(305945005)(6506007)(6916009)(76176011)(66066001)(66446008)(6486002)(66556008)(76116006)(54906003)(7736002)(66476007)(486006)(186003)(14454004)(26005)(446003)(11346002)(2616005)(476003)(99286004)(8676002)(118296001)(81166006)(256004)(81156014)(4001150100001)(6116002)(3846002)(64756008)(6512007)(66946007)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6120;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yGD2DWe8lG9M5yJo2KkrM9a03AEEP7LtvPsGWCwn0SQb9lkvtt8/odz0iUr9XU7UFMy5p3vaQB3UcBqA+2zKylrEz3zjCV8v0tDL4+ojaaS66E0f91LHs/cJzGhfgup3t63YG0klpCftEyOHTM60DAPUyOfVeg1O/WOO5s1sVUm9ITOkA1BYr4WhlLuMtyfrFlxyVPIcApdKiLrrRavhmdfVNwSOcI6aFK6Gspc5soLM1zOEVC041Ejq0XXPfCsoyoWO6pM+Fm2XknHr+6BkqhfxofORowbD3n6CkaQ2r++DA6qPJDsoh2xwocAwcULlH+qJ5NypW4FGDzitFOcOPMJlA/I5+aYYS3WHfc42FByNbuwb3MCLmK1zJM5Xcn7A1ILizckqxA4yaevMuj5zB+e04CT0W/nnCx6rP1zEoZb/ERzUI7uovJNhgetyOsiz
Content-ID: <350BF2D45FC7F14383E701EAAB6366B1@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19c8f478-c6d8-4173-f24a-08d75e14db05
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 15:13:16.1882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +jc4uhkpgc39jKqCsW3I1WsV/PdFpH9rfr9gfC6e7Yawfn8EEMguXA2JNo2nBQNBc2G6jsDuamCQsUksZsQX3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_081321_238135_95BFC95A 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "palmer@sifive.com" <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-10-24 at 20:09 -0700, Paul Walmsley wrote:
> On Fri, 30 Aug 2019, Paul Walmsley wrote:
> 
> > On Thu, 22 Aug 2019, Atish Patra wrote:
> > 
> > > This series adds few optimizations to reduce the trap cost in the
> > > tlb
> > > flush path. We should only make SBI calls to remote tlb flush
> > > only if
> > > absolutely required. 
> > 
> > The patches look great.  My understanding is that these
> > optimization 
> > patches may actually be a partial workaround for the TLB flushing
> > bug that 
> > we've been looking at for the last month or so, which can corrupt
> > memory 
> > or crash the system.
> 
> I don't think we're any closer to root-causing this
> issue.  Meanwhile, 
> OpenSBI has merged patches to work around it.  So since many of us
> have 
> looked at Atish's TLB optimization patches, and we all think they
> are 
> useful optimizations, let's plan to merge it for v5.5-rc1.
> 
> 

Thanks. These patches still applies cleanly on 5.4-rc5.
Let me know if you need something from myside.

> - Paul

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
