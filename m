Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5329F5EF
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 00:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpFnW8t0+/CdHjjD7NtNFFx06WupD8jfF2hNHcESVNw=; b=q9t6hQnbK+kWoZ
	mLPi+TO5zsZPVXM52nOJ3APjrM2ii6ebgPfCNOSp4VuPHFTuyz4+9SsBpJgS3Ja6wPF3N5ymgmPl0
	WPmYTz1NU0NBKil/KJO32lUdb3LzVAXZfy8iKthm7P3o7DGDNr3cB49mnHt99qWqAviWbM9cX8Gah
	/PzQjk+WwNQylD9kZuJ3ccVmeDOr9iFGZo5o5TRSuW293yDBMuvbJQOe6YJvWSGvKPA55p9+w8CcB
	4HK9iHNXHLi6DyXF/BTQZEKnHXmd7xoCZ9UMT64lKhrSV3/QAaNigJKwA/RZ5R64V0xMImOD4Q2Qq
	niUXjNdq9XSXrI68h3KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2joe-0005Wj-Kd; Tue, 27 Aug 2019 22:19:52 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2joa-0005Vv-Qj
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 22:19:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566944388; x=1598480388;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=srADbCKFuW9L8z1xWppi7GahM2SkRc+Fc0TpzzgENZ0=;
 b=C7CWioL8v+khv0sKMm74tHrNcrFh/bp0qnIJ/K15merZKgyQiA8XEmyr
 vxNfoy86WW0Cgxkcw/AD51fsC1H6JI5n83cxlJH26R266OFVJxP5EtX9+
 0fZUjvTgrNju9EH4hzTSXV03V7G6MqX5iCSg4o505CsAaCgNqcLqjZedR
 orNoaxJMEEbnkAJCrItCipzplOTt0wTm7YCv7dZql2Yz5C5LrtULJawrl
 E633nbnxIpmS2DUAxctfTqY5XPTp1uZgjoq1NdlkkEU5qRnrj69wdNAPY
 gpQpCyC9BrTKjLtzmLEIJknTY7IsC9PgjgU5IWagWwvn/BKqD8qanV1H5 g==;
IronPort-SDR: 7n8qJB4v8VRO7L08q90WUAU5/uF4DNMKStlG2MtY4H5uUwOGqRDR1aNheN6WfVS62yX4URR3UG
 Id5+vUab75y4x315oZleAelioqhaaYPCeE6aW+WpJKHDi046H/QQ2mhLLb/Y8z2oVL8X21+DNk
 oGW6sfd2E25zAeyEP1+zUDyTWmfMG9pyTkR5pP13QjfsHk9szU0kKwCbiLiNvuqx0mPEbw8pj9
 nM/pUk8N69EKB9FgGyzxMvpQemNeSv19IgIlhAF9aS0LVt+nIX8Qd38v7uLqw5GfFoRJLW25ww
 6yk=
