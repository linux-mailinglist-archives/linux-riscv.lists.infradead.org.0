Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E397410A45D
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 20:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFNkaJXAM2NrC9q6MCmGvIZ4DIBpDmukIEdfsIJOY4Q=; b=hSHV43c4mTpk9a
	D8t3ClcKFeuL0sarZ4RAlj+G1SvYJ33kQvKXhgfZ/nkcn8SNZ0Mq+XjGRJIlryTHMuNWKguGudeUH
	UCrx36OdPYU8JoZUXBkzS1g15+2IgS2v9/rs1Oqe+MDUECb1TClB6SqTjXN2xLPmZAUfwam9k9FPu
	oj2m48+e5JL5x/QVizPVh72GksKwBQTjMNyKpUmAHSUFdr8JAHl6Z213iMK9GBIlxSsteu0ZqSINW
	w/TifOFY2jgm2hxVeWeWkKpYZGfdtXXxgpxSwjqr3+CF+JghsVPa4egMm6u1oEfeegCvktMhdgTuZ
	dX260mGMx+0Ze2H/cHgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZgGD-0000Mf-Ux; Tue, 26 Nov 2019 19:12:29 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZgGB-0000MD-3l
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 19:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574795547; x=1606331547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=U+JxvNoXq3UAD7DRH+k72uPXzjJus7iETq/4nsBX7HY=;
 b=FnEc5KEEDdZgLVKwUJACQE8ZCsyOMJOwChJXOV0pDg6xHY1zpLFLDV7J
 vDlb8GDVG5JncU+q/Ro2iSUO79qqAHA4REFNtTlhzaNA9YxNcd9EYxT2w
 cEz51bJDrHiWxRBK0RMMi69/+Yo/Pc8ezDiID90borj/CYoJ/YO2+8RdV
 CyYCTZ0YPDUgwC4HqPFiVfRPqa9sFEJs0DoMwnRVD+58YRkuKEYibD14U
 gtW0j0lbIckapRON26rTRBAcjB3aHmMvY9EG2QlZ/h2j4MxDtITdhJsnn
 gMzXn/Be/MTtERqm+5FLDakyOcgB7xEG/eOMnJQhJ6TcEngkmuef869mj g==;
IronPort-SDR: sZMMIH05jNVmGxv+c4ClbgCzbEaQTAuLiVBoflrJIOK9tcIHUnatvFavrAABec8FMnwib8YT1x
 nbLSJBJSN0K5Z9WHaxUW9R/klVL4dXe1fCNqfh742PVBWWaAK0ZBTSujpm6pnLmNn4LBvaGKGb
 FIuFaoWKMu1sdaIGCWABd73Cn+TqOkAE6VQaZVL549iGbTnhf3DKHdxEIHqbeo/aXXTPGZaTqe
 +tpaflbHNKbMawRldN6rBtRQSb+kHsfegrGOEY9/trM3dyOy40S5C/3h6X3xqPzaB3C1mxuy1D
 Llw=
