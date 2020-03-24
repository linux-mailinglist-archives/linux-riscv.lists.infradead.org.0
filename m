Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1B4190469
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 05:19:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Uqqf+o3F/RoebCvMywwoEUeCLRAZI20og59c8qFpfU=; b=qGEfAuK91miLQm
	CL61q+b5SiRzHwJ8D2ZXbsOCe/EmCriORynQM3sBSHeTkagi5ULMDYbsY9TuX0Z0/7zFYUiVGuLNn
	mbfmzbuMmCb02/c9Fg2ZtrRSH9lTiBjJ80Fw4l2NUo74xnv027YaUy9MQ3EUTEisfyovWU50Usbn9
	JyYXwMQY/hfjyUQLOvKXeNK8GbPkubGRbSgZxn7qTQbrVQJU4LBlRLp5R1ievfXsLyUvW8hSSa2D0
	uMRuHexqRX9dFgtY/SB8I+YZvWJqZMCBC39U4yJsmwXxz9kUWO4K1dhtvAlEGCHWIxiCNw89YRCFD
	rjfLcarmKHWb3OtZecaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGb23-00067j-O0; Tue, 24 Mar 2020 04:19:15 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGb1y-00067K-Sc
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 04:19:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1585023551; x=1616559551; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=5Uqqf+o3F/RoebCvMywwoEUeCLRAZI20og59c8qFpfU=;
 b=pCqRSZTOtgoGzNH6u0AzRPV4MpI0nf0O9NrH/megMa2xY0VRUM3z8332
 KR2gCEVuy2oRyM/b5Bum8cjFmUJiLDrEQKfYL802UybaLhjg7QYrQDGls
 b6laOhUgoMzQ3B0k5iHNVhJsY3FLXm6Y03TXw9dET4g2i+Xqe9pX0OYGy
 HBhCWGvS5+nu+VNaYVcqu8kRLkMZQTj8oZy+2gUGqIDqeAKD5nuoBmmNZ
 L0Jzo+3LZ3urFjA2To40B92oCBvL4ZU1ko0p9VeWgFnnd0+p6H7/xPpxj
 XYJVITNNJE7YCyc2jfLlaDuudW7Jld3lf6eeWgJs4GIzu1ylxYUPdPtBn Q==;
IronPort-SDR: YLRa9Nl0ieIzi+ddF72QcY/1zSfVf9Hck9F1yYeIhjU3PuBPu7u/KSWj1QPYZ5Y9OEWRqtoQEc
 oddWUYtAbD2JL7DE4Z0ajG4FGfoMOwp1FyBQm9VLgwC+rr0ghZFvLn10JydlCBMUX1RJAMu1gh
 QLdLa2VqFBAPjuRaLA9dB5nLnamAoIo/qeDwQ2wqF5LlSDiBzQLJezMqvoJ18Zi+Gt3zWk3IsH
 CwIjPXIiBcVLChockWn32XRG7P7cpeVJ+EkF5y81jDzFYX7KRjbzZxpX9JRbAz1N/G142hVqiX
 DRM=
