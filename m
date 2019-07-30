Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D87D7B46E
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 22:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euflbZcH8a3MWlIf9SOd8NADZOym0hFo787EWVnrfCM=; b=Zx198vvsxOJWfQ
	ARzyzq1OmFAlYq5MRuhVI7vItbyjvHbnuwb9hwYKUtk6tQnMo1BAxXvyehmTyayMoT3W+V54VhwXc
	FWvOhKF3FM19sqe6JOCDV6AKULVgG96KfZP6mAAduF/FXUXg3LX0Ne1CmNi+IE57EDN2WMgsixNUN
	Se8pzaEVfDKRqFtEq1wqBTECpG5S7Cp6VzvIGG0h5smfvxYPQ8nJ4jALCrdwhuByct1+wmr5/rY5s
	vend5RBbn5karX9JIIUZukjm1kGtwxUmXXRtubdJ3r1W0EEFQZYt7k9uimggieJ68Z1CHw4FwcZJJ
	Likcz8pgZai0pqBZXqPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsYwd-00044i-Sb; Tue, 30 Jul 2019 20:42:03 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsYwZ-00043y-Mz
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 20:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564519319; x=1596055319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jqSxVo9BTH/BK7IHa8tVUTQCoecKphTDMxHqGB7egPk=;
 b=c2bDijx07f7di12KKescQQFhRwtXwSPt8z+p2vxhKRxCB38KBsp1IKK8
 TqG61m4RvyBo0DXmVEqYLTvpWd4vHrcX/fAESCMlAiWFhXYR0wIHISkQt
 8Mdm5LPoH7wZOd+ENLo7ezQUNo4P9RnpSFdnLNu6W99Hgs6lnyx8uytbR
 oQ/C48SAyd3WlfWsBAkkq8rhEajjmGVvWlvEYEr7gKUX6ARnh7ckW9RAY
 A+48Ya7Rv6YyU275kJtW84ik4JntN5fsCIrBUHkSBpCA+uhxniUwrrgUU
 YyYMxMarFIhiRdD4wCkUk3j+frZsKEafRdrlyFSc7/4cFn0dPjjXIy5vI Q==;
IronPort-SDR: Gb9WrtDQFNKBew75PYaGykl5b2lSmiv8i9/GjSfsgZ/GmgvnbKBbN6GqJM9cdTYr6G0w1Lio8W
 AoV6QERZhePiR32tGgGnkQCoutjBmFLLWf0iKLThHDQS32fOt6xjrJIf5VBt1RjTE1LwEjGOUc
 d6WoUpMm4XyMVpz4003vzNuvqIBMLr2Yr+NArOh804fMnSUFSzmSDFB1rRgNcdWIwzxH0eAVml
 aNJw1cELGNMHMiCYUhfa/BD+DCvFSI7IYcWTpfJYPIllh1/kUqKsMAWzH85RnWUvfXxkDnkqe3
 xgk=
