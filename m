Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D9A9F437
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 22:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRKbxS2KOEe4zLzd2ckZgdcBk6yOUthLPXoVw3bmiDI=; b=nXTvfIi1XN0ms1
	iz9DkqaVhbsv8LRbgflSUq4c8utOd+KYIfKBL+PHY+B4qSJ1P3C/se+HHIJmLL865Qg9uCnuXhF7m
	Mgciv4paH1XFg+JOwDAiYLj4Wm0PNKnTB9BzQYud7ljTcKcoGxbsk7tdmqRehtJmzmx2qWek8t7CE
	Fk6xd8Cq/J7CKxscsZgfD8wk4ymFOSfoeshGParrijWvHCXGXKHmTa4Yij+7gS2JhNEhEM7d0bFc1
	2ZDqg7JoHRZTSgRHWuogRkdlsgKRFLmqROjwI2KxJ+0ogxEuPAHjU947NNkkqncJ7DG1CM9PDe8iy
	ysYuXFz5G51gHF4iO8Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2iDh-00035u-7s; Tue, 27 Aug 2019 20:37:37 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2iDd-000358-6l
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 20:37:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566938253; x=1598474253;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YfzbCvOMEV5XGepibRq4aIUh+PTyodJnSlxTf7cfkzs=;
 b=mDq1IUurud9OIjrKx2XuUw+ACffgngRSjTCs+mB3nEWhmB6/Lk3dgatW
 THMOc5iB0Ghl6bYP7bJjRZr+fi6eG0y456PpGZ+ms1bD1JPcIQPexCBSg
 WCU+aFiP9ASV5kgdSKM2ycd5KMrPrb+HiKBHBQVpN1x9ZFA/sPGKreY5q
 P1V7sQ5WYOZAbEZZ5tZNnkBjRxztNxqnIOp792xSmSzKovLqdjqQTY8Jw
 qUNAFurmZk6C68HQQuMPIdBS9We5NWT0+St4B+aveeeU5Ew0CfsmowE2U
 M/Xs05CP5nHIA7Vs7dmvrp8fqdOLU/JQnxI9wS8GV4LKz1hrTyJ0cEJIQ Q==;
IronPort-SDR: DNmIRAcO0zEPMnJnP94r1BXCZWQBR//t/PJ3JDZQNsyOkKkDpDIMxxqa276NBauoiVUCsqhLmI
 Rxf3tOmca9eZkxqMvqs1NMYcItjViY7EXZJ68kfrOozAuSLJ3pWkbWxvbjRvDFB1G8Up2C8LSq
 clgBJ8WndYy1ZL1uC5RQVcJAm/jWpVOMkYz6aOpoR52w992Zfzcf2QweUclVRXFddtLNADy9Nv
 3qWkFCsombTilactM4+ztV3/9aMkpTKL/jDF5/hpeajhDLJ2D7DnjJt6PvbCYrkplQ/8jDa699
 FvY=
