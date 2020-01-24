Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BB11477B5
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Jan 2020 05:44:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lfSLB40SSEDoFVpoTu7y3RR67nxhF41d8PDA83P0Exo=; b=dFI2W6u8RMej1AE/q4w7g8Rbz
	dw9CIZ1liglQyFlJh/ybLP62exrcAunc9jLyV95IxrhKjzthIWqPG3qoL+m38n5+D+DA33vZToc0h
	1yJZmBBQxKyxumYQcq54ycqulFvSJDAlVjSxswyiYORJDPTLpmXaTv9htYRS47BgyZsN74BvKf+j6
	WqJX+eDocrWCGaia17ugvl/kRlPLYz75wp16OviYITAqUnrve+M/OJg4PuayJetX7SNExzP+Fu5R4
	DKpjuB1zVomy/Jb6hDy5UsaTNPqmiO6sb0tAPbdaWI8rUN1KptFsMfP06VPqkT/95iTb+ufAD/K61
	k1btsYvyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuqpe-0007xO-7r; Fri, 24 Jan 2020 04:44:34 +0000
Received: from mail-co1nam11on2081.outbound.protection.outlook.com
 ([40.107.220.81] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuqpZ-0007wo-VK
 for linux-riscv@lists.infradead.org; Fri, 24 Jan 2020 04:44:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+AaqoHeW6iP4T7dBXCORzmNGMc0EtOTpjgw1Ggf92MOUpj/QfrIyXVFNDedVgu1Q4xWrvp9dzZLKMFktSY/ErJYWii3hxF8ojCASENBlRBTqyRbFZNVi5Bbp5H4S14TylFfK7geA+lVbG09INsNb1MdjZUR2qqDRFVktfWc3z9kLHplWhEbqVR9VjJHr4wIJmdWDR5JyFMqOVhtr2cDbJRAtFZKA9sJfTHyeijKVH5jtm/NIG6IQeCPJ02ABqyw6ROv+TN48mFOKRuXOdKmUH8beNVUHpHBnWdAVo7npYQwpidfmAFM5ObWmOZas87G6fxYhfpna/n7iq4U2WkxLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lfSLB40SSEDoFVpoTu7y3RR67nxhF41d8PDA83P0Exo=;
 b=HWSHGTULW5kl89hSYtwbCfkciWv975x8S4Ma9PhMBQ1M7OMKn7PWNEiFu9x3s4AZkdL0g8H/WDY28USmcmaGoOWfhC5Luj1D68VIg6BhcxvCPf61XeNpgtXza/V/vx0rUpvMGPR8DkBko40m+ew+lsqiUhAz/GXMMmIAIRxzU4EBjaLrvBbUhoSWa6ey2+KC8vsmV23nYafluF9xcFQRleUfOFZBJeoxGE/+NvgJrqPRcCrzGymZQjxv+ol64ho2UVkD0gVRmFGYRxhfR4x5gM8HSzh1/2qIRT5r8AuucVoTOv7OS2ybwhSWnF6fQJpzyZa8WqjUwQ+RCpurNxDtBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lfSLB40SSEDoFVpoTu7y3RR67nxhF41d8PDA83P0Exo=;
 b=LqesIIg/gNeQipcMs7fNyo8LbKJ9qfmB01IDx41CueJyQDHSSLsZIJHKzyK9bUPjhLwJMM3JyCFpzZsecQxE97vHPsVEg3DHVVnJCiHYH/kdv+nI/fypALotXXblPs/NGLsxpSDaECog4/sxnQcLZaToVS/E3Cr443THW0fULgM=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3734.namprd13.prod.outlook.com (20.180.15.73) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.13; Fri, 24 Jan 2020 04:44:25 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2686.008; Fri, 24 Jan 2020
 04:44:25 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: RE: [bug report] gpio/sifive: Add GPIO driver for SiFive SoCs
Thread-Topic: [bug report] gpio/sifive: Add GPIO driver for SiFive SoCs
Thread-Index: AQHV0Qd9Ufy04021PkCS1jGZjoDye6f5P51g
Date: Fri, 24 Jan 2020 04:44:24 +0000
Message-ID: <CH2PR13MB3368DFCC0681A92FBB52352C8C0E0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <20200122093642.jneuumkqojgem5hk@kili.mountain>
In-Reply-To: <20200122093642.jneuumkqojgem5hk@kili.mountain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0413c77a-5d61-44df-27a2-08d7a088169f
x-ms-traffictypediagnostic: CH2PR13MB3734:
x-microsoft-antispam-prvs: <CH2PR13MB37341E0D92B5803BCCE30CB28C0E0@CH2PR13MB3734.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02929ECF07
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(366004)(376002)(396003)(39840400004)(346002)(136003)(199004)(189003)(2906002)(55016002)(6506007)(52536014)(66556008)(33656002)(66946007)(66446008)(66476007)(64756008)(6916009)(76116006)(316002)(86362001)(186003)(53546011)(26005)(9686003)(8936002)(4326008)(71200400001)(478600001)(8676002)(81156014)(44832011)(5660300002)(7696005)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3734;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PBxtp9C0OW+P8dU4U4zXhbjNjsD55F8DLZpO7sZs9gbGCFWqz7UYlpUJI2w7Us7POwOFlywbpRvwrg35teO0z8Zbtm8eaiHVaYQo1SXNxk9/1X9jgEP+xnIgJNeAFDcTc+S08+GRrfyiygRQ22CscyU1fAm/i6bQRL53RYbOWY9u1vK0rRoZYj8zcyuITlnqYNU7djeNj2xHSawBQG6bUEc3jSFseDeHJCtnLjfYAHtf1J0350HpDa+mvTs1seKYNpVSn1w2YtLUEKGMSpZk2R/N1p/eInaAymrINx9ahiOMmABwvoV4udeqsXpDHx6Q+rNWInq0v+EpUq7BI786NNTof2gZvt4bBbO/IxML7n7GULlSwaobh3Nf2kv/fGy//aYCFSg7ekf1cjwbEOWkJeabg1f+5G0P+OX+labhXouUtLFKdFj2xMvaLbSNYhEk
x-ms-exchange-antispam-messagedata: lQwnXvLuvWKv1e9f2dFO/D4d/AYMSxzdPfCoO93U/NfzXrDosnsHuf+IZLXBkqM2Q/A0f56OmnBUDzq0M5DhI67tB7Govob45+s3TbNsGQixnWqp5rp5GXyuG7kGBMkZ9m8CgMhbp0OzZ94l0BR2bg==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0413c77a-5d61-44df-27a2-08d7a088169f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2020 04:44:24.9351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U8BLWXMyP8aI4NjIMGcEYQnneYtSyZlJZYFH5ogKrNUkl/8P6udIymoatQBCSTOSm5sYCXXJSqJcSf9b25fl4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_204430_152982_EE059A59 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Dan Carpenter <dan.carpenter@oracle.com>
> Sent: 22 January 2020 15:07
> To: Yash Shah <yash.shah@sifive.com>
> Cc: linux-riscv@lists.infradead.org
> Subject: [bug report] gpio/sifive: Add GPIO driver for SiFive SoCs
>=20
> Hello Yash Shah,
>=20
> The patch 96868dce644d: "gpio/sifive: Add GPIO driver for SiFive SoCs" fr=
om
> Dec 10, 2019, leads to the following static checker
> warning:
>=20
> 	drivers/gpio/gpio-sifive.c:97 sifive_gpio_irq_enable()
> 	warn: passing casted pointer '&chip->irq_state' to 'assign_bit()' 32 vs
> 64.
>=20
> drivers/gpio/gpio-sifive.c
>     86          gc->direction_input(gc, offset);
>     87
>     88          spin_lock_irqsave(&gc->bgpio_lock, flags);
>     89          /* Clear any sticky pending interrupts */
>     90          regmap_write(chip->regs, SIFIVE_GPIO_RISE_IP, bit);
>     91          regmap_write(chip->regs, SIFIVE_GPIO_FALL_IP, bit);
>     92          regmap_write(chip->regs, SIFIVE_GPIO_HIGH_IP, bit);
>     93          regmap_write(chip->regs, SIFIVE_GPIO_LOW_IP, bit);
>     94          spin_unlock_irqrestore(&gc->bgpio_lock, flags);
>     95
>     96          /* Enable interrupts */
>     97          assign_bit(offset, (unsigned long *)&chip->irq_state, 1);
>                                                     ^^^^^^^^^^^^^^^^^ Bet=
ter to just declare -
> >irq_state as an unsigned long so you don't have to worry about endiannes=
s.

Sure, will send the fix.
Thanks for reporting.

- Yash

>=20
>     98          sifive_gpio_set_ie(chip, offset);
>=20
> regards,
> dan carpenter