X-IronPort-AV: E=Sophos;i="5.72,298,1580745600"; d="scan'208";a="134769505"
Received: from mail-co1nam04lp2051.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.51])
 by ob1.hgst.iphmx.com with ESMTP; 24 Mar 2020 12:19:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTkKQdKw4D382wEihJuUd7GQESnB5yt8U7ZBkRZO7dClgvzHkKrACH4Qnjy1yWfLq4RKjz67/wUguOKgwV26almHeXE6uwtZ30T1aQ1qycLtkI8S8Tura4jG8hr9MN2xnxAjK/WPujX74LjaKChSKUFtXEFTObOYOA/2oxvTMhkWBM7jXHIJlrHmMvNXbV/IiF6WAJqzLZ7GDdFwhu+uXMslpYmQLoJwilVoKhJWsgdKXtJjRbaetokmgtfsA83fRSeprBJ26cx+g4ofLLY5RxkijZtnwfP7UBEWnY2P70ZbfvwfC/3snRraQN/X8gkMfX9rAFoBfaZWblZBp24Oug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Uqqf+o3F/RoebCvMywwoEUeCLRAZI20og59c8qFpfU=;
 b=J/a+NeqGBvbOzBquATRfh6xWAXYP5NSO4CG+Vl7FbH2cL0b6L+1TEbluyHFjbp/0HQL32DFpJUa2aVga787zlQQn9LWpHtrkyFDzfNgthiEcrEn/TbR1TC4FDRxNjRfpGZF/d0pOEJy8+vDMXxIApehW/NKPuKwQjPcjvH0UmcjFafae72Jw6J6DM3GrzAurUZII4QWEB/tjFtMLn0EXoEUoYr4XGf917ziOO2JvlzZtjMe/i9ZHRrIx0INW9NOxb7gQv1RzwsRNwCQwCrDqRtv87s7r4o3dzcmMNnCuHLgXrfvjWJ1Jg2LmFqSXW69Lu2JbLm7lp1JY0dqsMHumXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Uqqf+o3F/RoebCvMywwoEUeCLRAZI20og59c8qFpfU=;
 b=I2lAP4eQqjWOdgJqJ90onHZNI37CK+6QFjr0cWB3VE/xToBVskyETFpAli9fCgEc2XNfWgurCvXjIB94Y6q0hqLfJo0kmTnDmbnp0ZYYt30k92IsXg/sbvj2Repd4QA8mhuEM+xTUx8AWHTa1ONX7DfTiYRTpRviQaDLLMaAHT4=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2312.namprd04.prod.outlook.com (2603:10b6:102:6::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.23; Tue, 24 Mar
 2020 04:19:05 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2835.021; Tue, 24 Mar 2020
 04:19:05 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>
Subject: Kendryte K210 support v4
Thread-Topic: Kendryte K210 support v4
Thread-Index: AQHWAZNaLEjVeiBygka2zA2IfW/gVg==
Date: Tue, 24 Mar 2020 04:19:05 +0000
Message-ID: <CO2PR04MB23430FC5A3E1F47B4DF3A513E7F10@CO2PR04MB2343.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [199.255.47.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c567d354-d0f9-4bb4-236b-08d7cfaa7db5
x-ms-traffictypediagnostic: CO2PR04MB2312:
x-microsoft-antispam-prvs: <CO2PR04MB2312415C97C3C47285062E92E7F10@CO2PR04MB2312.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03524FBD26
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(366004)(39860400002)(346002)(66556008)(66446008)(33656002)(64756008)(66476007)(478600001)(76116006)(91956017)(558084003)(9686003)(5660300002)(66946007)(52536014)(7696005)(26005)(6506007)(55016002)(8936002)(2906002)(316002)(81166006)(71200400001)(8676002)(110136005)(86362001)(186003)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR04MB2312;
 H:CO2PR04MB2343.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 18vOWkoMEuZUpdATTKqsR64MNMCKE2EXVGY7K8WgFJvWAVIArTUKoujefcr09Z6NM+wNB8PAkVFJorKkkMi0YMN3UQKBDi+bISYcdaDaIUD1c8B8iNe7HqN5JD3bD+AAZhif7nsnCVhi6LxYk70xOGB/6N441mtc3j5OaT0cA+dMRaxovnIb4+c6so7LZ+oEARozYm9OzrmLLK3PM1pixZ3n9zw1LkWWB6Xw1QenO0ex1dsXmpwpNoYt7nuKqxX10DC9QsgiRHfA6ZOE4IZv+5G2vSLBiNaZCV6A8JXsn3SAN7yQ8la6X0phHQG9U8fzSwT2/c2crsZ0dEMyHGPGZpkvkcYNp52enAjH2p42TvRl3SZ/HbZ7RGsBfhy+EfQMvbnRokcqjxw1yVX1AWddpnIb2S/Kdj2ivx7gx7OmFtciU/zyscHo8ELddGu+vs7R
x-ms-exchange-antispam-messagedata: 8gef8boGCnSvQ0mSfvRr/6gd6xshBPL20SBm1kjgquBUdKVOF7RwX4pLC54U9/g08aDDEMRBuFmoWjyF9xLv5Ad3fwZkIEblEkZ5zUq3G5Ujac3t6RTgVg3nPActz7VTpJjMp8IHV68gArHZYKONhQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c567d354-d0f9-4bb4-236b-08d7cfaa7db5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2020 04:19:05.5458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5L7YBcCmjyA0By+MvPLb34H1LgAl12uBr/Wy214rjPTF4gS+T1ApZFX9kVVEARDdaD6cNIY4fh7ukxHDcbqY7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_211910_962399_CB9FAA4C 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer,=0A=
=0A=
Ping ?=0A=
=0A=
It would be great to get this series in 5.7.=0A=
=0A=
(sorry I could send this in reply to my original posting as infradead does =
not=0A=
send me back the emails I am sending to the list)=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

