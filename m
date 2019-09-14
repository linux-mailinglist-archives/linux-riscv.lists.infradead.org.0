Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE39BB2993
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 06:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7FL6IlBCnq6/haO9LA9D04Fie0rYThl1s4nvyEJyys=; b=CXqk/VgRil2j9T
	AsL0C0mxtETK2X1zmvYF7csgwR9mADOYgmJ4oPycwFDekK57shWDwkEs0YFkqmTtJlS+CEUPYKKCD
	XefhH9MXK7XoImxF8fS2yvBjsaLkVpgJUxXAOxrDBajZm9fMcDr9SYTbIK9Cm74TWPuZDAQFbIrnb
	FRHdwoVtfzJuiXx/y5ctfNziAa7SviuYvvvW7aVUaeP3Ueaf3m6uuJhGV0Zv1d52fNKJOPd8xmDpQ
	a5WeQ7QUICN096Pj8UWtmLqRNFyxSTGJuHMdv090pvcI6a1kM2TqiKMlGLhw85YdH3Ij90/k8DE0n
	Yl7bq0RMhJAtQcrJVdBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8zLs-0000A3-R9; Sat, 14 Sep 2019 04:08:01 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8zLp-00009g-JM
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 04:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1568434078; x=1599970078;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=h0u3s2DC5aWn/hXFlXG+/dfIbIhFBKc9lGVZll/3uEs=;
 b=f7Rd9QwO8esjp2QblvanKJz1yljv7dTu05yTq6BgBred6dJpE1MgXJIG
 +rRvZ7GLYykPZXSdvqiOIuWJHS/302+Pc+HKFrVFpv9eOCIK860oxYV6K
 gRGfdhuo9SN+s17DkB79+06uWTf7YS/UVMugPy+amZpTVSdVES0b3T7cM
 OipWghBBwpfOV9B4to5gvUK+zccMBkBANk/Bfj/8LsBvJoucmZOpmq9LY
 51uSepRse0JGNHRhTwK0w0gQbw98IUgOjN0S/9IPBPQNJcM00jSwiM6fD
 5qC+GqtuBE5jMpaoZs6eKuSLUj8HOa1wgjcN6L4wTMK/0DMN1vC0T01rW w==;
IronPort-SDR: di+viPlwd99f/29uVNb0uXIqF+s54QIlAzJTqycp53vMCIm3gwTuEZpjXQ4mV2EmqrU7CJDC0M
 9Nozr+fckPZYsw/3pHe9cvnXFwGjABapa4sIam5yekUQtChL3P1v5L8KYH6QefIBylEcG/o3R7
 I/jKCh0r38dhRW/oeHADP4dWamaBpgVPXhdoUZ21LZAJEj1hA+SyEYdqCpPiz3jgSNw9T4m84d
 kykI6umkJsqw7WofiMwZO7AoliuP6PEq8y4fK2yTpfHS/c8sImw6xXE+saPIGkeo9RwyDYhO3b
 /co=
