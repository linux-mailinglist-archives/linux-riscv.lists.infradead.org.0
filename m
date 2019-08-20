Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4F695C17
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 12:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nE8pj3SAWjvO2DcidO3E+PBJMV60wdZrPklRjT55SXU=; b=Ypwdhiu+SiSkAs
	GcdZql5ctAzsbeOZHbEOA5/8GxrsPVoX+IdwFSsVFPwXFKNZk0Qp/HCyISKP2m5fwLmjHvi4cQku8
	/MEhHYcamCvS4BWJ6Xetbha5y7TTgtbxI3tFRpA5xXUeEsUZBmL62W5QCBn9U8vadfVzYEfglcj9M
	W9UXYLQW9gRhI4Le0ZWd4itSxnDid/Q1+r+ZL1BX6Q0kWERmbH8lsluodFn0RqyD6rf6Kvak2SrX9
	eajvzC26468tSOy4ZySxMQgIBXBm+Ruo1yWzPD8lfnw2Z5vYS3fTVX+klixaWYna9T31Eu+tcXhns
	jy+aTCmVR46tdIE4EVig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i01CR-0006l5-0g; Tue, 20 Aug 2019 10:17:11 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i01CL-0006kD-OZ
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 10:17:07 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ZGTbEEY+aI+WKlbYpD5ycmwultfFf1rrRGTTC0UOIvgUj1seW4d9QEPk9TqYl+ayAMqDmlA6MC
 T8mvev5nr298kzPbNSuD3pVGLUnQX9h/0IS6AX6//cZgxkT5OvHVOUSG2w79A+DxOYOV1/qR3t
 ZFViicjFTQ1g1HjJvSTsA07RLoHVpPCnGq1qNgcjYLUmgQ2AD/9QVswloOSZFRnz0XkBIE7sPu
 ckSWgeDieZcguyyxNCgPKkGvGK8kxhU892UwRTKeGNm9anO6I3QtNSyNgHznvRHUnUYwR2Uac6
 AWQ=
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="44908227"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Aug 2019 03:17:02 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 20 Aug 2019 03:17:00 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 20 Aug 2019 03:17:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qg1vY2qsULAmh0y6Sa7UYKQ6gGnMcde7FvgwHjv6HGYfrcC8VEiukuPywMKS48x81xVWVh0jGwsUr+FVRDU9lqpOofezjHI5N6Pkz+iaLyyPhZ6WjcU/4rw+Ye4GhUmpvo93ObC+Tt/lIBOtN62SL/+/Vqg82+y4OLeLaHcUXHvFst/JwfDHHa1trGjoN+LCyqwNMtPT6DArGIV+VAtLQpsW27CP+ErqUcdKhDJoBLadHiMMKtMQ2Zcs2oRVXIhCuAcpgUsuM42SPQYZmdXnf6Ap6nstd5twTBRiyr44wEghJrk41Pe9S3uB+Wi5NDJmWLMk2KCaeOsqhEh+Uvx0KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aEIMYzzWkSSNcvtr2qol2Ykt2ssfx0bRv8oWR/ba6nA=;
 b=BZ92G/yApSHWuPX226xkBHPqkhtJCuw30lYngPPABt/OyfKDLyWdAm8x8cavQMEvM2wmolBAe/Yp+XVz96oXHWKpjLtDOFtH6EJtpTO4nY3r8vfXs56zvK0mKW9YU6TJvBmCzXdCAvgqfGtvztu9S2RFjaqceEC4UPZ+V82/R+uTw9v/3PrLCLQkoGab4R9y4vYcWRE5WsOiPZMSUKt0SxrXSHrmUkPn21RXAdbmFg8VT011c9t2ir5vA34ewFGX30eXBEswtTNwCzN2IeDE3bTgJcKt0eh0PS3QWC4+4W41t3E0KYLQDRd7xsmv0wLi823WCvJNLtnDw+OicyEnoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aEIMYzzWkSSNcvtr2qol2Ykt2ssfx0bRv8oWR/ba6nA=;
 b=uzVwJ0u/9k25vmfaHCkSDjAz/2kKIUNJ1Tk6NdjjdTQM3ZmrbLQn5+kqB0LEVTdqw7MSu3U7C7cjXUb5FED7oZPSxoBntKCEILa+R353RidbaFUDCeXAwJQsIL770kcFAAQtyBgY6RsWf/hK1H2FgyUlHXNP6TN9lF4HEtIOTXI=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1374.namprd11.prod.outlook.com (10.169.234.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 10:16:59 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::410a:9d4b:b1df:2134]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::410a:9d4b:b1df:2134%12]) with mapi id 15.20.2178.018; Tue, 20 Aug
 2019 10:16:59 +0000
From: <Nicolas.Ferre@microchip.com>
To: <schwab@suse.de>, <paul.walmsley@sifive.com>, <davem@davemloft.net>,
 <jakub.kicinski@netronome.com>
Subject: Re: [PATCH 2/3] macb: Update compatibility string for SiFive
 FU540-C000
Thread-Topic: [PATCH 2/3] macb: Update compatibility string for SiFive
 FU540-C000
