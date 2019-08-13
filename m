Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEDC8ABDD
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 02:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSmlUtaUo8oSar85nqvvMWkdzgTKV67TyhJg9N1Ggqk=; b=em7kEKurTMJ0YN
	oJIeVa44oD0qw6Wc+OuV4jmTOIjV22cbzT1y60SXPvs4wf4o27XxD2EAdYAywKPYx2LTlhmzZj0fX
	yTF7Wbj+aEYN9eev9sw0EeHdmd43i/e0ayDwcXPhbS5JVMFFAno3HEdw8tX+lH8JxkR0HBUZA8+uC
	C0PzFEtIfQGQU+7tvTdnSl6EvArmPkGOxT2tmcYtZXHIjLD3t4wGRKMBT2LEV8k2z/a2CEseUFf0h
	n+zJc+RYHE9zSt4NjDT/cj7hzoQtwSxUhFyTfLMSshLiLhxiSEj9fST7fqCbOVLJgbdN/fR2IqodZ
	rxqZBgbAxqmw+gUZ849g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxKTH-0004Tr-80; Tue, 13 Aug 2019 00:15:27 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxKTB-0004TP-8J
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 00:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565655321; x=1597191321;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=I5BUH+4Sq+xFTpc6mFQ+mMgWw41G1ncOymUx8Ld91S4=;
 b=qC4u5F+fG1wrtzDUFuIerd4rqkoC94/Z4ZbndY6W6IXtubve0ccaAeFi
 v2YM3Bp1I1MbXfFZozuMLjiLHh3lDcy9Fl75nvDCv2cwLORa8sExXOClm
 vGx2W4/gRl58nIVZjpkDGAhhGxWmtHgZvESfaQvVlnqcu2piO2A/CirFf
 kRMcF/z71ej4mGPB9nlMiJMkUwJnMa8M4AzYJdNJf95I7RvcTxNaPQkN6
 ro5Ai5IcTLIDWIjkiZqyqrNK3YBleozo4C9km6jXB4DyOTyG2SPxbA60F
 +lJijWIoMnYaivZbQYt4VrsBfBfaMYnDl6Vsiv1JaFn5B5AqgtF951Ivs A==;
IronPort-SDR: 3R5NBlQy/p3EeDeOY9rUp5Osj4hftsHVtIYxwIDhfl1v0od2gA6CxxEOLss+olMq4qffc0ElFB
 OBxC0jZbl1P1WVRUk4eFt69A6kIUQnzyHbvRvsln1zUZCMJSmfz6Ti8JLxB7H4jUdfLTWGiUic
 G3iA9e6dyV6jIsMbkxvG3DxAfOleixS0wq40IzPcEvsOSoK/xHgyS8iGocZ+PcszZGbUhMDmwl
 8ZxmrDIuGbd/J3a4uyjvwi5cpLZjUc7BfMsiU+IHglQul9KV0ZLzhh6eN8PEUvrKNpn53RAAfM
 hGM=
X-IronPort-AV: E=Sophos;i="5.64,379,1559491200"; d="scan'208";a="120289057"
Received: from mail-co1nam04lp2058.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.58])
 by ob1.hgst.iphmx.com with ESMTP; 13 Aug 2019 08:15:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CUeEZZGoLvIfDEvGZLtMcbP7n4Cc6nFRIpgyseub0UG2+SjsWYrMZ7I3mJFerGlYWEnl9L+6ExSDeOrr0STI8gsLm+GnmV5e+KvpaSTRB1U8wecN9S3ZGP0B81P7IPRKtsWnGQ+FdcZB6pkz3HxNKP9AfWgnOHbXaDrn9kWhDc0AEy1Bx3PZr0862TwjBg/0XaU6oEuWkmoIxrWjH0v/iGSFST3mTjC47U2kBxC7RC4x/ADl9m1MNyFniBBEZEcRdr3Ymk1qestdppKtH0bEApz01ZRoAYUpqSnD1BrXtca8may3v6KfzhIqH3d65HdV4x1qTbMwCcRKj2x0PLw8Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5BUH+4Sq+xFTpc6mFQ+mMgWw41G1ncOymUx8Ld91S4=;
 b=lfeApC/jfKAj4urys5QqbZkg+oIiVQ7zAcvzEhi8JnoZSOC5EcLOmaVqoyo5ZF+vOp5y34Gk0cpiOCEqQXEPopronQLC98mlwpPo5t6cLxpsC5kt6w9Jf2SFlr457zzk6FWA3rHn9WuIih++VuKWXpBWQp9q2p5It2OMKUsKgnAooCdp6Iv+qxjHeReAh74ugNlOfYuE/eptZErsbV+fKH4Lf46Ty1iTk2zmf1GGCR3zuHs3TCdfoDHa8u27cC9G9fBkE82MXGSzQ9k1TSZwh6I51fWV/qX2Lj5MQUsFfllSUVvn3U9EB+lOeFiYODJGzAqhn2QIOSpJpurvS4oW6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5BUH+4Sq+xFTpc6mFQ+mMgWw41G1ncOymUx8Ld91S4=;
 b=o+STR06ME34pa02YIPGG257pcJ9q5sBBNBIu8CahC5AYrVLwxvae8V5mcS/qc8a0k2f6FOWhFZA6zPMosmbnJQpEuFnrrgbECrd/z7UvAf83yKe/yNUwUXNuzczWT+uH6r1VOV5Ey8soTVcmUedIb5QnFlALe4N+qYXHjkdzGaA=