X-IronPort-AV: E=Sophos;i="5.64,438,1559491200"; d="scan'208";a="223454885"
Received: from mail-dm3nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.51])
 by ob1.hgst.iphmx.com with ESMTP; 28 Aug 2019 04:37:29 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KIk5cbVZ7/Zxc+sA4C+okUuUyQrAce9BOjzy7eCgJ1UusCAX7hyJV3p43tsWosoGg5AVEgk3BQPPjN5sgQhlUcY6u/qzCbo+m7GZ1PlEZ6mPpb4RpSyxxYaRM0dIXJQzqTWNKB+h9fYYBKjYbrL48+nT3S3ww66dYyVXdCy9I7TKrJh/B3U5TsccxcndUlQZqS34eHa+Ha9QfFjOr9AbEV9JsyGjhFSWTv9klwTm7P7O+sYVvaycLQ6GtyL71fjMrKBV9UcCL7+oyiP5MHtMshIyLLEKQTIMdwxNdgYE2jFD7AbHRwiNH6k6JNMazEgJpj/t2FA9lXHjB4E/8dRUJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YfzbCvOMEV5XGepibRq4aIUh+PTyodJnSlxTf7cfkzs=;
 b=HNuMg/E3tnmfqxjiTx2e8j0B7S6o1/lGU5+VrUoLI0TSk8GWxKJiot3NoLC1yON6O+KDnBe0Lv07nRNeKLXxzCv0PWfwRGBibpAaGfDzKW0REoWvkTT8cClBk1OSYLRmPuKdzC4etZLSnM39U2oaxKkLQ9/OoYC8DAIZqOQRpo5KGGt8xrXgxWBHJ5PG3LwW6gq5LmLT+083YbzLe78q3qpcE04qHw4Hldl1++Pv+NJHndYgiVWs2GYenT/7s5pjcOCsBCCpk/ykYWBaK/L37gge/VjJgxI57mVO36SC6hqLOWmxsn1Ghp8i+8zEWddmX04/xywALaln+Qul9Fl9+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YfzbCvOMEV5XGepibRq4aIUh+PTyodJnSlxTf7cfkzs=;
 b=xZPDxariGFtv/6VUDZU0D/X4SZyFm7ilUfT6SoaZaaSb3JDlgRoZ3W2TjYX1DmeIgPKFxNk+RFker23dRmDmb7IhVyXGXu1NqQWcctUqzQ9KVUMnBAqDnVN2/3No33cidSE9xl1v1F6DH4hAs8Rn7PeEDHK8/39xIJZ06D9azr4=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5079.namprd04.prod.outlook.com (52.135.235.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 27 Aug 2019 20:37:28 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Tue, 27 Aug 2019
 20:37:28 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [RFC PATCH 1/2] RISC-V: Mark existing SBI as legacy SBI.
Thread-Topic: [RFC PATCH 1/2] RISC-V: Mark existing SBI as legacy SBI.
Thread-Index: AQHVXGawW0XtdcDDakm9TmNp3/W3LacPB3wAgABuMYA=
Date: Tue, 27 Aug 2019 20:37:27 +0000
Message-ID: <ac3cfe4502090354a7c49fae277adb757ad900d5.camel@wdc.com>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-2-atish.patra@wdc.com>
 <20190827140304.GA21855@infradead.org>
In-Reply-To: <20190827140304.GA21855@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8021e8da-861b-4715-cdf8-08d72b2e6070
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5079; 
x-ms-traffictypediagnostic: BYAPR04MB5079:
x-microsoft-antispam-prvs: <BYAPR04MB5079680F22780F89A79DF2EEFAA00@BYAPR04MB5079.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(376002)(346002)(136003)(189003)(199004)(66946007)(5640700003)(2616005)(53936002)(6436002)(6116002)(3846002)(11346002)(446003)(76176011)(66556008)(316002)(229853002)(66476007)(66066001)(118296001)(7736002)(102836004)(6506007)(2351001)(6916009)(76116006)(478600001)(305945005)(6512007)(476003)(186003)(6246003)(36756003)(486006)(26005)(66446008)(64756008)(54906003)(2906002)(256004)(14454004)(25786009)(7416002)(86362001)(6486002)(8936002)(71190400001)(8676002)(71200400001)(1730700003)(81166006)(81156014)(5660300002)(99286004)(4326008)(2501003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5079;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: moHSN5wxX+oVwXiIMMb1VIBUa2E1EtofZdpZ+KZsG3KcQnfsAxSVYAUf/j4WWzMk+Bfg0tq7NfvmhHQvAXxmCOjwVLuNefLfUTcJE5HTA2AmyIqr5qHv+25eFMo9fmOzt1YyT244br88ZA5bY4qsxQhSbOFM9JYVbeNWBn8NfTzbB3c2P7mvDuYJwl1Yfv7QRzLElfR4iWJdGc2SeHhfY636xBOyhiIWyNNnCzOHaaJiJZkEawJWnsklyE5Ct/Lw87dAHSYLyW/WGkVyNCRr6CPMohbAWKsIrBsJ4y9XfeyU5t5ZQBiwUDVDLq/FxYUmurwYp3L1o3qXXLc/nu8IxqdW1FW9MVQiyu2TYnef7lCRLPaszND0W9znn0mAC+Ku2kHVLe9Z4xD3PR/C8zgJfNDNlCYLTS2ByLzKlP9nIaU=
x-ms-exchange-transport-forked: True
Content-ID: <B08E5436C8E48840B970D5DF82DD8722@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8021e8da-861b-4715-cdf8-08d72b2e6070
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 20:37:27.9991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kZDeexZVHJ1tFVtPKh7fZ3pFZthKakuPKDMc+ZW+EFfbUYjXrKdV9y2SWPzJUVzjICyz73eAC3W6oLGmwyInfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_133733_370887_4AE37CD5 
X-CRM114-Status: GOOD (  14.19  )
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

On Tue, 2019-08-27 at 07:03 -0700, Christoph Hellwig wrote:
> > +#define SBI_EXT_LEGACY_SET_TIMER 0x0
> > +#define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
> > +#define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> > +#define SBI_EXT_LEGACY_CLEAR_IPI 0x3
> > +#define SBI_EXT_LEGACY_SEND_IPI 0x4
> > +#define SBI_EXT_LEGACY_REMOTE_FENCE_I 0x5
> > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA 0x6
> > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
> > +#define SBI_EXT_LEGACY_SHUTDOWN 0x8
> 
> As Mike said legacy is a bit of a weird name.  I think this should
> be SBI01_* or so.  And pleae align the numeric values and maybe use
> an enum.
> 
Will do.

> > +
> > +#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> > ({             \
> >  	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
> >  	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
> >  	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
> 
> Instead of the weird inline assembly with forced register allocation,
> why not move this to pure assembly?  AFAICs this is the whole
> assembly
> code we'd need:
> 
> ENTRY(sbi01_call)
>         ecall
> END(sbi01_call)
> 

That would split the implementation between C file & assembly file for
no good reason.

How about moving everything in sbi.c and just write everything inline
assembly there.

> >  /* Lazy implementations until SBI is finalized */
> > -#define SBI_CALL_0(which) SBI_CALL(which, 0, 0, 0, 0)
> > -#define SBI_CALL_1(which, arg0) SBI_CALL(which, arg0, 0, 0, 0)
> > -#define SBI_CALL_2(which, arg0, arg1) SBI_CALL(which, arg0, arg1,
> > 0, 0)
> > -#define SBI_CALL_3(which, arg0, arg1, arg2) \
> > -		SBI_CALL(which, arg0, arg1, arg2, 0)
> > -#define SBI_CALL_4(which, arg0, arg1, arg2, arg3) \
> > -		SBI_CALL(which, arg0, arg1, arg2, arg3)
> > +#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0,
> > 0)
> > +#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which,
> > arg0, 0, 0, 0)
> > +#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> > +		SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> > +#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> > +		SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> > +#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> > +		SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> 
> When you touch this anyway I'd suggest you kill these rather
> pointless wrappers as well as the comment above them.

Sure. I did not want make bigger chagnes in 1st RFC patches. But
looking at the comments, I feel it was not a good decission.

I will get rid of these wrappers and move necessary ones to sbi.c

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
