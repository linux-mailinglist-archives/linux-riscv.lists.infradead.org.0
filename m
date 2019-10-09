Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6937DD1C4F
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 00:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUpx1qd0qKw1qr/MxrTOJ0NODb+zqpD7v+3H/2MFb/8=; b=PeRdnWDvlxegyt
	elkcRGo9J5V8X1MqZRd3jgLg+ky8BQMtDtQvPXWrqlPCr9vOpYdPZifgQ/0UcXSqGl0Rsp+YxMmpv
	9Bu4zLmfCmUJPd2l2v0mmKwM4xh5x9dPvFuqgQ/c1Q4RpKpnH88hqgJjlE8aczGC6Iab3Ujxfk0M3
	Gk/WUfrrV8lUHyvlJy5E7bBXOLrL8YnhwqVAwfppYZgZpF/5cLSGr0MP9nDle2PLuTA9MDPinN3on
	NZnctWuNfhJEuFZ9muuOK2X41oHK5SJcY66Ts3bDX99vC5fERyHgHRsI7Am0YjDoILFhgc/4ZgRrV
	BNUiAbRD17enKoOZuYfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKtQ-0000L3-EW; Wed, 09 Oct 2019 22:57:16 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKtM-0000Jt-DF
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 22:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570661844; x=1602197844;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+cn8C1W5bRdvwogVJcoqMzhylTv9pss3UfRwShn44pQ=;
 b=KeH5JKLxsTUmp/rFvsvGw+CJsImsp43p8mKdJIq/9wGebvkSSCzq+z3A
 eVmzbvSKnLhB6PO0o5JbP6Xb9QJWjfxsYkRUGWVNxAW08PTZOsZMAmEpm
 i54s+aXHj6ulO2aFHUpHbpzDrot9KyyyJf1bxr6N/iVT3/MBB/Tjx3/pD
 PEYJ+wy30LVxuwtXyjXzbkmEv07H7nQUtxajxwYMN0xmYu0jmApmUr+AX
 udSFKSDMrnU5/7n5gPb8b8o7ZA4Xt6Dnmkq7YcKMdrcpNp7sfK6KukNgg
 fUPd9MMcGM67NVqUdh9rm7ZuaOqqlEUVM67Nmg0BfuTO3BRz9Vq13sNp/ Q==;
IronPort-SDR: OHwITdWPuU+skD4mBZRaqef1NQlhBgcDzTFMsEdE8kEuNrEmGYgXRs78GjOehdnbmrNwRytqbJ
 zEEOlv/wzENQ/mUmovnhUiXs57CZ8wlXGXu+BIh8M6c+gDpdJYcKYHDPXKRofIG0kKbyp3PzaU
 3DuXvd38WPD5WXwdJQDnyluxujbpyeJfZfhtbU7mbOOP5VFyAGN0qRRUjy+kUzRGmXd7fNJBgV
 F1LfGbGYUU2Ak7dqzEyhIpaVv4gNv8teA4d9MzJRbbYWlH5KOqqOYwWLrG6iNGIIiquWJb83tM
 zuc=
X-IronPort-AV: E=Sophos;i="5.67,277,1566835200"; d="scan'208";a="221174261"
Received: from mail-sn1nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.52])
 by ob1.hgst.iphmx.com with ESMTP; 10 Oct 2019 06:57:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dXg5eixEXYHyygo6v2cDWiUjMuOjqDoQuVKg+5gbPoj+RBfKITGD8BPaa72hAWjve+QWK3da/jPapOiwDkTHqIVN6/bnM5kK55Itu9N0GVZX6hOIZ1qHUYqoomznmHg7QUfqEC4dHhSCdcrO4BEcIb/BlUOqWMM+8LHUH7MUrJ4AD532ma+CI8ODM0MkEmjY+8bjQtVVtRCuzcLKUg/oHXErXe47ngj3wMZQF91WxE/FOQDzOBsg7PgZLLSHdHZA9C8GXUQge/CoChp8g9MvAorqVf6AOceiLXmK9XBdSdpLZpf6d0PldZl4QK1QQcX7RoHw9I9SZBTJfUKDxRT+Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+cn8C1W5bRdvwogVJcoqMzhylTv9pss3UfRwShn44pQ=;
 b=LV4SdH12xGzXbrtYcwrTcreedIZmzxR7wi26J3h423648o8xcpVsxQ0uZJNJNEd/K5Th3OPusXkksG4VgV9/BYMaGJ003nVTqFo6tFjou7SwgkSONMaENBMpdDJvYhjOurk5D3ZAXQkj1Ipti5kov+wMQWkPK51e1BTZps4UM7tq+4Q92Z7YH9bEg+i/zK7a292fGgLNCVbywii0cZmInjEwn1z6ASXqjGaOiX4jm201HhDDf0eds01hBhFsaXwtYsahrI4fHsb2RL76yT4ZMm0mh/TWSNRoSlDUeNNwMItdmB/TLX+EJd8zPhZhHW+NOFUyatXiBJ/GokMRyN2fsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+cn8C1W5bRdvwogVJcoqMzhylTv9pss3UfRwShn44pQ=;
 b=V2RFVsI3e4ogj06/MhG49AeDg+YQM+D9LL7QX2FUFFr87/Uzxc2j9Ei5xd0XxQGVC3tUtGPOPRo/DqCxEdAULudyrZJZoXvOG6YE6PkL57kX3uOuotEegAJoyKjKmtv7WDh1w3pxZWPlvyJlgIsfN4s60hIdxd81JsolSLAZwtw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5237.namprd04.prod.outlook.com (20.178.48.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 22:57:09 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3%3]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 22:57:09 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH] riscv: dts: HiFive Unleashed: add default
 chosen/stdout-path