X-IronPort-AV: E=Sophos;i="5.69,246,1571673600"; d="scan'208";a="125670931"
Received: from mail-bl2nam02lp2059.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.59])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 03:12:24 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HURcx1037FCqvqmCXaA1A3b2PneejtYXKfapF6jWLKb9+c6SBW5zYJ8ZhxqTpxpbOe2BLt2cw++1RRrWhcmfN67WWOzmxVlZZQxbYT+ncslmVELHt433o8JgniLCtt+tjVfKgeNuzVLuJSX47Z/RhzpWuzfoo47QpoS+ZBwYgk3FXUewu+8sEzIdM570q7nOPwqjsZvULpRvJ5eauQxVCPI9znyMUzwtCGC1JV3uxaECUNutveURV1TsNBZuJ6STjTb6GEsNByMigo1Jf8zjvvzce22WV7xGtmmcYXImgkT/ES1/1X7YL/zmt38Ohgce8/MqC5e13aF3xKyOf06xBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U+JxvNoXq3UAD7DRH+k72uPXzjJus7iETq/4nsBX7HY=;
 b=jcPaRyjzwoIJAXWqrIWCWoC1DxS7/Wywm1cMY3COWrbux28dyan0ZFHdWqkT30/uKOAxTjuY//br3USBLh46SVHmSgqUmR609aGY95ThoByyy45gaFjTGtkT7Qe3leY61N5prWnFh/sCFCzA9QGsMzJv8k8IAGA2zopP23Eh3QLmp//QtT4tkqKOlW/d5C2XfKp5VKqfxkrYZ1cENrQivBgGovVNh5LHUBEOnR+UXk4GtMdeOPGiH/vajDN67hWWO9fdE/KSoL4g9ghOpZU8eTM6x95SmJc/wDYY5mLLxJpTPDXZuyJr54bhScrnuR7WcmvUMBVN+F38sB05hF6TKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U+JxvNoXq3UAD7DRH+k72uPXzjJus7iETq/4nsBX7HY=;
 b=gPDqufTweS2Dsm+pd/njp1nhQUwZwu0nanl6QSwpBCziDNlWhu0bSwhAcxplzIIA84iHERdYs6GrP8JDwTyYD5msFKFBLSyPJ4x8v25UlYqpIp23HHWOs2Kx2m1eRbaRpTNpNgn3pFOeJg8buPROrtvEqY3oDMETgPdeY5f7zMc=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5959.namprd04.prod.outlook.com (20.178.235.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Tue, 26 Nov 2019 19:12:23 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 19:12:22 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "palmer@sifive.com"
 <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Subject: Re: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
Thread-Topic: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
Thread-Index: AQHVo5Nfdy6Dk930FkiYD7mQlZsw86ed07UA
Date: Tue, 26 Nov 2019 19:12:22 +0000
Message-ID: <256d158d64bc747431855f4593e008ff744fdcfd.camel@wdc.com>
References: <20191125132147.97111-1-anup.patel@wdc.com>
 <20191125132147.97111-2-anup.patel@wdc.com>
In-Reply-To: <20191125132147.97111-2-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f0d7db1a-1fe8-4207-3d68-08d772a4910d
x-ms-traffictypediagnostic: BYAPR04MB5959:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB59593FB77223BE95950213ECFA450@BYAPR04MB5959.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(136003)(366004)(396003)(376002)(189003)(199004)(5660300002)(2616005)(2171002)(71190400001)(71200400001)(11346002)(446003)(46003)(76176011)(305945005)(36756003)(316002)(81156014)(4001150100001)(6116002)(8676002)(6506007)(8936002)(81166006)(7736002)(102836004)(2501003)(54906003)(256004)(99286004)(2906002)(478600001)(6512007)(86362001)(186003)(14454004)(6486002)(6246003)(66946007)(4326008)(66556008)(110136005)(66476007)(76116006)(66446008)(64756008)(25786009)(6436002)(118296001)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5959;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EEpmhXz3cJ3UKxRSFHTdYm70x6VV9KdZjkttc01aW1Mqll97lda2yNGtZQNklrjOqOoWe4mg11ogZHPaVt0v9ZqaFHkFEvxuwMsGsEim7pz7XJr0XrBjFhAuqrGYLenXGOgKq8hkhKTgY8rW2uVnLGONvUi4qLn8udVYoGZ8AGN+C0fXuGfHDWVUGOk6hpYc/HtBN6ETAM+gcIu3hdAKNDf4E5+WBvnRfaRhbZ6hr8TlJrixIa0iFQhB7PORllBlSXiqX81Jv8EVEX+D/vEG/96zZqf1hsr32Lrb8TUupALFewZU+5kT9QUkNJr5R+VbUxuThRHcRfP08nHOGtA9HLNuj4rYMqo8LrwShrQ8WpdAxNn1LUK+80h/EmgTdcd8VltZr5BIpRQbcis841aPgKmeolLEqlZKW5407If9d3FGZs8rHqcj45sD3O7aOkh/
Content-ID: <C8993BB3D52D3A42B7BB29DB05DBA6E1@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0d7db1a-1fe8-4207-3d68-08d772a4910d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 19:12:22.8822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yH/w0ZCbtUKxUfE3aeHoYb8x9gjUAFD5Bwwhrk3Li6KhnRzfJiDTlEFW5t3TBhOWshRYii8T/eGHDLSlSdmXFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5959
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_111227_257770_36420890 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>, "hch@lst.de" <hch@lst.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-11-25 at 13:22 +0000, Anup Patel wrote:
> We add kconfig option for QEMU virt machine and select all
> required VIRTIO drivers using this kconfig option.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/Kconfig.socs | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 536c0ef4aee8..62383951bf2e 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -10,4 +10,24 @@ config SOC_SIFIVE
>         help
>           This enables support for SiFive SoC platform hardware.
>  
> +config SOC_VIRT
> +       bool "QEMU Virt Machine"
> +       select VIRTIO_PCI
> +       select VIRTIO_BALLOON
> +       select VIRTIO_MMIO
> +       select VIRTIO_CONSOLE
> +       select VIRTIO_NET
> +       select NET_9P_VIRTIO
> +       select VIRTIO_BLK
> +       select SCSI_VIRTIO
> +       select DRM_VIRTIO_GPU
> +       select HW_RANDOM_VIRTIO
> +       select RPMSG_CHAR
> +       select RPMSG_VIRTIO
> +       select CRYPTO_DEV_VIRTIO
> +       select VIRTIO_INPUT
> +       select SIFIVE_PLIC
> +       help
> +         This enables support for QEMU Virt Machine.
> +
>  endmenu

Looks good.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