X-IronPort-AV: E=Sophos;i="5.64,438,1559491200"; d="scan'208";a="223461272"
Received: from mail-sn1nam02lp2059.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.59])
 by ob1.hgst.iphmx.com with ESMTP; 28 Aug 2019 06:19:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRro36y2KJUx3b0YgkIRmIxKxjBpdqmKjuevEdmjjYIYe8eXSvxvS9l/ESBzXH29JdavKNe4Oi1gK2JxIDKsRsG/Nf04btMwSRsqe7YjAPx4MrrdAmFpJLzxYMSXWWu7r79Mfe0Q6oi61f4VwPLyy0FK0WXzJdidWoHspj7MvhTHTNKC9QKJGt5xxiWnNyqqgt4bRL/cXhE/aBylj5fnSVenpvBwGExSDW7yDeNHOQN0UFPqngZvp5HB/fhyL/LW5PO52t5PsT+p5NGY/eFPr3RlT04/tsEc0F4qVbVeKkBNhp8XfAQ6Iw8ViTNcMIh1t5MNQBsCp+SfIEBFaJE2Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=srADbCKFuW9L8z1xWppi7GahM2SkRc+Fc0TpzzgENZ0=;
 b=RhaKQAjNPyUJ3HdV35cDOk/soI8Kaaz5IxeVCyHo1BJ6ZvEcXEBB4uxEYthQiRLh+YgKz/Z945Z5NUqNB+ycdPsdndxfj6Yd8/0LdfS4oKynEAshYGNyE5LM0TwcrwWOAEm8xBfOLtfwFKh8BkIorqQydwd70kcZrgSwmsSyKO9z9bfwCezJ0nBKklQspwkQL3WTHknktVtoYIWrOlt5CoL2G8Y1zQTlJeIvioOSjobNdIMkZiNPxOvwt2vBQPHy6eCGjTLbC2HoBDK8wfamaN+Y96dNtkzsKXlYrgSTOZAgQ5dLlk5hdL0C4kpIEHV7pFcFN4YriZMfPTyHIO3nwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=srADbCKFuW9L8z1xWppi7GahM2SkRc+Fc0TpzzgENZ0=;
 b=BacZADLjwg2tkMUcG3H0PvIWnHkLq9czgriJdvej74vfOJDC8GJcvW7TWyOmve06IYxUDfDbJqNs/TK/UDU6XZmFhdmHdzypFiS+maLY7Ce9PqA2mEnVFb5mxg02k1XxH45d2hd742uM4RioK9yRKxuneLxPSkNbq1vY/SOJ/8Y=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4056.namprd04.prod.outlook.com (52.135.215.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 22:19:42 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Tue, 27 Aug 2019
 22:19:42 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [RFC PATCH 0/2] Add support for SBI version to 0.2
Thread-Topic: [RFC PATCH 0/2] Add support for SBI version to 0.2
Thread-Index: AQHVXGav48Iq39BuIEaKaF29rj3wXqcPE5gAgAB+pYA=
Date: Tue, 27 Aug 2019 22:19:42 +0000
Message-ID: <a31c39e8653bd04efe0051a5fd6f0238d33a80e7.camel@wdc.com>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190827144624.GA18535@infradead.org>
In-Reply-To: <20190827144624.GA18535@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3648a849-6b61-4a9c-498e-08d72b3ca8a7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4056; 
x-ms-traffictypediagnostic: BYAPR04MB4056:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BYAPR04MB405697829D25C9BB2324801CFAA00@BYAPR04MB4056.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(39860400002)(376002)(396003)(136003)(199004)(189003)(229853002)(99286004)(478600001)(2616005)(6916009)(486006)(118296001)(11346002)(446003)(76176011)(8676002)(14454004)(7416002)(2906002)(6116002)(6486002)(3846002)(26005)(81156014)(81166006)(6436002)(2501003)(5640700003)(1730700003)(476003)(305945005)(7736002)(186003)(6506007)(8936002)(2351001)(86362001)(76116006)(25786009)(966005)(5660300002)(4326008)(102836004)(36756003)(6512007)(256004)(71200400001)(316002)(54906003)(14444005)(6246003)(66066001)(71190400001)(66946007)(66556008)(64756008)(66446008)(66476007)(53936002)(6306002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4056;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8Cv6lczjJTLMjGeg5onD91MrOrIbTbMk3E11V27H5w4+8GiRc+5QhXPwh4DbIkdGfr5W+tPNanDR2h/z50N/I2f8B+yxMG0Juasr5Os1OVITfW8wm3bewsniZwryHlHqLvSDVlPw1e/lUpSdNMqrzi9h+rs93uP3BM5J9it/6dEBxrLMn3PkFATKj3rlQEUDn8kSMXaCPPHGunIYYMULRqVrP2v1+HGC77rxDphA28b4pXJb6oDktqrpu8LhrynjvJMSd7+VL3Yhm55Al6fgPTTBnuPcZhKIUM/Sgdl3/+lO7YPLka5e6M54Pcv/MsfvTZoaS9MI8266FsYTxXYeUW3Z5mSpkessp+OYydUuWW/PpaZCcAxkRLYz5aUtJO8SADhaSLlBQykG1f46vtLIObx+AEU1qi5D5+bA5zmTL8U=
x-ms-exchange-transport-forked: True
Content-ID: <E06CEAE083E03D4289BC18666CE15D12@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3648a849-6b61-4a9c-498e-08d72b3ca8a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 22:19:42.1523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qrN3tJNLFzrOlDWCfaqhAT9jyYrptHFr9w6HIP4Dw6ID+vuxdDAuH4ZLEoGYR9++KBf6SAqSR6P3CBS/UMyWhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_151949_068382_74C022B7 
X-CRM114-Status: GOOD (  25.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 07:46 -0700, Christoph Hellwig wrote:
> On Mon, Aug 26, 2019 at 04:32:54PM -0700, Atish Patra wrote:
> > This patch series aims to add support for SBI specification version
> > v0.2. It doesn't break compatibility with any v0.1 implementation.
> > Internally, all the v0.1 calls are just renamed to legacy to be in
> > sync with specification [1].
> > 
> > The patches for v0.2 support in OpenSBI are available at
> > http://lists.infradead.org/pipermail/opensbi/2019-August/000422.html
> > 
> > [1] 
> > https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
> 
> I really don't like the current design of that SBI 0.2 spec,
> and don't think implementing it as-is is helpful.
> 
> For one the way how the extension id is placed creates a compatibilty
> problem, not allowing your to implement a backwards compatible sbi,
> which seems bad.
> 

I did not understand this part. All the legacy SBI calls are defined as
a separate extension ID not single extension. How did it break the
backward compatibility ?

Here are the few possible usecases

1. New kernel can use SBI v0.2 calling convention for older legacy
calls. It will just set a6 to zero (function id) & not use the return
value in a1. a0 is still report error value.

2. New kernel with older SBI implementation (i.e. BBL) will also work
as sbi_get_spec_version will return error and spec_version will be set
0.1. BBL never checks a6 or set a1 which works for the legacy calls.

3. Older kernel with new SBI implementation(i.e OpenSBI) will never use
v0.2 calling conventions. OpenSBI never use a6 or set a1 for legacy
calls anyways.

Did I miss any usecase ? 

> Second just blindly moving all the existing calls to a single legacy
> extension doesn't seem useful.  We need to differenciate the existing
> calls:

I think the confusion is because of legacy renaming. They are not
single legacy extension. They are all separate extensions. The spec
just called all those extensions as collectively as legacy. So I just
tried to make the patch sync with the spec.

If that's the source of confusion, I can rename it to sbi_0.1_x in
stead of legacy.
> 
>  (1) actually board specific and have not place in a cpu abstraction
>      layer: getchar/putchar, these should just never be advertised in
> a
>       non-legacy setup, and the drivers using them should not probe
>       on a sbi 0.2+ system

In that case, we have to update the drivers(earlycon-riscv-sbi &
hvc_riscv_sbi) in kernel as well. Once these patches are merged, nobody
will be able to use earlycon=sbi feature in mainline kernel.

Personally, I am fine with it. But there were some interest during
RISC-V workshop in keeping these for now for easy debugging and early
bringup.


>  (2) useful for currently taped out cpus and in the long run for
>      virtualization to avoid mmio traps:  ipis, timers, tlb
> shootdown.
>      These should stay backwards compatible, but for sbi 0.2 be
>      negotiated individually

We still can do that with existing scheme.

>  (3) in theory useful, but given how much of a big hammer sfence.i
>      not useful in theory: SBI_REMOTE_FENCE_I we can decide if we
> want
>      to either not allow it for sbi 0.2+ or also negotiate it.  I'd
>      personally favor not advertising it and just use ipis to
> implement
>      it.  

Once we have native IPIs, sure. Otherwise, sfence.i using IPI via SBI
will be even slower compared today. Gary had done the same thing for
sfence.vma and it was not enocouraged.

https://patchwork.kernel.org/patch/10845959/#22576987

> If we want useful acceleration of i-cache synchronization
>      we'll need actual instructions that are much more fine grained
>      in the future.


-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
