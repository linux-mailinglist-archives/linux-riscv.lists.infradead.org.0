Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9813F753E
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 14:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wU6muxVNn/qMHUXvgCjBteEc6VTChxP25aUuswkBlYs=; b=DroYunYVOmzSiV
	rWzH/f5zlRsl+L4FYuF9GodfFDN+nU41pFXs4raLPnG6G2BIOdrrrXEyt+T/JNK4Lxa3Lo6Krwn0q
	fO7n6kw++D/7K+PD+lojHvlTlCv95E1RywtBsPpEzbrEn/HHoqU2DXYsAjzfy35u2eDlrbxxQmoIm
	SGvfr8StS10zrLwSP8aXvnSiUVS9m3yS/Tq0JWnMpFUd6V82OboL7RbuDdKfRlrK5V+ciG27jVJqK
	WQjsXTkzJbCDbgJ8N1cUQBoaVf5UBHzYCYmmOQhSXoPjrKkd1XKh+7KpF++mtVWzBXIogxqdn6wSH
	NjBVZjlnD4lmouYBTfdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU9yN-0004Qu-4X; Mon, 11 Nov 2019 13:43:15 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU9yJ-0004QD-F8
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 13:43:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1573479798; x=1605015798;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9dsJxH1AdFdhL3F8INOFA7wcHqR25WQKuQ/CsP+77io=;
 b=oNhbMvIDW4BF6D1GpktsKIkPFqNaNXa83Db8md1un/DtJS4jD4x9V/aW
 Tcy43FnDGC3nRlzMGz9Gvay1ROc/0Pq8WuRXuoZ9Lhy93Qxpv+9+mPSu/
 8kRAX7BUPIjiRu4h/HqmeHVjZRTqG0N1HaeL0lbd3WCdTJYPeHCySahZa
 kGLDzyZf6vHpKwKsTl/FDInyobHPlnu2UjidTV3y0lTxRct89b4vrbdUq
 X+eoZ+hCukR1/vs5uM2qyrAOod2v5pczsBUB2lIgacFp90qL57wMXTeCa
 l/bvZCyQ9vCHvtD7jKnDQGzs+PASVjAlMoujCaIwnBg/t7BPAFXaPkzUH A==;
IronPort-SDR: SxVxGgAfL6LbzD235maQAHdvJC5mET1og4ozS+Vqinqw2UQOzUwv8NThVdVpakUOYxaRsgGihp
 IKvpvXk17EpSg39So2F7TDDoGp7whQDO6+76T/wE6LlxzMsIqOdqTcEjkjzp9vBj1RLZEgS7Dm
 GZiRp0njSDMWW74p9og0FpIarfdzTr+LIuTg1rpK0LsdMOWjXFhLgPln+uhw7G+pVuNxZkanQv
 ZS0UN7tMeZi4jeu/ulxInHSho9Z/vJwmctiR2MmADPX3Wfkx/28D7GhtmBB45512eub0IdwxDo
 Jao=
X-IronPort-AV: E=Sophos;i="5.68,293,1569254400"; d="scan'208";a="223909685"
Received: from mail-sn1nam02lp2054.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.54])
 by ob1.hgst.iphmx.com with ESMTP; 11 Nov 2019 21:43:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rqd57I1EweSCe/hEQPWuJuR27UKGO1oV8QSS3x9QlxTq6z+hkbAG7YvaOjnB9Ub2YnvICS1e3mTIQfDnfkDuPXt/UA4LnY9Xlqz8t70EoHX6RUmANhDDHPVOS0A2zHG/CpksrNmUhcij3X7r5XCfLUzU21o/A4Olvfg6kQlwc0RKhs3fAVPc40Gkb3eEauGppjN02H2TBVuBXjJvdFplLpRedMY0A4PTsr2gsMDZ4XHW52USc78EXYpYAQoCPmOS7ZRGmwBwlJn8AV2WR/eoOIPGDZrFRe7VoFzQyLU5Ch+NHbG4L7AY/PzPan24F1RNwZz5PlsLxkoMVfdakk9YsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oPU445Ha4Mif9i1eLQ+9kF/A3LiB6f1/vVEFF0+3R/0=;
 b=EeoCV2ZKkCpTTl8PiDklXbw2LoMC+Cjuged1XhYWkV62X//LXlWZLFVTYMiLGNxf/jKGtEgb3CxBFfp7w18xLW7vVth8zqsQBEN5b+TXpl34/DRq/PdSJ03MwuieqdwcIJZVSBlm3S1YtrPONkfplU0zWgzgCN9Sgjs1sYL5KL2UL6mqL135Yu3gA4DyJcpjhf9CaK+ydxJ+uTt62oAN+Hxb8vk+d9qDZ44/MaGyWqf8lbdA/t8mOCoLKK7V9/pvAwGqRw0tQ6NzX9RpqgenpbflVV+raK8Cen4HXLucByx6zwGvwWzL9Fa+31Hw6OqHMhM2OXONeLtrbvGmhwOgCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oPU445Ha4Mif9i1eLQ+9kF/A3LiB6f1/vVEFF0+3R/0=;
 b=wFRlx5At4u0d4tITFeCsYVYiVhp43ZbPywjg0S+6+d9rCm7dC+SmGzhMxHJzUeLm2rHLEXCzfS010e1FRu4DSdH2mRUzM8As2lZWcyEdwr5QnGVP+laShfo4ThjYiVoEvThgnMVzGGWFR2r1SurAW7vOUdx2NWBqOkykcCxzekY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6317.namprd04.prod.outlook.com (52.132.170.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Mon, 11 Nov 2019 13:43:08 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::ac5b:8360:b7a7:f8fd]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::ac5b:8360:b7a7:f8fd%6]) with mapi id 15.20.2430.023; Mon, 11 Nov 2019
 13:43:08 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>
