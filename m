Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB315C342
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jul 2019 20:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Bk3IcxzNU4uydt7NA0GafKkF4iga69/NGAXoPuClDk=; b=q09fZE7q3pkQrG
	tTryQMurUeLqwV1Rfb5ce/T/zqkBSF68C+toEwVWv+rAuYDVfqFL/5fkz2K0LUlqlmx4L8vdWlObh
	QDBWttDxBlUg8wHrEB+OX3yu7hrT+/lt80Er3MqAQ0gjZvZ2it5h5DAS0AWT/3RweIOH/SogOkdv4
	bCB1OUj87q0fuc0m7vxkWEvyOlH6iSxh6MiYTEwqbe8bzj6mSSauHTj4IVBWhfHP18kWfANcKsjB7
	a1ax0Ii0i3op/PDxpS1ZrZWUxQ/8sT/rp0y3fIT3TueJHm8YU2YJCgAFoavFGSpmQ0/mPC+3z0XdD
	lKYsRLVNXqGNQ6vKgWkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi1Qg-0002qH-16; Mon, 01 Jul 2019 18:53:30 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi1Qb-0002ox-GS
 for linux-riscv@lists.infradead.org; Mon, 01 Jul 2019 18:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562007205; x=1593543205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=evVuCAwmXg1QqUkbarEdoN4jfzFm166bDjRUSetUjpg=;
 b=e8L6rbvg3F7iWEZsm5c4jW/a0HF0bal/UFNoqvEgXM9ZgVoSRTiX967C
 /asqLJgx1K25iTpn7pXzMuC7numX5d/kkY0/E1IRFF8FB7iQ7VDFpHPjN
 7l9I2NwAkgsGJSGAyp1trEltjEyWUTaXPhNtvALlQmIOQK3l6q1iEzt9/
 cm5zXz9sKZ94E1P4sV8bM4+R6c8C2gcKPugS18z2EQzYRem41SGdwWynL
 f4YVbWX9qn6LxrwOfesAqyhUXlLWrxRqbFSb4jfsAjvIr8tl4BTyrsy77
 l1xK1BAIq2loYuRD18eLEE1XKpWA2pDn+S3qUbFL4BhEKhMqQg6fLC6Xh A==;
X-IronPort-AV: E=Sophos;i="5.63,440,1557158400"; d="scan'208";a="111983828"
Received: from mail-bn3nam01lp2054.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.54])
 by ob1.hgst.iphmx.com with ESMTP; 02 Jul 2019 02:53:22 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=evVuCAwmXg1QqUkbarEdoN4jfzFm166bDjRUSetUjpg=;
 b=PExM+9fkw1voOn+ON77ypgP02gM9oIeCA2yYU4UyKsJzlq7Uj+ssotRcFVqDdPKkBctKBqEGFIpZducMCWJXlavy6IZQRSkkTvOhFNI4LW2RuWVArm2d4qoZGvoJyoKuUs7BkFG4R7wfhLsUBevygTa7zCXSL13VVta2sYIIno8=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5573.namprd04.prod.outlook.com (20.178.232.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Mon, 1 Jul 2019 18:53:21 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 18:53:21 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 05/17] riscv: use CSR_SATP instead of the legacy sptbr
 name in switch_mm
Thread-Topic: [PATCH 05/17] riscv: use CSR_SATP instead of the legacy sptbr
 name in switch_mm
Thread-Index: AQHVKk/HYDuvVX0qL0ugJmd5Wg5v96a2J+AA
Date: Mon, 1 Jul 2019 18:53:21 +0000
Message-ID: <3cc7a8734991bbb3b7576b34b7038ca9bc67c0c0.camel@wdc.com>
References: <20190624054311.30256-1-hch@lst.de>
 <20190624054311.30256-6-hch@lst.de>
In-Reply-To: <20190624054311.30256-6-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 502cacdf-aa01-4012-a6f6-08d6fe55637f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5573; 
x-ms-traffictypediagnostic: BYAPR04MB5573:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5573E06A4306B18719AB0804FAF90@BYAPR04MB5573.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(396003)(136003)(346002)(366004)(189003)(199004)(73956011)(99286004)(53936002)(76116006)(476003)(229853002)(66066001)(486006)(316002)(71190400001)(256004)(71200400001)(14444005)(81156014)(66946007)(6512007)(4326008)(36756003)(6506007)(110136005)(446003)(66556008)(11346002)(66476007)(54906003)(14454004)(7736002)(26005)(2501003)(66446008)(118296001)(68736007)(2616005)(64756008)(478600001)(6246003)(72206003)(186003)(8936002)(2906002)(305945005)(2201001)(76176011)(102836004)(6436002)(6116002)(3846002)(6486002)(86362001)(81166006)(8676002)(25786009)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5573;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C/evsz1NDFa2mXkBgH+HXTPqoIOES4+eFVrV7XBQftYME7zweKQwxZf8fVvwJF3pBiMAoFX2k0VABYboVKJvNB30TDRoAGMOgHCDKd1labC3X4BIH6eeByKIJcuQu+f7phhY/p6curGh5nS2BssK1Ef1zYyTXi9HIxgpr6QmivcH3RXpL9XJZZigpJrkeqLOO/wJNaxSs4BX2cUSXnUyvvm2e5xRih0oxBIijJ/1wAfhi8IrcGXxW1F7nP0MhHpzgOhORshZxu1TiR5xgwIYJmFkh/hM4woMl/RAjVoZIXFLvXxdFyY5IFlYTcuuU+T4/QzR+ECyVjdVFVOspIwvX0GEd1AqXExWnMOhT4AZkFb5K5mUT04Ttg4tB8X2MvKu/tTFgW8OCmcHxxHDD+blLzHb0gN8n6o9FNIA1fNC0EQ=
Content-ID: <F69301522B3BE54987C4AF4105C0689F@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 502cacdf-aa01-4012-a6f6-08d6fe55637f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 18:53:21.3359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5573
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_115325_589992_1E79BE63 
X-CRM114-Status: GOOD (  16.36  )
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

On Mon, 2019-06-24 at 07:42 +0200, Christoph Hellwig wrote:
> Switch to our own constant for the satp register instead of using
> the old name from a legacy version of the privileged spec.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/mm/context.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c
> index 89ceb3cbe218..beeb5d7f92ea 100644
> --- a/arch/riscv/mm/context.c
> +++ b/arch/riscv/mm/context.c
> @@ -57,12 +57,7 @@ void switch_mm(struct mm_struct *prev, struct
> mm_struct *next,
>  	cpumask_clear_cpu(cpu, mm_cpumask(prev));
>  	cpumask_set_cpu(cpu, mm_cpumask(next));
>  
> -	/*
> -	 * Use the old spbtr name instead of using the current satp
> -	 * name to support binutils 2.29 which doesn't know about the
> -	 * privileged ISA 1.10 yet.
> -	 */
> -	csr_write(sptbr, virt_to_pfn(next->pgd) | SATP_MODE);
> +	csr_write(CSR_SATP, virt_to_pfn(next->pgd) | SATP_MODE);
>  	local_flush_tlb_all();
>  
>  	flush_icache_deferred(next);

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
