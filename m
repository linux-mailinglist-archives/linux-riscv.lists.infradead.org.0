Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B534DE23
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 02:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9knLr6ZVAgQePhMYts3Did82BJdBPKr++TaAZwuZSo=; b=HVdqe+QTgNj0ZS
	cR85Dmbp83+UbyV0uxtv7GTSmKObvziuEVzD+U2PaCdX0w5zXy8icE9wjmQOTM7wOLMDSnwJ7bGIZ
	piV8BVjVVM2Gfw3NZprpvskmxrVffjR9rDGJkod0oYycf/Jg0cPCy4gwtpywKmPEFUSZTV+9l071g
	Z9Ia00QQ1gvnRP5ol9ZSxIg1xmjfv3nOqOIN9ng1FZgRYSv3V3ehAvwOmw8yb5LVtp+Fhr104kaWA
	24cUafhpJoNjDSDcyetdRZ93USLHGMAc/XZEZcnhVrmXI07jTCRlNg42oMvDPDMEKp3DgGPaSgLlK
	0Cdn4+LhU5ns/3jmoKSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he7d6-0001k1-Pi; Fri, 21 Jun 2019 00:42:12 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he7d2-0001jd-QH
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 00:42:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561077729; x=1592613729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=sousLGycg797Oqp6js89sNRS7SrYXYXM7LIo/ARH5RA=;
 b=q80euTV0Gx4EAI4H2g/RCZS2Kkcs2P6/9Ly6PQdVAGsvWWds6EMPI8zS
 8WCbsYXHkWKJbFA3fSGceRdlhgdFtjdLBcyLPeP1YeOdFULznU+pKJ+9/
 1zd7WcN5F0xWrtzwc5d2NMuxJOH3/sGjvstf3AX60czCA1IZGxuFmfwRk
 amj0JKbHEteG/HIprl2A51WjDZTKp7yBqtq496q6Nwn5dyfMa8ipty+ey
 v0fUux4UnVweCAu+zRf0Hh+04tUzhJjJ//oCth+prvE7dZGYtu2GHrJ+1
 DnJNyvqsUyjGQb9jm+T9olAu1cbpWyBUu+RvRhMTgvMK5OIwAfP98yl5Z w==;
