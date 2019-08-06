Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8459828B2
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 02:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o76OBc1BzSjdtmgJsGViYFd6kZzG7qSi8sp5qXvcMuA=; b=ZXhGzOrJPKt1w1
	9vpJtrqePMvRRSDZ31FAZy7OdUBGsv9Q0VfE/eAvTlbXKhJeNxJFiO3xGrT8YoIz0fvYhe+PL5MZI
	qb6IMSSnQL7If8NyGeh0+cKjIEw+Iyl5JeT72BxecGXIHptQQ85Wj6OAn3T/HzcZpC2JlqB/JUvHJ
	nTVLZldF8/ZHxkqxFBCKJj1enxEm17F615T3M/jV7ljtugJ4dQWYwomnJ7UF3i48pxB2NXffS7OqB
	GwfPOlNhh3tDnyOxBTjcPO0gGu18Lv0yJrU1LxVnlu+e91ST/KvWmTi/SAOxuGA9S2STXsON5D/a8
	lXD0/AiAQmKf9mORT9/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hunMl-0008O8-Gh; Tue, 06 Aug 2019 00:30:15 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hunMh-0008NT-CM; Tue, 06 Aug 2019 00:30:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565051412; x=1596587412;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=X03d1DQDt0vACEp3mGe33fUZh/62m2O7J39JOOCS1dk=;
 b=n8q85iBbt4beRpcEFVWvM0s3UKASubSdsrRQ12fvBUAn7DE1fAC6VE2o
 trsJTSBpbFfFM4FG9fDhrXAw+5i2E+B2fFSquZjMCOtWMdo5QOLw6PFCc
 ORHuEKWRPBMhuQhS74ESqRfm0K7JJhkjJ80I1COIS796fn+Pi/T+M0+VH
 gGVp/vKdzpZvGC3J2aj/fFDjePSbom+FR0ILgDcVusqx+FPpRVT6ojlYq
 OpggaoAT/cKn9zFYGewB0AIFvZF6ID3JL/tqKT04QhyWkjcFlvOKO/3qs
 bG1Nj3zcx/pJnuo1vYYg6EFtqDF0jKQAYrDDuUInJr7YW8f3zxbnTLWlS A==;
IronPort-SDR: hGKQHG/t4gc6j8n5bYxrvzJ1BQyjs4VddjVkIChD+pDYhi0TlvtOrNixxTz4OpbLM1CwXNP2Be
 MW8xeKFtpe5tnj69lUUfMDIsePYqOweTBbJKqtn4cfBbnVj3t5mmSvPUFIgU37nYwr8WQMmAb2
 DlL9h2bsu+vd5iLXrhLTD0bgFZeIGIabse8kuGyz1xOO884XivG2gL+FetpGXOgsZd6epGS0zr
 uulPEkNoqwXm4n6/eMHmo8Q7uJ5ylV5AzQl527xwHE1acOTkxGtsMfo0SIcDPbM0w8Qe4srofv
 LvE=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="116043872"
