Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7592F84D
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 10:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CMvy+DXXNs/MPdYsFaObv+rpup6jB2FfSPWfLjIubvk=; b=djKkSeWhQMdlGP
	g9h6puYsdY2JxxflOrXvXuczRLHgHeNoewfTmN/mDunPX0ubU8EN1j/xDs+LqxTRsOKL5oTXLBIXd
	oIOQjHIUfVJCKJjhdKcP0l7WoVpax46jXXjvkDeT4DgenkAuWUCE87/liasigEeKwMENgGv2Xmiof
	NC3ef1+m1s7dWSYzHFRQV+GyILZuG7BDk7YYGajOczKWLDBYUFokSTQw9E4JkBVJHdxQwWDQsejcD
	66JTrakeQXg4edNH2uCT6XQdNICE+Gmh8DRl7S2EcpwkeddQQUWbJDcgMJWgf0cM02BmXhi6tedHq
	FCfHeynW9uz35LQ9dpNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWG6k-0004jv-Fa; Thu, 30 May 2019 08:08:18 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWG6f-0004WP-OK; Thu, 30 May 2019 08:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559203714; x=1590739714;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=q5OkX1rLq2OezVbl5sTn+krp06pLKiK4tOQ2smfyLLE=;
 b=Q2rmnZ7YuaDbWWzPLKI1dKh2cPp4trkiCRpBGkf5BZ8sQS/+YIj6QLEp
 gPH7WbCEXJGi4eyOSenKJfrCUO4xoqawRIKddSyBfTq/297hzCvSumhxo
 c9G6MgZmonFJfTvB2kswhxLBNT7wWxbnJhwdr3pplmWwgtFoiC1aMaL7E
 HFnvOpDBuV8fcTkScLnS1vWPkaL64+JdVvtkKdfawCi9UbVudjOQNcgS/
 7o7mmM+k4inSDBmmY8AsDvFg5pHPC5CtrLLfjCalE3ubkssstQ8wbRwWR
 wuanWHqWklJmunXOwygNE0hO2z1sQQ22RkS0XV+bdv4mIL85Qu+dfkKup g==;
X-IronPort-AV: E=Sophos;i="5.60,530,1549900800"; d="scan'208";a="208946033"
Received: from mail-dm3nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.52])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2019 16:08:02 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q5OkX1rLq2OezVbl5sTn+krp06pLKiK4tOQ2smfyLLE=;
 b=p8AI4i4R3tkcBrmFkgQjuR1xyU9ttk0sHW0j3q073VJ/zlD/xPE4DleRB/lx6R/Z+A1YMa1eeypaZQd5Jf0ikCgFoPPJjfKQl6vflh/+GJQlvo/w/WLDduKLg1jgQqO8eG1ApEKQL1keOIrO+iCBGO4ITXiasPJyiZ++xhrDB8A=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5903.namprd04.prod.outlook.com (20.179.23.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Thu, 30 May 2019 08:07:50 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e%7]) with mapi id 15.20.1922.021; Thu, 30 May 2019
 08:07:50 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: "xvisor-devel@googlegroups.com" <xvisor-devel@googlegroups.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "opensbi@lists.infradead.org"
 <opensbi@lists.infradead.org>