X-IronPort-AV: E=Sophos;i="5.64,327,1559491200"; d="scan'208";a="114527218"
Received: from mail-cys01nam02lp2054.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.54])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 04:41:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TBaHOwcBd5QF4U3h0UqwWKdzCItHRixuRSiklFO2kQOWAF0hHqrr3xbNuEXx7jo4Yogi9aeKOC6u9ykufFyxB7H4G/a0KcL5emCvkBGkb5qRJwRvu/U+gCGkx/4bR+oXNT8+g90PqFonQ77SAGwdh4uyZ7GoqjOFSyMXwhL4ehPH3HN7ArkLaOEhbcSgnLvRDxsf5zI3PV7rRiXRjFA3jwLDqLH6pzmCpLJ2F1xdbSpw8TpH584njXTS1ueL+MhdfH+XZU84mSh+SW18lObyTsLbqCPnazAKQbA99cTdsoDYBm7+5A55X+xg0zsKtVhVJOJLxcLQ+VTmY5QTnF9VjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jqSxVo9BTH/BK7IHa8tVUTQCoecKphTDMxHqGB7egPk=;
 b=DRPVZupOvlJ8AYeFGRTaVnDNApkR7nBif1FYOccb8dmZcW+mptl/3ZnQmwTET56vz8Ljab2Vr381v4lc6eZOf8uwS4Qc/cRIKdqZPx5V8T7/xabDNRUssmUDOcadLpc7DPxQ4ZLLzozK2KNF+D4rQgjL9yhfYyMMt6Y5DsLPfbbr1deGfmtKh5fJn2L+7P06QvdFgVAZ+6uWolmR7g00BXdUoA7XHHOVsaJmpoUq40/+gQPvm7/CAfsUJDywbQPhFCuYB3I4jP//Ni6/hSHUc2Q2KwFQ/Q8twzAXu4/Aorq8MwCLgdfqXPD1mAGzLpItBGsopO+/C2lymMzOPNkwkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jqSxVo9BTH/BK7IHa8tVUTQCoecKphTDMxHqGB7egPk=;
 b=VIAMaCSqvYJBZ/BCHZ1frYIEYfinQYBdEq94o8ikktNV+/LKbJdQ7t7UcDAQBMBgk+Ub5nw67mg5hxgvKoE0T/hoBvTUAUtjb+EO48U6zCtXUYfg7L15ZRPfHbSSEtvpQNEJMy4jGexO30JWq2DeWogc1vyqLJtmj97FJe6m46Y=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4919.namprd04.prod.outlook.com (52.135.232.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Tue, 30 Jul 2019 20:41:53 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Tue, 30 Jul 2019
 20:41:53 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
Thread-Topic: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
Thread-Index: AQHVQ+refROWkRWGQ0GJqrWaHX74e6bdXtyAgAAaDYCABRDYAIABHNgA
Date: Tue, 30 Jul 2019 20:41:52 +0000
Message-ID: <889b697be9eec05c67fea97919b4c814c4a7ef4a.camel@wdc.com>
References: <mhng-540ae5bd-8e5f-4054-9192-4e4e73cbce21@palmer-si-x1e>
In-Reply-To: <mhng-540ae5bd-8e5f-4054-9192-4e4e73cbce21@palmer-si-x1e>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c486f84-c5d5-4ef7-a849-08d7152e5ab7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4919; 
x-ms-traffictypediagnostic: BYAPR04MB4919:
x-microsoft-antispam-prvs: <BYAPR04MB4919D4096B71338FBA40CBC5FADC0@BYAPR04MB4919.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(366004)(376002)(396003)(39860400002)(189003)(199004)(68736007)(186003)(2906002)(6486002)(6436002)(8676002)(86362001)(478600001)(316002)(81156014)(81166006)(3846002)(54906003)(2501003)(229853002)(7736002)(1730700003)(6116002)(305945005)(71190400001)(6916009)(66446008)(118296001)(71200400001)(6246003)(64756008)(66556008)(66476007)(99286004)(486006)(2351001)(446003)(66066001)(4326008)(8936002)(14454004)(66946007)(36756003)(76116006)(102836004)(5660300002)(53546011)(476003)(26005)(7416002)(76176011)(256004)(5640700003)(25786009)(53936002)(2616005)(11346002)(6512007)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4919;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MywKjlj1/f8AlF3mD9usUStEy1HYPW329L8o/t1zHPLIcLeCLEch3J3trQBLAa3ce7iE2QA9No0p3K5S4bhmkcqBt4dtmpjnAhMkSmpaUxGz9TYD8AqLDHXQtMYKCGG7aigju/RujaIqdRUvxprkNC0d7dCJG9BoMDTcNZiM+Kg5oIg1/3c4Db9fQWAFSwWln4eQD2cUTgCXDaThq32OzbAgGmJI02G6UvJVqJdgfYUVi5mhcWS095XEC9zxc7LNc+ODpCxVcibZ15Hhv1vFY3hcqGU/cxd0fgdim6bL8I/a9oHlRguqrMyVGNqtW5dKfl41Er/mQkIypmJ3N7bXwxTDKRfGiICtx+acFtt+NVoVDAD8JEdWy4FJr52JLTrt844328Y4C7+NIqndGIo1nYI3Oo6nxL60l53xormFN34=
Content-ID: <FDDCCD769E92564CAA6A11F746380A81@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c486f84-c5d5-4ef7-a849-08d7152e5ab7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 20:41:52.8810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4919
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_134159_838308_0827C01B 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>, Anup Patel <Anup.Patel@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-07-29 at 20:42 -0700, Palmer Dabbelt wrote:
> On Fri, 26 Jul 2019 15:20:47 PDT (-0700), Atish Patra wrote:
> > On 7/26/19 1:47 PM, Paul Walmsley wrote:
> > > On Fri, 26 Jul 2019, Atish Patra wrote:
> > > 
> > > > As per riscv specification, ISA naming strings are
> > > > case insensitive. However, currently only lower case
> > > > strings are parsed during cpu procfs.
> > > > 
> > > > Support parsing of upper case letters as well.
> > > > 
> > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > 
> > > Is there a use case that's driving this, or
> > 
> > Currently, we use all lower case isa string in kvmtool. But
> > somebody can
> > have uppercase letters in future as spec allows it.
> > 
> > 
> > can we just say, "use
> > > lowercase letters" and leave it at that?
> > > 
> > 
> > In that case, it will not comply with RISC-V spec. Is that okay ?
> 
> We could make the platform spec say "use lowercase letters" and wipe
> our hands
> of it -- IIRC we still only support the lower case letters in GCC due
> to
> multilib headaches, so it's kind of the de-facto standard already.
> 

Sounds good. That's what I suggested in earlier email as well.
It would be good to add "use lowercase letters" in yaml documentation
as well just to avoid any confusion at all.

I will send a v2 soon.

Regards,
Atish
> > > - Paul
> > > 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
