Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1625EE43A4
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 08:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YV69Jt5C0n1p7AIQJknjnb+J9/4j6wbDFaIJYj/LXfk=; b=WVQWzrVHuuqkLH
	8IBwKJ+uOnR+ubeK0fbVeQlscer++ubFJ/fiabPDs11M0esngxm66hzJ+PuAggJU4jZB/T+Wr9pDd
	WQ4UxVtHir4DK6Qb8TK4St8jLmEzlRnMJyngDhmfgGypVvWVoD4QiTQ7bFGjuHj3x9OFiQV8y6QV4
	cpsxfRABr1eBiZYqnfWIikgQgtYdAgdKiadZ5HIoTWMqqHioqyiDiCNA6usdHmsrIKnK/Sw4x95Ne
	rZ3b/8skmPfTziL5XU2wK+UOW3csqwdejFdJJceWxEg/hyc/gTLs2XIeO37gdeyclxN6UaInIUtlA
	tCQuApUAGk9duIEbjXRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNtC6-0001iv-Vw; Fri, 25 Oct 2019 06:35:31 +0000
Received: from mail-eopbgr750070.outbound.protection.outlook.com
 ([40.107.75.70] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNtBw-0001bn-8f
 for linux-riscv@lists.infradead.org; Fri, 25 Oct 2019 06:35:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZwULGt8yzox8x6smak/BTkuC0nnMQokKqvzdNc7QKXxGsJv6VeWP4ydOzICGW0sAEc8Hht4llfcan9n0zs665JAqk9c826TTqXVEJWY+DS5r33OE03Ee039NI6yrqqQHoiS20jGjZYLueLG+Hev3J0ZEZmnEbvQiWiV73Pm9fYbApAHzmYzgljjRC3FNQAoI/oL13BI6un1y9gmC0JeiQszjK+F6WE7nTl0QA1HWyK0kfS4nmukOZaClirN6yG0oGdwayAWE4utvUDRmKz3i46d3tNLy0cGbtOtZoeN0cTx4f/cmviVNrhrIrQ90l9EDGuK6N663mBMAwDlDPTMxYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nHIrccKEXZx35zwSdcmAV39WgHHzjbRrlQskAEkWEPY=;
 b=gA5zKjQ2AzxjcSlrLMKf5Zu+EfAjK1a85G34qP4DT3e4kqVnb17VFcYve4ZETtI2hB66A+U8tMMve9C+3qNClijecPtIkQ7qPJ1tTPc71KbITEP5A54yvIDAvJcwkRY1i8zw3zX+asmSoVo6yGRAGKGpelcKox70+N9Pnq2bXEyqYasxJn4kBUz5WjauduAcNj4F/RRtk6wIWiJFtI9lxAHYF7ZMaDcFIRJ1w3OUzxyrcPndYXaLXR0r7S2mAlahG7Kn4vphkPwfWHfRnT+6pJNmhmAHuMI8P3ljVTMHZ8SG8Q3INwXsod/p2LezDD05o5DiU98CCwfGa8LH81QDaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nHIrccKEXZx35zwSdcmAV39WgHHzjbRrlQskAEkWEPY=;
 b=AN3oWa+iHaV1DZrDP2O18IyzBq9IhWirmVMQifEK9q6ToaKgrX28wL03mJ+GxZ/raA54DeZ/vjK9s0ttTlreQDqJpibJ6xCYa2dfaP7ot7m1/1ix8OqD6BrCfAOsSfnzF9kXeliawvJAe2tULINuHTCxN5Fs2Q/GRr2zt9bAhAc=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3798.namprd13.prod.outlook.com (20.180.12.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.17; Fri, 25 Oct 2019 06:35:16 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::c069:f0c7:760b:faba]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::c069:f0c7:760b:faba%3]) with mapi id 15.20.2387.021; Fri, 25 Oct 2019
 06:35:16 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "Paul Walmsley ( Sifive)" <paul.walmsley@g.sifive.com>, Logan Gunthorpe
 <logang@deltatee.com>
Subject: RE: [PATCH] RISC-V: Add PCIe I/O BAR memory mapping
Thread-Topic: [PATCH] RISC-V: Add PCIe I/O BAR memory mapping
Thread-Index: AQHViktonODm2JDbF0ujvmchxtIALKdp+k0AgAAHp4CAAOTMQA==
Date: Fri, 25 Oct 2019 06:35:16 +0000
Message-ID: <CH2PR13MB336820C83536BF58C6EDDA688C650@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1571908438-4802-1-git-send-email-yash.shah@sifive.com>
 <c4817ec1-4e50-5646-68f0-caeb0ab6f0bf@deltatee.com>
 <alpine.DEB.2.21.9999.1910240937350.20010@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910240937350.20010@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14e6593d-8c96-4156-f35c-08d759157fa9