Thread-Index: AQHVPiKzEWVX87W+rUadJIz70Teg7KbR2FcAgDIZnv2AABKIAA==
Date: Tue, 20 Aug 2019 10:16:58 +0000
Message-ID: <0b50622a-1145-3637-082f-c4edaccbbaa1@microchip.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
 <4075b955-a187-6fd7-a2e6-deb82b5d4fb6@microchip.com>
 <CAJ2_jOEHoh+D76VpAoVq3XnpAZEQxdQtaVX5eiKw5X4r+ypKVw@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908131142150.5033@viisi.sifive.com>
 <mvm5zmskxs3.fsf@suse.de>
In-Reply-To: <mvm5zmskxs3.fsf@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR1PR01CA0003.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::16) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 167aa7df-a634-4e92-2da0-08d725578907
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1374; 
x-ms-traffictypediagnostic: MWHPR11MB1374:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MWHPR11MB1374FADB3A23A27432C3563FE0AB0@MWHPR11MB1374.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(396003)(376002)(346002)(39860400002)(136003)(366004)(199004)(189003)(25786009)(54906003)(53546011)(386003)(36756003)(31686004)(53936002)(6116002)(3846002)(229853002)(81156014)(66446008)(2906002)(6512007)(6486002)(66476007)(4326008)(2501003)(81166006)(8676002)(6246003)(6306002)(6436002)(5660300002)(8936002)(15650500001)(966005)(14444005)(186003)(66066001)(52116002)(76176011)(256004)(14454004)(26005)(31696002)(7736002)(66946007)(305945005)(66556008)(71200400001)(64756008)(476003)(2616005)(486006)(478600001)(316002)(446003)(11346002)(102836004)(7416002)(110136005)(6506007)(71190400001)(99286004)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1374;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KICwnLLISOxrOv/0JEy2xHyajJhufVGsGsO8qRvqnCCU10roIs47seYEi/V9BCptrrSyhNK6OIJRapeSIP67WY2h4e8TqVPnyn2Bro1otWx0ZJy6wgEeZXRXo05R3I7GY+sU+2fmvxIYxhkv3xMFWSxHb4mgXGYjDKkty0la0YVDKfxe03T46YxKdrejsZRCdIE9qRqEntk/Qtt6WzHonvfpjX0o0OBqb53d6rxoBNTuxVAVBUurJlw4r/HD69PI8J0GrozL7fFLOE38Xx3RDdztmmvQHWK5EltE3Y05thzl7q3ku/7m6sWLFPkTLwqm/1DOPkUEv2U6tMRPkXoQBTTYdStH87TqudadYOsnKOw9E+5496gp3Ns8ZRm+ni5iK0KtY9OWPVqws7+UCpTtp82YSlH7SfrnzflMLUF9ApM=
x-ms-exchange-transport-forked: True
Content-ID: <44B36E30E59D7841828B2F7738A2E610@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 167aa7df-a634-4e92-2da0-08d725578907
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 10:16:58.9305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 90njDbk/ipZduyIUYuv7+WpfMOHEdh/Xr6IZsEBclylYmtnHoEwc3ZIuznS/4mOV3/VmC/alzFLxzz7abWkQLSbPNArIbiZ8R8evW9J4KTw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1374
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_031705_888292_1FA72A93 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 sachin.ghadi@sifive.com, yash.shah@sifive.com, robh+dt@kernel.org,
 linux-riscv@lists.infradead.org, ynezz@true.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 20/08/2019 at 11:10, Andreas Schwab wrote:
> External E-Mail
> 
> 
> On Aug 13 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> 
>> Dave, Nicolas,
>>
>> On Mon, 22 Jul 2019, Yash Shah wrote:
>>
>>> On Fri, Jul 19, 2019 at 5:36 PM <Nicolas.Ferre@microchip.com> wrote:
>>>>
>>>> On 19/07/2019 at 13:10, Yash Shah wrote:
>>>>> Update the compatibility string for SiFive FU540-C000 as per the new
>>>>> string updated in the binding doc.
>>>>> Reference: https://lkml.org/lkml/2019/7/17/200
>>>>
>>>> Maybe referring to lore.kernel.org is better:
>>>> https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/
>>>
>>> Sure. Will keep that in mind for future reference.
>>>
>>>>
>>>>> Signed-off-by: Yash Shah <yash.shah@sifive.com>
>>>>
>>>> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
>>>
>>> Thanks.
>>
>> Am assuming you'll pick this up for the -net tree for v5.4-rc1 or earlier.
>> If not, please let us know.
> 
> This is still missing in v5.4-rc5, which means that networking is broken.

Andreas, Paul,

The patchwork state for the 2 first patches of this series is "Changes 
Requested". It's probably due to my advice of using lore.kernel.org (or 
something else).

I'm perfectly fine in accepting the patches are they are today but can't 
change their patchwork state myself. We would need Dave or Jakub to take 
them.

Dave, Jakub,

All tags are collected in patchwork and all should be fine on DT (Rob) 
side as well.
Please tell me if you're waiting some sign from me.

Best regards,
-- 
Nicolas Ferre

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