Subject: RISC-V Hypervisors
Thread-Topic: RISC-V Hypervisors
Thread-Index: AdUWvgbyyaU5prZHR4mrJ6KOrYge6A==
Date: Thu, 30 May 2019 08:07:50 +0000
Message-ID: <MN2PR04MB6061C0E703D66476EEEA2C4D8D180@MN2PR04MB6061.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [103.20.29.89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d2cc224-e414-460c-559a-08d6e4d5e909
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5903; 
x-ms-traffictypediagnostic: MN2PR04MB5903:
x-ms-exchange-purlcount: 10
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB59035186E4EECA8A283D6EA58D180@MN2PR04MB5903.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(136003)(396003)(39860400002)(376002)(53754006)(199004)(189003)(99286004)(66066001)(486006)(53376002)(476003)(55016002)(54906003)(102836004)(8936002)(6506007)(256004)(33656002)(6116002)(25786009)(4326008)(7696005)(9686003)(110136005)(53936002)(6306002)(3846002)(26005)(2501003)(16799955002)(15188155005)(71190400001)(7736002)(68736007)(316002)(8676002)(966005)(73956011)(71200400001)(81166006)(66446008)(66476007)(76116006)(186003)(66946007)(64756008)(81156014)(305945005)(6436002)(478600001)(86362001)(14454004)(2201001)(72206003)(3480700005)(347745004)(52536014)(2906002)(74316002)(5660300002)(66556008)(19623215001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5903;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0gZMuQoX7NmGHGssoo4W3urBLmIunf2Y+6S4U4rDXxgJBW6mZ5sKec3haqvBZdaZgBpjZowfMa1NTOL8PmEb0Pbp6u2bOeRoMrYU0/Tct9Yu52ORm8L2LASI4MAVDfis8Yr9i0m6hopcCeljjioLJwUfdK/Fr5t0PzuLJZ8rXlEK/5K86z/ABJb8i4WGjA+OkM2Xc/T3eo9n6Si6y+gZa1lte8/46rQ/gJaJqN6uaqkNH0A+gPh8ee1NODLjyyQV1luXMNkSMMGiuNGO0lAmpe0UcDGaZzHuaP+05pdHer+zl1Vv4RlVkyJNb8AdoSqZQ44gJb0paqSeYGyC7ckmQYVsYk4V1IYd/tUEVi1QXJtrujZMHUjvNa2eOmBdl3O1n/a4CQDFR6FA5LBMzEP1ZWVIxmFdZBda/NTRnCGyWEc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d2cc224-e414-460c-559a-08d6e4d5e909
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 08:07:50.6225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5903
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_010813_853475_8EDCF8B8 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "krste@berkeley.edu" <krste@berkeley.edu>,
 Zvonimir Bandic <zvonimir.bandic@wdc.com>,
 "waterman@eecs.berkeley.edu" <waterman@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, Ted Marena <Ted.Marena@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi All,

It's a great pleasure to inform everyone that we have RISC-V
hypervisor extension available for QEMU and along with it we
also have Xvisor (a baremetal type-1 hypervisor) working on
QEMU with RISC-V hypervisor extension. Currently, we are able
to boot two Linux RV64 Guests on Xvisor RV64.

This will be very useful to RISC-V CPU designers in validating
their implementation of RISC-V hypervisor extensions.

The QEMU RISC-V hypervisor emulation is done by Alistair and is
available in riscv-hyp-work.next branch at:
https://github.com/alistair23/qemu.git.

At the moment, QEMU RISC-V hypervisor emulation patches are
on QEMU mailing list for review.
(Refer, https://lists.gnu.org/archive/html/qemu-devel/2019-05/msg06064.html)

The Xvisor RISC-V port is done by myself (Anup) and Atish. It
can be found in master branch of Xvisor staging repo at:
https://github.com/avpatel/xvisor-next.git.

For more details on Xvisor, refer
http://xhypervisor.org/
http://xhypervisor.org/index.php?page=news/20150427

The SBI runtime needs to support RISC-V hypervisor extensions.
Particularly, we need to handle trap redirection, misaligned
load/store emulation, and missing CSR emulation differently for
HS-mode and VS-mode. We have extended OpenSBI to support RISC-V
hypervisor extension and it is available in hyp_ext_changes_v1
branch at:
https://github.com/riscv/opensbi.git

We have made great progress in KVM RISC-V (type-2 hypervisor) as
well. Currently, we are debugging KVM RISC-V and KVMTOOL RISC-V
port on QEMU. You can expect RFC patches soon in June/July 2019.

The KVM RISC-V can be found in riscv_kvm_v1 branch at:
https://github.com/avpatel/linux.git

The KVMTOOL RISC-V port can be found in riscv_v1 branch at:
https://github.com/avpatel/kvmtool.git

There is an early work on Xen RISC-V port which is avaliable
in alistair/riscv-port branch at:
https://github.com/alistair23/xen.git

We will be showing a demo of QEMU+OpenSBI+Xvisor+Linux at
up-coming RISC-V Zurich Workshop.
(Refer, https://tmt.knect365.com/risc-v-workshop-zurich/)

Stay tuned for more exciting updates on RISC-V hypervisors.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