x-ms-traffictypediagnostic: CH2PR13MB3798:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3798824F196E356F7BDC67218C650@CH2PR13MB3798.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39850400004)(346002)(136003)(396003)(199004)(189003)(8676002)(305945005)(8936002)(81166006)(446003)(11346002)(14444005)(7696005)(476003)(6246003)(66556008)(81156014)(66946007)(7416002)(64756008)(66446008)(76116006)(66476007)(6506007)(53546011)(26005)(76176011)(186003)(66066001)(86362001)(99286004)(71200400001)(486006)(25786009)(102836004)(71190400001)(44832011)(478600001)(4326008)(3846002)(6116002)(14454004)(229853002)(52536014)(7736002)(9686003)(33656002)(2906002)(256004)(110136005)(54906003)(55016002)(4001150100001)(74316002)(316002)(5660300002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3798;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AjmcaU0Lot10SoUatcJ2lfNZLIO5AQsdgpBkXrDjCumogdfR8MxIqlXAJP8awfYPMCv8twSHL/2PvYH7u0SE59boWh/K+U/zuLKDK9flmMV1WNMvv9594/4Glg5LALG5T9k4OQAqR6rAGNzMuD8wOsv5GF/l4uJXwiJxn94plqqP7zzzkCYGKEBzukw3m8GtV6DtbwsNmpSeiZ+BKj9xrCUD0rYLX3fVxyM5B6KIj3Y1Y+eLwXEGi8M3C8Ki/V1D+0R1MXE+TJH+XZHHlq8DS/HGv9ktKgRfNGpksaCG5p8Jflhmq+GcTK7Q/ak9+FUcknXZpmKyO6TJ90pnSrkpg9e2iEGEi+Eq85jeYt2MqrBGjv72zj1qbWX2ueBUN7sFbYg/AZrIUNUVl7pXHx3jW0gb7geU6SaMeGs7NuwNVN+SYp932M9IPnaigC34CS3M
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14e6593d-8c96-4156-f35c-08d759157fa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 06:35:16.5045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tp7XZ96WdrU1ampxmcqzLYin5BxPUY8abvs0oN8kxQ7VyPYlZzwTNnYZbTZPOE4ICD3dCQEJghAL9S4AYAgSnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3798
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_233520_399794_627DFA8E 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "sorear2@gmail.com" <sorear2@gmail.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alex@ghiti.fr" <alex@ghiti.fr>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "Palmer Dabbelt \(
 Sifive\)" <palmer@g.sifive.com>, "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@g.sifive.com>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 Greentime Hu <greentime.hu@g.sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> On Thu, 24 Oct 2019, Logan Gunthorpe wrote:
> 
> > On 2019-10-24 3:14 a.m., Yash Shah wrote:
> > > For I/O BARs to work correctly on RISC-V Linux, we need to establish
> > > a reserved memory region for them, so that drivers that wish to use
> > > I/O BARs can issue reads and writes against a memory region that is
> > > mapped to the host PCIe controller's I/O BAR MMIO mapping.
> >
> > I don't think other arches do this.
> 
> $ git grep 'define PCI_IOBASE' arch/
> arch/arm/include/asm/io.h:#define PCI_IOBASE            ((void __iomem
> *)PCI_IO_VIRT_BASE)
> arch/arm64/include/asm/io.h:#define PCI_IOBASE          ((void __iomem
> *)PCI_IO_START)
> arch/m68k/include/asm/io_no.h:#define PCI_IOBASE        ((void __iomem *)
> PCI_IO_PA)
> arch/microblaze/include/asm/io.h:#define PCI_IOBASE     ((void __iomem
> *)_IO_BASE)
> arch/unicore32/include/asm/io.h:#define PCI_IOBASE
> PKUNITY_PCILIO_BASE
> arch/xtensa/include/asm/io.h:#define PCI_IOBASE         ((void __iomem
> *)XCHAL_KIO_BYPASS_VADDR)
> $
> 
> This is for the old x86-style, non-memory mapped I/O address space the
> legacy PCI stuff that one would use in{b,w,l}()/out{b,w,l}() for.
> 
> Yash, you might consider updating your patch description to note that this is
> for "legacy I/O BARs (i.e., non-MMIO BARs)" or something similar.  That
> might make things clearer.

Sure, will update the description and send v2.

- Yash

> 
> > ioremap() typically just uses virtual address space in the VMALLOC
> > region, PCI doesn't need it's own range. As far as I know the
> > ioremap() implementation in riscv already does this.
> >
> > In any case, 16MB for PCI bar space seems woefully inadequate.
> 
> The modern MMIO PCI resources wind up in jost controller apertures, which
> as you note, are usually much larger.  They don't go in this legacy space.
> 
> Regarding sizing - I haven't seen any PCIe cards with more than 64KiB of
> legacy I/O resources.  (16MiB / 64KiB) = 256, so 16MiB sounds reasonable
> from that point of view?  ARM64 is using that.
> 
> 
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
