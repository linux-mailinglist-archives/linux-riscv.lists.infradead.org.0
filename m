Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5535C4CF
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jul 2019 23:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoRL51Dpsb+CMw5XIKbX1iOy2W9RJ4jJAi8Vbmdx36w=; b=reGVapVp5WRibH
	h2+HjZkjRXegz8CEE/5Mn+63qr9SkgGEE45iSJo3gQoNiTS/Stmdh61So/q2JjA4J5ng8luNg/ob8
	ycEjhWZGPGMptGoo+UflX6NYma/fr6viqL1VN9RAkWN5Julqm4RN/gx/nRr6uKxnOWbx3AGAl0zcH
	KPA9n4kP7MYUe/NsoKtyvMUyp9KWqm7Pmh5dWxC80Q7v06xvBEEHabZrgyK/6HI1OZllhaBA+EPW5
	fiqJNfSEpRco7VbKZfc+g96OxnKcH8VRBHFqDuOVCJu7hQuUt866kKbBqZFRkBXWV8UPfhLo+lTdY
	yLWG8utOMqohhOdE9zWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi3Wg-0003Dd-PY; Mon, 01 Jul 2019 21:07:50 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi3Wc-0003CR-RK
 for linux-riscv@lists.infradead.org; Mon, 01 Jul 2019 21:07:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562015267; x=1593551267;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OEcfdAAwl92AgRful/RQ7qau7q8BcfshjPCUwyM5HXw=;
 b=QULJc9KHwxT6+Lzvy7NMwqfIJQy9JW+VSFDBI+KHU2bVAkIYsC+Yx8Bi
 1vexhGVA1xv/qndRb35mqHvmLTiWpPXniuJ4g4rNF/uAdX77w9p9JiNQG
 kJiVfN+Gxxuz2kWlPppTFLdNu+ooS0D0IpY5d5T/aoq1d3UOTQa21C1Sg
 fCavz3uWfSvdudsZT/8AMZaSRpuiik65JE86nf3HoqfrbS3exS8UKlSnm
 uWixaB7VjinwlXVHMbXTdWXQeHPWJNRqhb5oJ8v1qM1k+1ZbzEYS+VP8n
 68cWpVgCAAmF6/Z3xIxaeBvFkW8dRMjCSuRIQIqu0zHqpbR43aY7MAkIG Q==;
X-IronPort-AV: E=Sophos;i="5.63,440,1557158400"; d="scan'208";a="111990901"
Received: from mail-dm3nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.51])
 by ob1.hgst.iphmx.com with ESMTP; 02 Jul 2019 05:07:42 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OEcfdAAwl92AgRful/RQ7qau7q8BcfshjPCUwyM5HXw=;
 b=ZNuRTDTdoIynOnJr7SbW8g1P1oZiXWqb6a03UDEHhKbmfzhetQJVMjpBfanJ2/pyuVpd85AC8VaxCS2iU8DER2WOX+YP/PguzPSkQuTFTmw+2HD58pLdnu4iYC90bpcVOwegHr1h2gWVMBJQFCZtTHS1pXmL7owpyTCuEKwNiLA=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB3847.namprd04.prod.outlook.com (52.135.214.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 21:07:40 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 21:07:40 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 08/17] riscv: improve the default power off implementation
Thread-Topic: [PATCH 08/17] riscv: improve the default power off implementation
Thread-Index: AQHVKk/RVIOKDHCL9keDjqbkd/toiaa2TWeA
Date: Mon, 1 Jul 2019 21:07:40 +0000
Message-ID: <29b9f4f7e2b28a6131e174f61c528bca98030a95.camel@wdc.com>
References: <20190624054311.30256-1-hch@lst.de>
 <20190624054311.30256-9-hch@lst.de>
In-Reply-To: <20190624054311.30256-9-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.45.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b7c1038-eb70-4b5a-dde8-08d6fe68271e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB3847; 
x-ms-traffictypediagnostic: BYAPR04MB3847:
x-microsoft-antispam-prvs: <BYAPR04MB3847C6666E4D24871ECDE138FAF90@BYAPR04MB3847.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(189003)(99286004)(14454004)(6512007)(4326008)(6486002)(229853002)(25786009)(53936002)(478600001)(316002)(6116002)(3846002)(72206003)(68736007)(66066001)(6506007)(4744005)(102836004)(11346002)(446003)(76176011)(26005)(6436002)(186003)(71200400001)(71190400001)(2201001)(81166006)(81156014)(6246003)(305945005)(86362001)(8676002)(8936002)(2501003)(118296001)(7736002)(2906002)(14444005)(256004)(5660300002)(73956011)(64756008)(66476007)(486006)(66446008)(66556008)(66946007)(76116006)(54906003)(110136005)(2616005)(36756003)(476003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3847;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YTLkoYGhFeu6yMVyPUCkA58KNXqodN4UviDdtgnCkDMNJ0ZYjs4cUUXNCu86yB4bcFwKmvdE/h6XwTLjHjw3ZO4k1adQskNHbx+eZPee7wTBpGC5pGt/WwcnjmpqI7qe59CzStTINjOKjeS9Z1tSdCCH0OYAiLZQ2PXI90Phocpb6Y9j4sarYErzIllr9Sr4lNc5BepdJ1wN1w610qofTk9nRKt9WQGE6nLOzCF8a3YTL+i0bA3XDvaoHiuogRYBV3HNyBp3gz72g2oltvxqeKXtWO+9r0dbuon/dcrPQFPZuywrxXQLKXEEg+Gb3/dsERIdTmt30N7thVkwc52m0z3wy8AE1gjG+R88Ik2jFE3HsYnoxHC8TysWzRH8XL7TWvlMQ/hzESpF4pgoUvwIAjxRTEKh4W1pydqMy0jZ76w=
Content-ID: <F7E5C9A44891AF43A954658A01AB9C88@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b7c1038-eb70-4b5a-dde8-08d6fe68271e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 21:07:40.4273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_140746_933057_6A04CD88 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-06-24 at 07:43 +0200, Christoph Hellwig wrote:
> Only call the SBI code if we are not running in M mode, and if we
> didn't
> do the SBI call, or it didn't succeed call wfi in a loop to at least
> save some power.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/kernel/reset.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/kernel/reset.c b/arch/riscv/kernel/reset.c
> index d0fe623bfb8f..2f5ca379747e 100644
> --- a/arch/riscv/kernel/reset.c
> +++ b/arch/riscv/kernel/reset.c
> @@ -8,8 +8,11 @@
>  
>  static void default_power_off(void)
>  {
> +#ifndef CONFIG_M_MODE
>  	sbi_shutdown();
> -	while (1);
> +#endif
> +	while (1)
> +		wait_for_interrupt();
>  }
>  
>  void (*pm_power_off)(void) = default_power_off;

Reviewed-by: Atish Patra <atish.patra@wdc.com>

Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
