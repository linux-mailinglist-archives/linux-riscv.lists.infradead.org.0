Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B9010A467
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 20:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySG0klWENNnYZJksccV1IUSVWzL4M5ic+HrAXsF6I+o=; b=Qczy4xA4qzAVRM
	rxMO976iHV766CLM2Z8DNgmRDChwOYPQLurX7xSs0OHUZYLyufMX2+DwD4qxyrVCA26mVzFZkPF5u
	lSl0Cb8jq/UljYVdiDj/xg35GscpY05M/OqtqI8XW+NCAjq/n0SgVyie6smk99sWLVJZVKUT9hhiL
	mfXxN2pwRRUg9Os0kf7BNR+Mi0l0fJwYWni2SuYdk/RUKwBJrRWBjC8A8O7DBdUo5h7gkPRVrXH48
	Ok+Ejj02v6qguQmeIpuRjsL38upDzyXjvPffxtX3+jgWutUq/6vFdMhKiENm5ZbCdzeNNBbjtCCxm
	jjQTdQQWc+Y978nDM5FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZgKg-0002Pr-8T; Tue, 26 Nov 2019 19:17:06 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZgKd-0002PU-Fv
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 19:17:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574795824; x=1606331824;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZT54o0O69RlBIcwiRDe5EUvaAiHKkrPNJTryzaKu+2o=;
 b=FKICzkjMMKmfil+cjLsF2Cj+jd3dfM37hPGYJVKpjvvrNwg/x06nBW+m
 5ytRIMq7eQL540v1qPq7jJEdyI4yQGpvLWS15W9Z4FTjSiZJeHIzUEQKc
 le+E4sHBDNmZyjL8OAsH7E3l8FIy43XzTxHuMqgrtr1tKxu1v0URqNaL5
 K98iyqiEwWj3fe8AupyTtsovWqvKhmmPRKJFsjIlJRMtrpT72VPaxfOGo
 LYuRr9zb/cQ23V5YVwypX4HD5qBgc2JJkNdJs19Ba4OoXsHf8blWik7iQ
 1supp2mG4rHNpIstmJHmRZP5BUTUvkLZU7UbUHvsZb8wPmku5FgqqrW4R A==;
IronPort-SDR: j9lMlvCJbAoGHNx5q9H2IwiQKK1cLs4dyNALnAkK3UifRFkgAJNMkNBdAJDNupuNK8yMFDQRiD
 Z/xucKbOMeNlb1R2KXG6/w0b+VWqKKlRua8RBMahMCYyKz1uLqMxBYtC/Sq+Jv/E/MkbeUXivv
 v4HSjwNfPa8lyejkKMI9yczVhXnvtzTA5rwxR5WieKuR02VzAXBv/26JvoVeO37tKTVxjuE5tc
 mK8gwFjcGWSsj7YTjnkhgYA3r1UW0T2AvsGT7Im50+hSLQ/bx2Scu0Bem+O212oQ/D7MrBlJ5k
 rIQ=
X-IronPort-AV: E=Sophos;i="5.69,246,1571673600"; d="scan'208";a="124822636"
Received: from mail-sn1nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.52])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 03:17:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3GdZAaO2zcAE3mzPlRwmvsx2AuSeDSRea2wa3EbBlrQm5tGipQ0GX/dSnw3JhxjTHZwxu80rQ2Z2FUyjkiwR1B17P08Y8uAF+OyRLaPoe6Fkc2UMTET9Ud2mKLQsTwceQrH2Hln+X3WyPxI42Pc/AwHVBlDwttXO4qSX1t/t+ZF2JOKU7uSRDnbq7c0qPdZDPGuLqThhGUXdE+udUJtoQyAKwY1X0BxJ059yG6MeVsyJFMUnNQr4M5LXjQB5Tu+3v/lg0vOGlPiOuti3Nu0L5kr6ZhpMFWmrjCfuPcbCDMNAyVtJyKBN4FNTr5jEP/N+j8XE7jNUm3o7gRYH0B68w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZT54o0O69RlBIcwiRDe5EUvaAiHKkrPNJTryzaKu+2o=;
 b=KcxfKFVXfsSYDcje/VSlJdaLRYI9RNKrbvdDe+BAsFOmRitMudcTpacSZ2Sh1JRjNwWwJFNx32vcGSA1SM1lXD/VWitbEAxZINmjiRfPbWJKPXXaGKgHIybIaIiN0DTeXma3qn3RMU+pGad/b7FGhz1F6C/dwhvYNqK99wCwl3/LrS5s1zqLuqsg3ttDcsrNKR5YtsHrFCkI+4fR+ARo2IXMHlu9U4BuLtoVw7Bk7TKzAqVzhv/iPcBCbi7McwAMvITBkole0kB2tzR6Q6LATUAeBKpn4HcAiqE8zoj1oSezXuPBD6RO9lAhTBeNIrZ1PHV8dIP68hmdPHQrmVa/9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZT54o0O69RlBIcwiRDe5EUvaAiHKkrPNJTryzaKu+2o=;
 b=qXRShpDnNxelAI6TED479VhUj3Btj3qzUaALDHYhLMirKk9z/QSiUsDZS9vMalATXP1a7KQap7XgO/Kt5PmBCztgvl47eG3kGiR5fjT+Uq53hiRKBtfQLmBggZhv5Yp95jq5Uqva9ipDsSoMoa4OSqvtZVcpWASwOQ1WeDM8Xvc=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4696.namprd04.prod.outlook.com (52.135.239.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Tue, 26 Nov 2019 19:17:01 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 19:17:01 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH 4/4] RISC-V: Select Goldfish RTC driver for QEMU virt
 machine