Subject: RE: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
Thread-Topic: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
Thread-Index: AQHVmJTPyH8iXg4fS0aBJhwN0J4ATaeF+pjw
Date: Mon, 11 Nov 2019 13:43:08 +0000
Message-ID: <MN2PR04MB60612DF0F3191A8240F71F458D740@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20191111133421.14390-1-anup.patel@wdc.com>
In-Reply-To: <20191111133421.14390-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [106.51.25.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ad485637-2810-48e0-c475-08d766ad1641
x-ms-traffictypediagnostic: MN2PR04MB6317:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB63171D2513B145C3B4B6874B8D740@MN2PR04MB6317.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(346002)(376002)(136003)(13464003)(199004)(189003)(76116006)(26005)(476003)(52536014)(74316002)(99286004)(486006)(54906003)(6246003)(86362001)(186003)(8936002)(55236004)(4326008)(7736002)(53546011)(5660300002)(6506007)(7696005)(66946007)(110136005)(446003)(11346002)(305945005)(33656002)(76176011)(102836004)(71200400001)(71190400001)(66476007)(2906002)(66446008)(64756008)(66556008)(66066001)(25786009)(478600001)(229853002)(9686003)(81156014)(81166006)(55016002)(6116002)(3846002)(8676002)(6436002)(14454004)(256004)(9456002)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6317;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gu108lucp+mDkyfiAicBIUy5rEObkl8jybeLEzUc5xZ645JYPT/cXgfSQkYfOr/nb+5FwKLRopVihuVRTb+M+nLyGPO5kjvEqAcJm5jyO80q87UoRRkRtukfgL8rXYWvBGmNXTQxoLynn715I14jUZJ90b0u5tDUU/i5jBcVH8C6yYWjw2oK2Xpz/05ifrT1wdyY/fhVuAv7/L5ZjJD0Zzl+rr9JpFt75//i/OD/bpdEqqu9ZqYc97AF0V/iaifD4FcqDg3S7L2qXAXhRcFQgGnCuW9Ls+RYs3oUEE0slsb1Hg/2YZuVQpzgvEt/FoxUHJbGUs2DkbKsh3yK2kPiO4pDKC3yPwVcn0sXMuzBSZH4t0MSJh5pA0DTWylRIwfizJbPBIdBpY0P4dH4m/DJkbSvIGtJ6rXJOluMa+mDpv7HGVjyyDKRgdQssv3lL60a
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad485637-2810-48e0-c475-08d766ad1641
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 13:43:08.3529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9yC5kr073KzBlSOySOWniDTRkB1M6SoLAhHUmpIRqljwHyRMGsE7WgnA+BjrzRic+Xi3TvDoXIgQS8uVPTr1lA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6317
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_054311_545784_A810DE71 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Correct Palmer's email address

> -----Original Message-----
> From: Anup Patel
> Sent: Monday, November 11, 2019 7:05 PM
> To: Palmer Dabbelt <palmer@sifive.com>; Paul Walmsley
> <paul.walmsley@sifive.com>
> Cc: Atish Patra <Atish.Patra@wdc.com>; Alistair Francis
> <Alistair.Francis@wdc.com>; Christoph Hellwig <hch@lst.de>; Anup Patel
> <anup@brainfault.org>; linux-riscv@lists.infradead.org; linux-
> kernel@vger.kernel.org; Anup Patel <Anup.Patel@wdc.com>
> Subject: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
> 
> We can use SYSCON reboot and poweroff drivers for the SiFive test device
> found on QEMU virt machine and SiFive SOCs.
> 
> This patch enables SYSCON reboot and poweroff drivers in RV64 and RV32
> defconfigs.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/configs/defconfig      | 4 ++++
>  arch/riscv/configs/rv32_defconfig | 4 ++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 420a0dbef386..73a6ee31a7d2 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -63,6 +63,10 @@ CONFIG_HW_RANDOM_VIRTIO=y  CONFIG_SPI=y
> CONFIG_SPI_SIFIVE=y  # CONFIG_PTP_1588_CLOCK is not set
> +CONFIG_POWER_RESET=y
> +CONFIG_POWER_RESET_SYSCON=y
> +CONFIG_POWER_RESET_SYSCON_POWEROFF=y
> +CONFIG_SYSCON_REBOOT_MODE=y
>  CONFIG_DRM=y
>  CONFIG_DRM_RADEON=y
>  CONFIG_DRM_VIRTIO_GPU=y
> diff --git a/arch/riscv/configs/rv32_defconfig
> b/arch/riscv/configs/rv32_defconfig
> index 87ee6e62b64b..1429e1254295 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -61,6 +61,10 @@ CONFIG_VIRTIO_CONSOLE=y
> CONFIG_HW_RANDOM=y  CONFIG_HW_RANDOM_VIRTIO=y  #
> CONFIG_PTP_1588_CLOCK is not set
> +CONFIG_POWER_RESET=y
> +CONFIG_POWER_RESET_SYSCON=y
> +CONFIG_POWER_RESET_SYSCON_POWEROFF=y
> +CONFIG_SYSCON_REBOOT_MODE=y
>  CONFIG_DRM=y
>  CONFIG_DRM_RADEON=y
>  CONFIG_DRM_VIRTIO_GPU=y
> --
> 2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