X-IronPort-AV: E=Sophos;i="5.63,398,1557158400"; d="scan'208";a="112753496"
Received: from mail-bn3nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.52])
 by ob1.hgst.iphmx.com with ESMTP; 21 Jun 2019 08:42:04 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sousLGycg797Oqp6js89sNRS7SrYXYXM7LIo/ARH5RA=;
 b=hGV+9qebL++XuQl5MXCjK1u2W/6eUUbapJszdvpbGZ0NpSh7a96ImKapxM7IpZ3foxRNNBIObE2bv/rzI9vvXMjrBwQ79yaOfY5zC1YeJ909CAMICid1T/Ck55s45qGiZ9kY/9J53g5nw5c7ZufVFeKblVde4gWLGi03J+4+tBM=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5096.namprd04.prod.outlook.com (52.135.235.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Fri, 21 Jun 2019 00:41:56 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 00:41:56 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>
Subject: Re: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
Thread-Topic: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
Thread-Index: AQHVJtpf/c5onSaZ00edOLmiIRzkKKaj4IuAgAD1NYCAAAuqAIAAZR8A
Date: Fri, 21 Jun 2019 00:41:56 +0000
Message-ID: <cdc0d8c97bf5bfe7a3258b1cd936c77eb6d9e3c1.camel@wdc.com>
References: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
 <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
 <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
 <d66f7e401e27bcc486e6cf94eab3fd2ad9c0be30.camel@wdc.com>
 <CAEn-LTq2bhbz3hJfU1Gcr1d_e=Om24S6=2f1PW0BWn7aXwPgHw@mail.gmail.com>
In-Reply-To: <CAEn-LTq2bhbz3hJfU1Gcr1d_e=Om24S6=2f1PW0BWn7aXwPgHw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a30eae0a-b265-4686-8ed2-08d6f5e14353
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5096; 
x-ms-traffictypediagnostic: BYAPR04MB5096:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5096F087D76144A5CF682D49FAE70@BYAPR04MB5096.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(39860400002)(346002)(376002)(396003)(136003)(366004)(53754006)(189003)(199004)(305945005)(26005)(81166006)(76176011)(64756008)(53546011)(14444005)(102836004)(7416002)(71200400001)(1361003)(6506007)(4326008)(54906003)(68736007)(25786009)(316002)(446003)(256004)(76116006)(6436002)(6916009)(66066001)(71190400001)(86362001)(11346002)(3846002)(2906002)(478600001)(66946007)(73956011)(8676002)(66476007)(7736002)(91956017)(186003)(2616005)(66446008)(6116002)(36756003)(99286004)(66556008)(2501003)(486006)(5640700003)(5660300002)(6246003)(81156014)(118296001)(2351001)(8936002)(14454004)(53936002)(229853002)(72206003)(476003)(6512007)(6486002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5096;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: V2CMDlm+ANfYI3ww2kbeeYUc0xiRSrxvJlacQNUB8Ytb43J9ItzyIUuzzWqK8+dA7YpC+VhRH3LwE7pJ6j8lBDBT/Nelk46RjKrH06t32ZG2CVzfVAh+KNA+l7HZ29VqjnE6xvyoBMjuHCkHLUHZfB19bjKKiI58IDpYbNwqhbp6N0BnT125aKqYnClbLCbvmPVk8qvQSGB8gSymur72HaSABHG9YV+W+JFMA1pepgWwo8aBVbKi7XaebfDa0VUpzZU+jGQHftZQw2rUBeDKJpC/mycBsMDMkElXO75xUMX8kkBwvDyxezYY4D5bdd2Ud2diCek+y9dlfIhnmEbPSOMrMEGipNPyv4XNw2zcNzh370gdniPfqo1cGKoHCwFZujRPTj0gyGQKlZAkWMG6G3fDzQr+0z59ieSBgBwddac=
Content-ID: <6E5746EA23290A499B897A7FC59E737B@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a30eae0a-b265-4686-8ed2-08d6f5e14353
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 00:41:56.3611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_174208_981648_2230B08E 
X-CRM114-Status: GOOD (  35.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, "mafm@debian.org" <mafm@debian.org>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "mark.corbin@embecosm.com" <mark.corbin@embecosm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "rjones@redhat.com" <rjones@redhat.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, "wxjstz@126.com" <wxjstz@126.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "lukas.auer@aisec.fraunhofer.de" <lukas.auer@aisec.fraunhofer.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "anup@brainfault.org" <anup@brainfault.org>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-06-20 at 21:39 +0300, David Abdurachmanov wrote:
> On Thu, Jun 20, 2019 at 8:58 PM Atish Patra <Atish.Patra@wdc.com>
> wrote:
> > On Thu, 2019-06-20 at 08:50 +0530, Anup Patel wrote:
> > > On Thu, Jun 20, 2019 at 1:36 AM Atish Patra <Atish.Patra@wdc.com>
> > > wrote:
> > > > On Wed, 2019-06-19 at 13:02 -0700, Atish Patra wrote:
> > > > > Hi All,
> > > > > 
> > > > > We have been waiting for upstream kernel to boot on HiFive
> > > > > Unleashed
> > > > > for some time. Finally, all the required drivers will be
> > > > > available in
> > > > > 5.3-rc1 as Yash[1] & Paul's[2] patches are queued for
> > > > > merging.
> > > > > Yay!!
> > > > > 
> > > > > However, the DT/drivers in kernel are not backward compatible
> > > > > with
> > > > > the
> > > > > DT provided by FSBL. That means, everybody need to upgrade to
> > > > > the
> > > > > new
> > > > > DT if they want to use upstream kernel. Here are some
> > > > > possible
> > > > > approaches to allow a smooth transition.
> > > > > 
> > > > > 1. Embedd the DT in OpenSBI directly and build it by default
> > > > > for
> > > > > unleashed platform. (discussed in OpenSBI mailing in a low
> > > > > volumes thus right now I would just rebuild FSBL with new DTB
> > > > > list [3])
> > > > > 
> > > > > Pros: No change in anybody's build system as long as they use
> > > > > latest
> > > > > OpenSBI.
> > > > > 
> > > > > Cons: This sets a bad precedent for future platforms as
> > > > > OpenSBI
> > > > > should
> > > > > not be the place to keep/maintain device tress.
> > > > > 
> > > > > It will also break non-Linux OS that have not upgraded their
> > > > > DT
> > > > > to
> > > > > match with kernel.
> > > > > 
> > > > > 2. Link the updated DTB maintained by kernel using
> > > > > FW_PAYLOAD_FDT_PATH
> > > > > in OpenSBI.
> > > > > 
> > > > > Pros: DT is maintained by kernel and OpenSBI just use the
> > > > > already
> > > > > built
> > > > > DTB.
> > > > > 
> > > > > Cons: Creates a dependancy on Linux build system.
> > > > > All Linux distro maintainers now have to update their build
> > > > > script to
> > > > > add that option and all documentation need to be updated.
> > > > > 
> > > > > 3. Update FSBL:
> > > > > 
> > > > > Pros: Cleanest approach.
> > > > > 
> > > > > Cons: Everybody has to upgrade the FSBL which is not a simple
> > > > > ask
> > > > > for
> > > > > everyone. There is no FSBL binary available publicly as well.
> > > > > So
> > > > > everybody has to build FSBL first.
> > > > > 
> > > > > Any other possible solutions?
> > > > > 
> > > > > Till now, 2 seems to be the preferred choice for now.
> > > > > Approach 3
> > > > > is
> > > > > also okay for longer term solution (given that FSBL binary
> > > > > and
> > > > > instructions are available timely). But approach 2 requires
> > > > > extra
> > > > > work
> > > > > on distro maintainers. That's why we want to get an agreement
> > > > > with
> > > > > them
> > > > > before recommonding any specific approach to anybody in the
> > > > > community.
> > > > > 
> > > > > Thoughts ?
> > > > > 
> > > > 
> > > > Argh. I messed up the subject line first time.
> > > > Sorry for the noise.
> > > 
> > > I have 4th option which is even cleaner that 3rd option
> > > 
> > > 4. U-Boot_SPL/Coreboot replace FSBL
> > > The U-Boot_SPL/Coreboot will replace FSBL and load OpenSBI
> > > FW_DYNAMIC, Platform DTB, and U-Boot_S_mode from boot
> > > device (MMC/Flash). We can update OpenSBI FW_DYNAMIC,
> > > Platform DTB, or U-Boot_S_mode separately anytime without
> > > updating other images.
> > > 
> > > Pros: Better than option 3
> > > 
> > > Cons: None that I can think of.
> > > 
> > > IMHO, it's right time replace FSBL with U-Boot_SPL/Coreboot
> > > once and for all.
> > 
> > +Lukas, + Xiang
> > 
> > I completely agree that replacing FSBL with U-Boot SPL/coreboot is
> > the
> > best possible solution. However, the implementation of either one
> > is
> > not available upstream. Please correct me if I am wrong.
> > 
> > So we need an intermediate solution until that happens. It seems
> > that
> > approach 2 is okay with majority. We have not heard anything from
> > Fedora/debian folks though.
> > 
> 
> Here is my opinion from Fedora camp.
> 
> The preferred option would be U-Boot SPL for already mentioned
> reason:
> "... for the reason of using the same bootloader technology stack."
> 
> We already ship U-Boot SPL binaries for a high number of AArch64
> and ARMv7 boards. Ideally we don't want to depend on external DTBs
> stored in /boot (like it's done in Fedora ARMv7). The default DTB
> should
> be built into the firmware (FSBL-style), but there might be an option
> to pass external one for development/debugging reasons (i.e. override
> the default one in firmware).
> 
> For me firmware (incl. DTB) is part of hardware.
> 
> SiFive Unleashed is a development board with a test chip, and it
> ships
> in a low volumes thus right now I would just rebuild FSBL with new
> DTB
> and provide instructions how to flash it.
> 

Sounds good. We will have both approach 2 & 3 available for user to
choose from.


> > >  Also, running entire U-Boot in M-mode is just
> > > an overkill.
> > > 
> > 
> > 
> > > Regards,
> > > Anup
> > --
> > Regards,
> > Atish
-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
