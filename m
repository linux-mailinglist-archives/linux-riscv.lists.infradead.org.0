Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DF9C0E2E
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AaxfvYlw78N0qDDw8/wMy6lfCkKwNhq0cbpifR0ccG0=; b=lndou6UeG3Lj7K
	NnteLFa5ojawqHmNrjRwTpKELiqUVed1psi3nnTOWRygDNleCGVtEGLfdtK5oW70wPXdmC2hcw4L1
	zbq3r71vYORRQuxlJkjhyoQ3hNMTV+gvM4XvWWYZaAO8rtrOoZIVzUqaJxeMqQUdTc/3KWkMxH6Vl
	IXvY/nFG1n4XRJAOzUMitJc66Z1nQNgAkkZLQezCyUsAiNad9BD6Gu599Aq2ywSQzofTDcluryPmP
	Mu1sGMA8ZJ0pX/JJEAOOr9PGld+h2+XVDaO2jwwEJ5k/Uz0uaqsqSBGQUCy63ZkuoU9NthaUjjvWd
	Co2DmKPgNIe9AtjSOJ6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDzBO-0007CN-F6; Fri, 27 Sep 2019 22:57:50 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDzBK-0007Bz-QN
 for linux-riscv@lists.infradead.org; Fri, 27 Sep 2019 22:57:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569625067; x=1601161067;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SDITdhgUcsuCvLZN0TXx9BDBXxw8ZmL76yzU5ORKEyI=;
 b=KstdKr7rNJ9r5PK+ZSCN8jtl1ZNoe9yGg44wjjUzK5d6IRu6XxoJrsGt
 hdOyBxGgjD8bu5pXsFueczG2ySLwSVJjEWHIXjCBUMeULkGLZ1z8e4m9c
 H2ol7BzFyt6ok3mVOMPyoUZp9CkGnAv1r1lfdYMbc6efBXISoQXitCugb
 3QIZLlkUfxFitcXHC5cdiOCoY8nma+qEKg6eR//HDJ2dc+0Urw2n0RC0D
 HnjdOIGHOpzbSF1u/cE7Q5sPoi5aBWvPuqfakbXC/mq/tawglN4r51xIC
 T1g+z6jp5frNP+qJ0LGICH+dsHzki9nnPtYL8KGMvJu79oZCHu6c2Uq5f Q==;
IronPort-SDR: s1btCiq9s21XjKH5Rv7L5wmsx2gI5SKvyLCzM4BuhZy+rlUBGQbQgbpS95SMQLnWPepT6xlFxS
 a8IiB9D4fvjElbhS/58GrI0fH6NknRjnCZPvXoPtlhGLoSra7275bFg2EdC+H4ef1LTlnPNqY6
 IFcClCEbUbsyi1ZNjevkr1CTo9SCnOxxcuqXgejQF44byo1AYzVY6sz7WfE77UscRmwnTCv2/R
 dE/ZOE2tYtP08TDVACNtd5Yx3tRiRtMPYylNxTagA6YKGFFDMnSy4FpJSpHLMgrYjJMcq7FwbY
 XFU=