Thread-Topic: [PATCH 4/4] RISC-V: Select Goldfish RTC driver for QEMU virt
 machine
Thread-Index: AQHVo5NpbLpAkxeNREm+uBNHRoP7x6ed1QAA
Date: Tue, 26 Nov 2019 19:17:01 +0000
Message-ID: <0614a2c6d04549da5a17f885ec70d4f2d2c4bcca.camel@wdc.com>
References: <20191125132147.97111-1-anup.patel@wdc.com>
 <20191125132147.97111-5-anup.patel@wdc.com>
In-Reply-To: <20191125132147.97111-5-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a6ac0209-ef72-4746-0e2f-08d772a5372b
x-ms-traffictypediagnostic: BYAPR04MB4696:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB4696EA2F6E30E023CF46B96BFA450@BYAPR04MB4696.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(346002)(39860400002)(366004)(376002)(199004)(189003)(446003)(86362001)(6116002)(2616005)(71200400001)(71190400001)(6512007)(11346002)(118296001)(46003)(36756003)(7736002)(6246003)(14454004)(4001150100001)(4326008)(2501003)(6636002)(14444005)(25786009)(256004)(76116006)(102836004)(305945005)(8936002)(81156014)(2906002)(66946007)(81166006)(5660300002)(316002)(186003)(99286004)(76176011)(110136005)(6506007)(54906003)(66556008)(478600001)(229853002)(6486002)(66446008)(64756008)(66476007)(8676002)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4696;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zcpX01mA8EQHyGz98mqKeoeI4tmzWxUuIZDwbwiaCjhjyDU/xWsrHsuCWblBrtQhg50LE+fKi8kkZiACuUA7KnWRL5rUaLkmkVwVENFqmePGfzFc9xXKABSlNC4hgkAt9Q/luTcCTy15VihiyXRj8gJn8r8nKTvkK8IIo4hDWc6oN3sxlexhzqdp0GfE4uAQplAHGqpXZyhW4mNIDKb1wgPZS2A4L8DaRvRa3Db5HsMiPuBt3Jz3266QZZ6HT7nbGv/D8YlolgpYBUVyyFTQT38ScECAVWyrxz3h553+LAvJ2ie97A0OUj8VLDZiqxco48m/lRg//nVB2PMdG5JAcrlbOMqsgA3Ax+aEscYjc0QXhp4/IpNL+AJLMiL1EhwGmzcRFGni/GE4XBXJ/0eWkUkvYmzu8SNB1RPLiiJFUqc3F/IWQ+oyr79qcqavWDTq
Content-ID: <729417D03F4094458C7FE92D16C8A990@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6ac0209-ef72-4746-0e2f-08d772a5372b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 19:17:01.5084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GqVxWgW8yyk+gnyUYpiH0jURKEQO9Fig0iSuNmnPwLRsA2hnqOn8dQfbzXnWT6AOunUh7u/5GwTgXXtxywJX3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4696
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_111703_548271_39FF7FF0 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
> We select Goldfish RTC driver using QEMU virt machine kconfig option
> to access RTC device on QEMU virt machine.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/Kconfig.socs           | 2 ++
>  arch/riscv/configs/defconfig      | 1 +
>  arch/riscv/configs/rv32_defconfig | 1 +
>  3 files changed, 4 insertions(+)
> 
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index bae4907b4880..65cf39867c60 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -28,6 +28,8 @@ config SOC_VIRT
>         select VIRTIO_INPUT
>         select POWER_RESET_SYSCON
>         select POWER_RESET_SYSCON_POWEROFF
> +       select GOLDFISH
> +       select RTC_DRV_GOLDFISH
>         select SIFIVE_PLIC
>         help
>           This enables support for QEMU Virt Machine.
> diff --git a/arch/riscv/configs/defconfig
> b/arch/riscv/configs/defconfig
> index bf33bd40ee07..c5e04384ec3d 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -73,6 +73,7 @@ CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
>  CONFIG_MMC=y
>  CONFIG_MMC_SPI=y
> +CONFIG_RTC_CLASS=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y
> diff --git a/arch/riscv/configs/rv32_defconfig
> b/arch/riscv/configs/rv32_defconfig
> index 234213b4ea74..7972b1d321c1 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -69,6 +69,7 @@ CONFIG_USB_OHCI_HCD=y
>  CONFIG_USB_OHCI_HCD_PLATFORM=y
>  CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
> +CONFIG_RTC_CLASS=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y

Fixed palmer's email address.

Looks good.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
