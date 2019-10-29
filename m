Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F08E7F1B
	for <lists+linux-riscv@lfdr.de>; Tue, 29 Oct 2019 05:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Sr2raiRt2oJCczHxG45whdcMySrFNX5I17MuRgVJWo=; b=Of0gIGFdtk/tP3
	oMPj10ilrpW79y4KFQCQx0YnUmhufLOMjhplCknO/xfUmM1yJxZI8xfuv5MeurxJuGYs5qW+St5ps
	lxu9SR8VlhoJS/JV1GUdeVwozE782zvteNt+NLU/LE64LgMKrKgPmBhvMD8o/BTBSxBSoLbrRO7W+
	sSTvmLyYzDzj6dX3ki19iWAb/woxadR7rvscLC2ajO9kNYEI7bYgIrhFKibvxBtGo609qJL1as3Fg
	rrSPj1HIVxy48lEoULsFVKrNC2FxsM2SfdLASXP4inD4T3kV8zMItvtBGQTyw9/hzmZYDDVqi4t84
	k0Sv9YJ+2srs1DbwvpcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPIzE-0002EW-Pm; Tue, 29 Oct 2019 04:20:04 +0000
Received: from mail-eopbgr820088.outbound.protection.outlook.com
 ([40.107.82.88] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPIzB-000266-D6
 for linux-riscv@lists.infradead.org; Tue, 29 Oct 2019 04:20:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FD+vPqhtQ60eJRKTCMjnG4aj1bo6272XuVyft+D8x51FQ4seQstpipctLc0c5Q9621pV/QxwjktlTn7nW+FzHq60/fdn+/p44U33c9wyCRNa6ZfdpKL9bK98s6mr8k0ar/YIsav1hf/Cg9uqCTzomLvvNwsaKq+RJ+GG/hAK0BnuUwlW3dBPzBvG/+5mXDzrlkO824ywFbKB5JFHi9nmGgusL+7VdrgbQ3NDqLQ2J9hb2RRLTESqqn4h5eWlplV+2STVBMtKK/cQ7SpYH7P/hWwZuaLABHHlkRB1LktgmPp4KVL7F0ZXwm0l9fi7xP3MF9C6ODkG898WPA/Q/U7uLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z/FCPeXafzqDSGZLSY8HTfoMAstxNbe+6oObwMBwK6Q=;
 b=CIiKCfbRfxn4A6i/+E9pwNx7sIdxV/cM6MkcViD8Cau1BApa8OW12GxawnUegAj4FKq8oJFHS0vhSVCFSExmfgNc1+1FNDE/LxBN5MyctveFqoYzWaZNSQIaDYWFoeqwaCT6y4jxOSpp1ofDF3DqCu6EvypvYZeQh+Ee1PHG6xw7S2w1oXmjzVmV1iVCDALa77ec2UfmxV0vs9KNbVtkyFi8UjXr3PrZ706NcqhxEY6jeFenCcfODY+3UpT38nzWCUqVvlW9us5BIxvfB1zuC4HfuSp52gD5oBzK/Rlv0P8k2HPpAdoOm4HXneqfPpiw7DyeTn2QDOV+1Ka6V2wCow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z/FCPeXafzqDSGZLSY8HTfoMAstxNbe+6oObwMBwK6Q=;
 b=Aiv58saHLMWA1vUUPO84uy+8e414p/ka2Y7nNjo4BeTssM0rTHqU/Ek3BjFKugPn/n6oXHyvl/l71uH6ESvDlPVvPHPL9IMmx66xq31mvuMLvQXrgN4tQkQ+hXAtbyOCZHgbFcEiXPt8u0NP8P4EIW0qgAI0htZLSBVYn3too0s=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3445.namprd13.prod.outlook.com (52.132.244.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.15; Tue, 29 Oct 2019 04:19:56 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2408.014; Tue, 29 Oct 2019
 04:19:56 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "Paul Walmsley ( Sifive)" <paul.walmsley@sifive.com>
Subject: RE: [PATCH v2] RISC-V: Add PCIe I/O BAR memory mapping
Thread-Topic: [PATCH v2] RISC-V: Add PCIe I/O BAR memory mapping
Thread-Index: AQHViw5l0jY9JQhUEkq6xffYZOywOadrgoeAgAWHKLA=
Date: Tue, 29 Oct 2019 04:19:56 +0000
Message-ID: <CH2PR13MB3368A6E99DAB164A52D2954A8C610@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1571992163-6811-1-git-send-email-yash.shah@sifive.com>
 <alpine.DEB.2.21.9999.1910250852420.28076@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910250852420.28076@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a71613c0-7ad6-41ea-c404-08d75c274136
x-ms-traffictypediagnostic: CH2PR13MB3445:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB34456B932746A73B676418788C610@CH2PR13MB3445.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(376002)(136003)(366004)(396003)(346002)(189003)(199004)(107886003)(229853002)(4744005)(6246003)(316002)(86362001)(6862004)(55016002)(486006)(66556008)(44832011)(66476007)(76116006)(9686003)(4326008)(64756008)(66946007)(66446008)(256004)(14444005)(99286004)(6116002)(14454004)(26005)(6436002)(54906003)(102836004)(3846002)(186003)(33656002)(476003)(5660300002)(446003)(11346002)(6636002)(7416002)(66066001)(52536014)(8936002)(74316002)(81166006)(2906002)(81156014)(7736002)(6506007)(8676002)(76176011)(7696005)(305945005)(25786009)(71200400001)(478600001)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3445;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MEGWlcZfPwgDwjBu9LhuaZgUGZIud4RgLg+rKY6Fn/bn6BkGgnEsbHQtzcc7IRE4sAuc7fL09/Pc5AmzZQDWoueG9WDC09tu+XZ8OSuUXfYG3qNL0efK9MXkZyVuIECy2mQt8Tr+l1n/+0v94kvnp9BFMZcYSiDLEIBHkw6QXhUV8mNNq8Oj7y5quJ4Cp1a1e0DoXW0ugfZ2E8l3MYqtfmoLc6PYvY16cK4IwOJmJ6ugwXW7Aj3rR0z0eW1Bppakkrvy6wqla5qgIR7NnKn7Fa39wO6RJjYFxUvxki5T24xYWqf+5uk9iPuuX52YracI9RLFUQZozVhjqu+gx33J47VOSa9elpmkkDPrKeZ0okPP8TruQ5zhRrZD9nfz+rKPT70RS0WU8BW8XBiw19OflTrDRJK8bYwrPb1IdKACoXyJSdZgXMdTbJZ9Brjzb9Kz
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a71613c0-7ad6-41ea-c404-08d75c274136
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 04:19:56.3003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7dPlHCLmbI+c1hn/2tr4Q6S9mfcTqpwbYBTNN+JttOH6YMxcxRlmlKP++uzFUIkVSXBJL+5FyOtkh9VPuGDH1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_212001_512374_A12B7E08 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "logang@deltatee.com" <logang@deltatee.com>,
 "sorear2@gmail.com" <sorear2@gmail.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alex@ghiti.fr" <alex@ghiti.fr>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "Palmer Dabbelt \(
 Sifive\)" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> On Fri, 25 Oct 2019, Yash Shah wrote:
> 
> > For legacy I/O BARs (non-MMIO BARs) to work correctly on RISC-V Linux,
> > we need to establish a reserved memory region for them, so that
> > drivers that wish to use the legacy I/O BARs can issue reads and
> > writes against a memory region that is mapped to the host PCIe
> > controller's I/O BAR mapping.
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> 
> Thanks.  And just to confirm: this is a fix, right?  Without this patch, legacy
> PCIe I/O resources won't be accessible on RISC-V?

Yes, this is a fix.

- Yash

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