X-IronPort-AV: E=Sophos;i="5.64,557,1559491200"; d="scan'208";a="120089266"
Received: from mail-by2nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.59])
 by ob1.hgst.iphmx.com with ESMTP; 28 Sep 2019 06:57:46 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nFBpj8tpNKA+pIvm0fdQ+miNSsw8bWnHgD0pY5gU6YonPNdCCcyKoi0L7xRtZvR+EOLUfkN5/a0Mn7PQmkoeqLzu/YSSgAH89ufx3Ir/We/B0aiuXwpKnUskSE9kMRiebuszXrAEHV50n+kfSJwNFQ641nLyH+YrhOtwXXaKzgT4TAZTIoChYetPB381UWFtRSPqgcul/4T5keK5pKpuk3xZLTL2LCyHrR7jYMyjoRiuzdyjRg3i3BhM5K/6XD4AeWryMyfBg/dV4QQ/LkhWJ1A8+TX13cr+9B8LE5hf4aYRvXn6tZiSspOhwra+KyktdbcyF/VdXpxy9em8bK4XKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SDITdhgUcsuCvLZN0TXx9BDBXxw8ZmL76yzU5ORKEyI=;
 b=RpGPWG7BPDgQiYPpwoTQetQMmI1KTpZtXTycU3nzXznlDX72nw8XcVFk4fWNPj7R8rvhBUD/Q2JEjKsAIy4cx7oLrX519w1aR6aJ71ciTbdX6nC0O70bXSkldg8atO5PTR2TjJa+2ZW0xL3hBJxesl5AXElFTlPfNWgrekrjJI5XCODFjs0y4txiiZkNl8DoiUhdeTH9IW78HBbxI4sNwpzFHg/+dEqbDBBQ5me90QDxttVEuJhUXZtOsAJwbvi6+hoZGaHmnuo0t1ldkzlEb9SFTBIuhpEfFUpX5RC4ZEElqR5rqvi3hdJ5q7UZK8mvuPa6b8kPEOqAO1V6fitmgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SDITdhgUcsuCvLZN0TXx9BDBXxw8ZmL76yzU5ORKEyI=;
 b=spGf66WL84yqLT5leVCpgau/M+q+EGwfKYK9Rfg3oJGISssSf9HUN2HDu3i23tlpTc/OXHPtL659yvt2BX+BXne/uubUlJHGEoRQcbMQTDAT+4GiwprlA2rROiFaJl+bpzfznAylUYSNMGsNi0S5sKVeEh55aJopq2X+9Z7MBzU=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4982.namprd04.prod.outlook.com (52.135.233.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Fri, 27 Sep 2019 22:57:45 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2284.023; Fri, 27 Sep 2019
 22:57:45 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [PATCH v2 0/3] Add support for SBI v0.2
Thread-Topic: [PATCH v2 0/3] Add support for SBI v0.2
Thread-Index: AQHVdMfWU3eO8hvHu0yu+KSplvbFjqdAGZ+AgAAKwwA=
Date: Fri, 27 Sep 2019 22:57:45 +0000
Message-ID: <8683f51f26708a468bcdf16a48db1cffac6c28d8.camel@wdc.com>
References: <20190927000915.31781-1-atish.patra@wdc.com>
 <20190927221913.GA4700@infradead.org>
In-Reply-To: <20190927221913.GA4700@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd4d8733-3b95-45a4-6d8b-08d7439e1c6c
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB4982:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB4982FF78DA195B915364E56BFA810@BYAPR04MB4982.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(366004)(39860400002)(396003)(199004)(189003)(66066001)(76176011)(118296001)(6916009)(14454004)(25786009)(3846002)(66446008)(14444005)(256004)(71190400001)(71200400001)(66946007)(64756008)(66556008)(66476007)(2501003)(54906003)(316002)(86362001)(8936002)(6486002)(5660300002)(81156014)(8676002)(6436002)(5640700003)(81166006)(99286004)(6512007)(1730700003)(7416002)(6306002)(6246003)(6116002)(6506007)(478600001)(7736002)(36756003)(76116006)(26005)(2906002)(102836004)(446003)(11346002)(2616005)(486006)(186003)(4326008)(476003)(2351001)(305945005)(966005)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4982;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gAqdxopCLKayQMaxECeiLMOpIjnLrFQPH6WjaGKcYZMY6aOloMVEo7Umx6Bpe8n+nxli3d0EhL7eVdPjzx0vuzEAnGtrVGjP86V7DzD1PyGIMsic6q3htIUWvpGCOmKDFbrLp/f/Kvh2Z2GZBEvVGPtDefM6CBAn3BNFB3uPvDvIERGIdWxC9woffIcUFHnKXuI9xaaYY6HPWLyqakBV0ykn616DYQpKxEUjXvbpzp/uNVUPLoXu1tNt7D9hiY33GNcdUKsB7/efgMuSeoKzDngSEBnhtnbA4F+ihpKERX9FtBD+THBbemN3BXfcK19iWMlLbUuUULFSzxwqqIXMLkxMM2OKKNAtegvCyZN321pgMSvsHFckXmDvBSIPdeVrkfwrnuzYYdmwJNaODw/CXhArCBonu+kQnVBupuWc5plp/6EUV5mwMQOj3xa2kOgYOulxycvGYwVd6r43xGAHwQ==
x-ms-exchange-transport-forked: True
Content-ID: <BAF98DD25B1D1241A065522E69662DD6@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd4d8733-3b95-45a4-6d8b-08d7439e1c6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 22:57:45.5627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aVq3MKLpZInMu908mR+gAJAnPnz1BxVfS4HJa7Ylnmkk2h/YESaI8afJN4bUYwv+Z2mx+c/seBlALGF2uY1Hug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4982
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_155746_866609_B7BEA4E4 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-09-27 at 15:19 -0700, Christoph Hellwig wrote:
> On Thu, Sep 26, 2019 at 05:09:12PM -0700, Atish Patra wrote:
> > The Supervisor Binary Interface(SBI) specification[1] now defines a
> > base extension that provides extendability to add future extensions
> > while maintaining backward compatibility with previous versions.
> > The new version is defined as 0.2 and older version is marked as
> > 0.1.
> > 
> > This series adds support v0.2 and a unified calling convention
> > implementation between 0.1 and 0.2. It also adds minimal SBI
> > functions
> > from 0.2 as well to keep the series lean. 
> 
> So before we do this game can be please make sure we have a clean 0.2
> environment that never uses the legacy extensions as discussed
> before?
> Without that all this work is rather futile.
> 

As per our discussion offline, here are things need to be done to
achieve that.

1. Replace timer, sfence and ipi with better alternative APIs
	- sbi_set_timer will be same but with new calling convention
	- send_ipi and sfence_* apis can be modified in such a way that
		- we don't have to use unprivileged load anymore
		- Make it scalable

2. Drop clear_ipi, console, and shutdown in 0.2.

We will have a new kernel config (LEGACY_SBI) that can be manually
enabled if older firmware need to be used. By default, LEGACY_SBI will
be disabled and kernel with new SBI will be built. We will have to set
a flag day in a year or so when we can remove the LEGACY_SBI
completely.

Let us know if it is not an acceptable approach to anybody.
I will post a RFC patch with new alternate v0.2 APIs sometime next
week.

> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