Received: from mail-by2nam05lp2053.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.53])
 by ob1.hgst.iphmx.com with ESMTP; 06 Aug 2019 08:30:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BApRlB6IU9Ka8rJBIFTi/3sVRX5u+fZhAsraGTBEGuZx/XU48QrxB0atf4+qoGH2BOyABPiz9PNvg8f7JjexPPGYUYbiMzhCCkLYrttq5Vt2zIuA+pfz1D/1VHLNrvkvsuHc9SSQz4cHjY41mesDu2Ktz6t1oNFY95K6WTTGtS5trqEXb8H4ECSawmeM85d2sQpIWaYpbcd+LmZuZvlFhwMKHe4WX49/4OgGATnc90q/EXV1vVgT6JBscPirvdRQcBFn7qvnuN6p7BIZmYKuFziJlIJlNPfuRfZVc+qU4ktof/UFzkeHKpraqmsqL/GCzYV2fRCCP1Sl6R0gPIIpOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X03d1DQDt0vACEp3mGe33fUZh/62m2O7J39JOOCS1dk=;
 b=NS6KXDTxGDFnzpzTUN9gNT7aCcJsq+PznSQWeFR3cMbka1Dq+VcyGUXgS5pkvKTrU0e7PidEeCDontpx6d8dXeJ7KtadyiiZ2QtTtlVh7TsjIhXzF8SNymMriGuzpPu0YcALUlfzKg9T2l2Vd0R0MBJvoiu0Liy6hEAH2f4QHOygJ4j3UnMzW9YEf9DQrPbfMvfNO/bs7A33SDVwfyot3qT3hptMwXevBPx5fzZVOw3v4ZgEBUARq94q8KqTCTPXHja67oAOd2La3PGVuMK7MQ4vgpn6nWoQDJLmjX72ySmbWstUOBaHLNkI3Wl1zmynVX3/WUVr63AGN8WthC1zJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X03d1DQDt0vACEp3mGe33fUZh/62m2O7J39JOOCS1dk=;
 b=tYXG1rpLlqAOzSgd4yhDw9fgWQfm1H1lu8yCGDnJZzJZXgZad/Aq0wz2GvYLBPAF7h2au2Th+up3HF55ewY6776rDPVSrTakSvPMljtoeeO1Z7NsgbmxDDd9yNdZkVDchWy8nbbHwa2OjreH+6JFnaD+zXFOWCJxZU7PRuuvGXQ=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB3797.namprd04.prod.outlook.com (52.135.214.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Tue, 6 Aug 2019 00:30:07 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Tue, 6 Aug 2019
 00:30:07 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "troy.benjegerdes@sifive.com" <troy.benjegerdes@sifive.com>
Subject: Re: Random memory corruption with v5.2
Thread-Topic: Random memory corruption with v5.2
Thread-Index: AQHVRfuSsQxPefvVWkuKVI3774eLbabiNjEAgACFxKKAASQFgIACwxcqgACBRICABX5VpoAAB0HzgACGHACAAB7XgIAAAVsA
Date: Tue, 6 Aug 2019 00:30:07 +0000
Message-ID: <d9accdfb1bd06897b51c3cf1c02e2014134b9b22.camel@wdc.com>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <mvmwofw68ji.fsf@suse.de>
 <CAAhSdy0ZPk1So_ieahn5dVaye1WajRmwkYHhSox4FcvuOuZchw@mail.gmail.com>
 <mvmmugn4sd4.fsf@suse.de> <mvmimrb4r5q.fsf@suse.de>
 <45823bccd515273e08bd2e0c634b0b207e60db9c.camel@wdc.com>
 <5A726234-65BA-4248-8D07-CDADDAE44E2D@sifive.com>
In-Reply-To: <5A726234-65BA-4248-8D07-CDADDAE44E2D@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3b9766e-0ba1-4f80-56c0-08d71a053be9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB3797; 
x-ms-traffictypediagnostic: BYAPR04MB3797:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB3797DBA4D2D5847748608DBEFAD50@BYAPR04MB3797.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(189003)(199004)(68736007)(76176011)(25786009)(81156014)(966005)(81166006)(476003)(2616005)(118296001)(446003)(11346002)(102836004)(486006)(8676002)(6436002)(6486002)(71200400001)(71190400001)(64756008)(66446008)(66946007)(53546011)(53936002)(66556008)(66476007)(76116006)(6506007)(478600001)(6246003)(229853002)(3846002)(6116002)(4326008)(36756003)(99286004)(86362001)(7736002)(54906003)(2351001)(2906002)(305945005)(14454004)(6916009)(316002)(14444005)(5024004)(6306002)(2501003)(186003)(26005)(6512007)(256004)(66066001)(5660300002)(8936002)(5640700003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3797;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gTbiyIhP2CwAKlvxiZryBJqI4fECJlTugE14spARuvBKZ3FePyR6y8kgsElciFhvAwo2fYgpMi1oanZiyJRuVzALZ4FXQDH27jgGDeXcImC7WG39r6130ncrE9M02cWr20vslLfXEK1yp9LzrLj6hy6iudDTszkmYvt1sl6Wll13HGAqse0ovh6H7RQEvhwneKTxltEw2N+3KfZ3knr3T63/Ya2a9y1Q7k2SXLw7EMFJ/Kh4KooTFwNDWf8spFdL5H7r+rOVim5KIoDCMxHtXCQSKUyRxnUDrFGipWGflARfciNDxzAXmqC9pxV7boFyDB9cPCK8RYGolP3lrPnanPyZozfzkqgajWUL9ArYvmAEuIcP5iSz+2J0TeC8xoK8tSVd5YDrTDPQxQqsqW+35MQW9SG800TEUJ/jOBpGig0=
Content-ID: <B850EB550B60224CA9E5B69FCB2E4F9A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3b9766e-0ba1-4f80-56c0-08d71a053be9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 00:30:07.6112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3797
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_173011_547787_B762A315 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "opensbi@lists.infradead.org" <opensbi@lists.infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "schwab@suse.de" <schwab@suse.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-05 at 19:25 -0500, Troy Benjegerdes wrote:
> > On Aug 5, 2019, at 5:34 PM, Atish Patra <Atish.Patra@wdc.com>
> > wrote:
> > 
> > On Mon, 2019-08-05 at 16:34 +0200, Andreas Schwab wrote:
> > > But this does help:
> > > 
> > > --- a/arch/riscv/include/asm/tlbflush.h
> > > +++ b/arch/riscv/include/asm/tlbflush.h
> > > @@ -49,7 +49,7 @@ static inline void remote_sfence_vma(struct
> > > cpumask
> > > *cmask, unsigned long start,
> > > 
> > > 	cpumask_clear(&hmask);
> > > 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
> > > -	sbi_remote_sfence_vma(hmask.bits, start, size);
> > > +	sbi_remote_sfence_vma(hmask.bits, 0, -1);
> > > }
> > > 
> > > #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> > > 
> > 
> > I am also able to reprduce the issue while doing a install-locales.
> > Here is the temporary fix that seems to solve the issue.
> > 
> > diff --git a/arch/riscv/include/asm/tlbflush.h
> > b/arch/riscv/include/asm/tlbflush.h
> > index 687dd19735a7..29b2bd7c9923 100644
> > --- a/arch/riscv/include/asm/tlbflush.h
> > +++ b/arch/riscv/include/asm/tlbflush.h
> > @@ -55,7 +55,7 @@ static inline void remote_sfence_vma(struct
> > cpumask
> > *cmask, unsigned long start,
> > #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> > #define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> > #define flush_tlb_range(vma, start, end) \
> > -       remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) -
> > (start))
> > +       remote_sfence_vma(mm_cpumask((vma)->vm_mm), 0, -1)
> > #define flush_tlb_mm(mm) \
> >        remote_sfence_vma(mm_cpumask(mm), 0, -1)
> > 
> > Can you please verify at your end?
> > 
> > 
> > While your fix flushes the entire tlb for every type of remote tlb
> > flush, this fix proves that the issue is with flush_tlb_range call
> > only.
> > 
> > I am looking at the OpenSBI/Kernel implementation to figure out if
> > it
> > is an OpenSBI issue or something changed in kernel recently to
> > trigger
> > this.
> > 
> > Additionally, do you know if a particular or group of locale
> > install 
> > is causing this issue? 
> > 
> > It takes more than hour to finish the full install-locales on
> > unleashe
> > board which makes it bit difficult to try out possible fixes.
> > 
> 
> Did you reproduce with SDcard, or NFS?
> 

I am running it on a nvme SSD attached to Microsemi expansion board.

Kernel version: 5.3-rc2
OpenSBI/U-Boot: Latest master

Regards,
Atish

> > > Andreas.
> > > 
> > 
> > -- 
> > Regards,
> > Atish
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