Thread-Topic: [PATCH] riscv: dts: HiFive Unleashed: add default
 chosen/stdout-path
Thread-Index: AQHVftnFkKqEtgsDnk6DU2Im0fNBVqdS7A0A
Date: Wed, 9 Oct 2019 22:57:09 +0000
Message-ID: <329f84a635caa92f954c8d614975f03e22158c4a.camel@wdc.com>
References: <alpine.DEB.2.21.9999.1910091240220.11044@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910091240220.11044@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b227d76-3203-4977-fbe2-08d74d0c03b2
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB5237:
x-microsoft-antispam-prvs: <BYAPR04MB523770E2A20A20FD67416EBBFA950@BYAPR04MB5237.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(199004)(189003)(71190400001)(14454004)(229853002)(71200400001)(6246003)(54906003)(6512007)(118296001)(256004)(6436002)(25786009)(5660300002)(6486002)(2906002)(478600001)(66066001)(66946007)(66476007)(66446008)(66556008)(86362001)(186003)(64756008)(26005)(8936002)(76116006)(110136005)(7736002)(316002)(4326008)(36756003)(3846002)(6116002)(305945005)(446003)(11346002)(486006)(2616005)(476003)(76176011)(2501003)(8676002)(99286004)(102836004)(6506007)(81156014)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5237;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4AwpxLHTZg4P7xRlCOZ8pvpLQ6Klp7Lt2NbumlSd/lfzYDIxQ460z39G9ojdCxEOCe6Ugl8+8RVY7G+6hMHTETjw9DdtpFwURIX/0DQfal8J23vrRSmGcIxxAeJZZD/17t5yWakT5ctv4Px1nDf5o2rmU3YTUTWECtI5WBh7dL8pmG6DZoNhxfYw8n4XeZi1FJS1zcUkPnbCzZbPWQ03eR3UCDFYKm38rXnnaTFyWj2yx8Yh6pZTfk3GlNaA2nw7Ys9zapnt28VxO1OHYdH4Dy6ZxPjG7G6w08P+2tfU7FH2OTuF/vxfMQIVzwO3m+luLC/OVUZ+hCZkHku7AxAnIvQQdEz6Tcq8xW8IXLF88PMEPFY5nllG0PiGUkeY5Ltmt1Nnsilegf0el0R7IHQxsriTsNloVfgIwDJ16eXuUv4=
x-ms-exchange-transport-forked: True
Content-ID: <C7AE5B5430D9BB4D9B76E2439B320A2A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b227d76-3203-4977-fbe2-08d74d0c03b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 22:57:09.2003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yTzuam8fcoBqqQW203ilsrW/vBxlyDHnA6oOeLqeme+XznNweOxh0iib9ZAjusW6wiTdathppsG9cRTVSsJBeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5237
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_155712_546922_AD97C35C 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2019-10-09 at 12:42 -0700, Paul Walmsley wrote:
> Add a default "stdout-path" to the kernel DTS file, as is present in
> many 
> of the board DTS files elsewhere in the kernel tree. With this line 
> present, earlyconsole can be enabled by simply passing "earlycon" on
> the 
> kernel command line.  No specific device details are necessary, since
> the 
> kernel will use the stdout-path as the default.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
> Tested on a HiFive Unleashed using BBL.
> 
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 104d334511cd..88cfcb96bf23 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -13,6 +13,7 @@
>  	compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-
> c000";
>  
>  	chosen {
> +		stdout-path = "serial0";
>  	};
>  
>  	cpus {

Tested on a HiFive Unleashed using OpenSBI + U-Boot + Linux boot flow.

Once this patch is merged, we can remove stdout-path fix in OpenSBI for
unleashed platform as well.

Reviewed-by: Atish Patra <atish.patra@wdc.com>


-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