X-IronPort-AV: E=Sophos;i="5.64,503,1559491200"; d="scan'208";a="119804557"
Received: from mail-co1nam04lp2057.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.57])
 by ob1.hgst.iphmx.com with ESMTP; 14 Sep 2019 12:07:57 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WlRIfsbwtzBp17bEwEyLAcp8OaMfr4WQh53QMX5orzZt8SWHaVuYNftMyd/ml7i/+io+s7smvd14LqjN5BcyZfGMShy4XqbYBsd+xyNN/7ss0khIk2blSDBUYqoFGJnuLbQhAKQKqeVH5tSP7u800lmqFIRJbBDsxFqTKlB0MBKVsPJtASNJfPgtg6e3lLSVA6xChSQzDZSMkOj4D3zBlfWo9esU9tza7jQzlW4sRYiT3yphAfeJfHeaAEuyB4++SPAl6P9PwEfYvv9lZndjGhdfn6l9PHZzKP8uh7FaeV32MshqBrJ+ZLfPzZmQ6kf82ELtv2/q5bZDo0elj1jtSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h0u3s2DC5aWn/hXFlXG+/dfIbIhFBKc9lGVZll/3uEs=;
 b=G5XrdVdSRsFvNiTqsM16rUHeL+MxP90ng/MJ1ApkYETvnFP1/5Onemw+ljoE1OXGwzTsP1Qw6G72h45LD+Fu3PJBATLh2Su7oxDNPCRCERREUA8pqWB2QiaadRCyZow7IvVLs5RzdTRR2lCuRikCmytyjakSns/dNe0AoILjHKcOHIQGBSz3m/i3S9svK1MlsGRUaXjwPVconyahdpqP49ZXBNRTTr6Xni9mHVUz3holhj7Ei/AdrpAc37cHyQtLKohc0akdhOrfkkgrhXWY05gLQmlWyQcpIauqHBaD94SfcuT+GQSOqZFSqMrEt2dIhh9Kh70s8Jwnv6hXLjeC+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h0u3s2DC5aWn/hXFlXG+/dfIbIhFBKc9lGVZll/3uEs=;
 b=GcXaMv9ZRAiyG4LTVORVv/FGXQOzwu2EF7ptURMilvn8CO16ultltsDrSg8cMJNUycDwub0ly80AdLxSuHLyzRYZqKb8vMdTQZIoFRAlf4Ttt0M3hM4HiF2ix+nz35etFzItbynfzJeVxJhnCU4yAuAJrzP7g+k6/wq6wFPZKhw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4357.namprd04.prod.outlook.com (20.176.252.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Sat, 14 Sep 2019 04:07:55 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2263.021; Sat, 14 Sep 2019
 04:07:55 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "palmer@sifive.com" <palmer@sifive.com>, "hch@infradead.org"
 <hch@infradead.org>
Subject: Re: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Thread-Topic: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Thread-Index: AQHVTU090lWiUiEQM02Uoz9V3NTipqb3o0CAgAaR3ACAAxJmAIACeCUAgBu7KwCABSSVAIAFruOAgAB7EgA=
Date: Sat, 14 Sep 2019 04:07:55 +0000
Message-ID: <491aa3fb2d08e283ecedb5c02f9555d10f458ecb.camel@wdc.com>
References: <mhng-300d37d6-c3a0-461c-b843-ca9b0e2b4714@palmer-si-x1e>
In-Reply-To: <mhng-300d37d6-c3a0-461c-b843-ca9b0e2b4714@palmer-si-x1e>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [122.171.172.160]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c17d73aa-b185-4a80-fc50-08d738c91f25
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4357; 
x-ms-traffictypediagnostic: BYAPR04MB4357:
x-microsoft-antispam-prvs: <BYAPR04MB4357A579D4ABCFCC80BC63E6FAB20@BYAPR04MB4357.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01604FB62B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(396003)(376002)(366004)(39860400002)(189003)(199004)(7736002)(229853002)(305945005)(6436002)(6486002)(6512007)(6246003)(53936002)(71190400001)(71200400001)(118296001)(5660300002)(76116006)(36756003)(91956017)(486006)(86362001)(66476007)(64756008)(66446008)(66946007)(66556008)(476003)(2616005)(11346002)(446003)(6506007)(14454004)(25786009)(76176011)(99286004)(102836004)(26005)(186003)(2501003)(256004)(3846002)(6116002)(316002)(2906002)(54906003)(110136005)(81156014)(81166006)(8676002)(8936002)(66066001)(478600001)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4357;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AYqXghNCw0+CI37uRuJUctsl1tw8Q5gyuUp9OpU1oyL37PZx7MOc3Emyge/suvZk72X1IDigMQR+B8HRW8B6lkAgS0kvS/XPjPztxojZ1IPFwDzDKHowvL/Qwv/5obf8XNuh254moPgq4Rx4yHKrnLsA4AuNe3euzHThN6RNKYcr02YX8WPaf6KUb+PnzF18xTtTzOR/hPO+CIcnptW6eWzcYDtYGIYHfrdkhhSvzCW01BdMgJciQjtmT4Vi0LogKe277QmOoNJPQ0ed3CqTFatKDYAFfpYkdeu1oi+hHGH6abgeM2+03SERtQ2LjNP8Vn63tDjyeVGx8Ffwr+sOwRzdlOs7uyKHkPLgrNgvJaLQP9tu+0788xkLQ3JzzSDwjMMsZFnTzr+9Md8uOBDGofXxRalx3YoTkwH3nxkQQlY=
x-ms-exchange-transport-forked: True
Content-ID: <B2CF992F421BE140B5FB408344B54AFC@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c17d73aa-b185-4a80-fc50-08d738c91f25
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2019 04:07:55.5631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ZbHYGn7/T+q9L+Ij3B9InD0rNpLKyZ3t/dC/8+E/NcrWEXOzEmWoRDkotUzJrMESTpvPrJtQbXDLPMcFeNIEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4357
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_210757_677939_F177D2DA 
X-CRM114-Status: GOOD (  15.97  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-09-13 at 13:47 -0700, Palmer Dabbelt wrote:
> On Mon, 09 Sep 2019 23:00:10 PDT (-0700), Christoph Hellwig wrote:
> > On Fri, Sep 06, 2019 at 11:27:57PM +0000, Atish Patra wrote:
> > > > Agreed. May be something like this ?
> > > > 
> > > > Let's say f/d is enabled in kernel but cpu doesn't support it.
> > > > "unsupported isa" will only appear if there are any unsupported
> > > > isa.
> > > > 
> > > > processor       : 3
> > > > hart            : 4
> > > > isa             : rv64imac
> > > > unsupported isa	: fd
> > > > mmu             : sv39
> > > > uarch           : sifive,u54-mc
> > > > 
> > > > May be I am just trying over optimize one corner case :) :).
> > > > /proc/cpuinfo should just print all the isa string. That's it.
> > > > 
> > > 
> > > Ping ?
> > 
> > Yes, I agree with the "dumb" reporting of all capabilities.
> 
> I agree: it looks like other architectures are passing info (ie, x86
> flags) 
> that isn't supported by userspace.  We have the ELF hwcap stuff for
> those who 
> want to tell which instructions they can run, so it's sane to just
> keep this 
> simple.

Great. That will simplify the code path as well. I will send a v6 with
the fixes.

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