Received: from SN6PR04MB3791.namprd04.prod.outlook.com (52.135.81.24) by
 SN6PR04MB4159.namprd04.prod.outlook.com (52.135.71.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Tue, 13 Aug 2019 00:15:15 +0000
Received: from SN6PR04MB3791.namprd04.prod.outlook.com
 ([fe80::5dbf:a641:a0da:4c32]) by SN6PR04MB3791.namprd04.prod.outlook.com
 ([fe80::5dbf:a641:a0da:4c32%3]) with mapi id 15.20.2157.011; Tue, 13 Aug 2019
 00:15:15 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Topic: [PATCH] RISC-V: Issue a local tlb flush if possible.
Thread-Index: AQHVTxz5XkoGRRVrekixM0/zCIcSeKb3ngaAgACcGwA=
Date: Tue, 13 Aug 2019 00:15:15 +0000
Message-ID: <f58814e156b918531f058acfac944abef34f5fb1.camel@wdc.com>
References: <20190810014309.20838-1-atish.patra@wdc.com>
 <20190812145631.GC26897@infradead.org>
In-Reply-To: <20190812145631.GC26897@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bbbad3a9-701d-4dbe-d071-08d71f8350d9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4159; 
x-ms-traffictypediagnostic: SN6PR04MB4159:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB4159EB53D7B8F03ACE483FB6FAD20@SN6PR04MB4159.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(366004)(346002)(39860400002)(189003)(199004)(7736002)(76176011)(8936002)(5660300002)(2501003)(186003)(14454004)(478600001)(99286004)(1730700003)(6116002)(81166006)(66066001)(6512007)(66476007)(66946007)(8676002)(91956017)(76116006)(66446008)(64756008)(2351001)(66556008)(81156014)(6916009)(256004)(3846002)(26005)(6506007)(305945005)(316002)(53936002)(229853002)(118296001)(5640700003)(14444005)(446003)(54906003)(486006)(6486002)(86362001)(71200400001)(2616005)(476003)(4326008)(36756003)(102836004)(25786009)(6436002)(6246003)(11346002)(71190400001)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4159;
 H:SN6PR04MB3791.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vq2Xz8tC3bskWu0PU5T48TsSWDTBerstlUsRBZr4QgqjRxg7oFY2ToqtEWsim7rcT8WXxfYStkavuMbcp24zLoduQKB5kRa1yQzopMXDC61A2ux7y1xAU/NDPr8l1q/q+yeLlkQ1wROLcfyuOgFCLDBKHUgqpexmtWshEqa6gTMokwpl+qkbRfbla7U91UR7K671mDkdDQmbXiS1ZeptPT4Or82t58mj4WSdA/uQcb42DQWX+C0HC4WWMxsrrqoAAAGQj4h3FZ3rJIeOyIA/1XplFwh1tYnpUiZhX6NIoxPBpG55KZnOcvSTvAhUakTjTo/qAU+Vt2L+4sqW1AHAjCUKvSRaj6Egrehbb6a+V0SjseZa6RgxhPPXh/FfIeoKzMYHIrvEB8Uzfv1lbMZQyFusbw6wWKYUAr9iBxaJjl4=
Content-ID: <92E2C94787F9AD4A9C9452C8752FD816@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbad3a9-701d-4dbe-d071-08d71f8350d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 00:15:15.2763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FLTreNXqh7gyMae46DIOuHK/E9+ORc4hq+WUKWae6RY4Gtsx0Ji2k5vZNV69TeCGJCUok6KzaXE4n80G6JfJFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_171521_460741_AD1EC9AF 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-12 at 07:56 -0700, Christoph Hellwig wrote:
> I agree with the comment that we really should move this out of line
> now, and 

sure.

> also that we can simplify it further, which also includes
> not bothering with the SBI call if we were the only online CPU.

I already had that optimization in my patch.

> I also thing we need to use get_cpu/put_cpu to be preemption safe.
> 
ok. I will update that.

> Also why would we need to do a local flush if we have a mask that
> doesn't include the local CPU?
> 

I thought if it recieves an empty cpumask, then it should at least do a
local flush is the expected behavior. Are you saying that we should
just skip all and return ? 


> How about something like:
> 
> void __riscv_flush_tlb(struct cpumask *cpumask, unsigned long start,
> 		unsigned long size)
> {
> 	unsigned int cpu;
> 
> 	if (!cpumask)
> 		cpumask = cpu_online_mask;
> 
> 	cpu = get_cpu();
> 	if (!cpumask || cpumask_test_cpu(cpu, cpumask) {
> 		if ((start == 0 && size == -1) || size > PAGE_SIZE)
> 			local_flush_tlb_all();
> 		else if (size == PAGE_SIZE)
> 			local_flush_tlb_page(start);
> 		cpumask_clear_cpu(cpuid, cpumask);

This will modify the original cpumask which is not correct. clear part
has to be done on hmask to avoid a copy.

Regards,
Atish
> 	}
> 
> 	if (!cpumask_empty(cpumask)) {
> 	  	struct cpumask hmask;
> 
> 		riscv_cpuid_to_hartid_mask(cpumask, &hmask);
> 		sbi_remote_sfence_vma(hmask.bits, start, size);
> 	}
> 	put_cpu();
> }

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
