Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B88A510CB
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 17:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zw+oO1N7x+yuvtFzI4181tnKcvKJSfGR1jJVZhI8Ij8=; b=KxR4nvrNF6RlZE
	svs2xJVP3wNjpAyMvEtFWVAWpLQFGN6KOW1dJNBS7jNRkOMVqYyHZFQm4QM15mfsH5RErfbtcJ95B
	ybEFCMpQ+MtsQEAJnq79nhe4HtMUxyDyiR/RqRQGpqKWq2qZwbQ6QNnBH+QLK/0uGmRdXLvhZQrAm
	ybnlN0aAiZzVfVWnSTi6HT6nKijOKY1XvSDuUpVNQm3jYjH/WADE+7ejTbo86FH21EYI0gH28TZwo
	meyMkAGFxINsTaMF4DXWm2BUjE6OYYSnlih0u8GbVOqkHxYoY4PrFu7hUTci+P74z5/tm+wx9lx4q
	NkU/wN2SDPMUlDaJNqrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfR3T-0000dS-Ql; Mon, 24 Jun 2019 15:38:51 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfR36-0000Ms-Ml
 for linux-riscv@lists.infradead.org; Mon, 24 Jun 2019 15:38:30 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,412,1557212400"; d="scan'208";a="35625180"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jun 2019 08:38:27 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 24 Jun 2019 08:37:28 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 24 Jun 2019 08:37:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Z8Vw1y174E7oyZoYvXlSn3C/Ka4yfqqxb9UEYX1Ezk=;
 b=sn2HlGn3AFoGH99UgovOLUjWVdiafpuwFnURmVO2yqFzlVQNk5KTcbT49oLfMGuoOENrHN7FN3jeJUrCLS0r7SayaPkqQibl9CLfJb8+AyKitxdkDhE/XPw/NLDAiOaFIxmCFxE68cEvUlVJgjxKyTA40b5SLUj8Rh5XGWFYmng=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHSPR00MB242.namprd11.prod.outlook.com (10.169.207.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Mon, 24 Jun 2019 15:38:23 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::7534:63dc:8504:c2b3%6]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 15:38:23 +0000
From: <Nicolas.Ferre@microchip.com>
To: <robh+dt@kernel.org>, <yash.shah@sifive.com>
Subject: Re: [PATCH 1/2] net/macb: bindings doc: add sifive fu540-c000 binding
Thread-Topic: [PATCH 1/2] net/macb: bindings doc: add sifive fu540-c000 binding
Thread-Index: AQHVKqLbM22kFcE4xk2eilNUVLOx5w==
Date: Mon, 24 Jun 2019 15:38:23 +0000
Message-ID: <b0c60ec9-2f57-c3f5-c3b4-ee83a5ec4c45@microchip.com>
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <1558611952-13295-2-git-send-email-yash.shah@sifive.com>
 <CAL_Jsq+p5PnTDgxuh9_Aw1RvTk4aTYjKxyMq7DPczLzQVv8_ew@mail.gmail.com>
In-Reply-To: <CAL_Jsq+p5PnTDgxuh9_Aw1RvTk4aTYjKxyMq7DPczLzQVv8_ew@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0406.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::34) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 290f0a53-2d13-42a3-dab0-08d6f8b9fde6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHSPR00MB242; 
x-ms-traffictypediagnostic: MWHSPR00MB242:
x-microsoft-antispam-prvs: <MWHSPR00MB2422390040E3DA84F4ECFD6E0E00@MWHSPR00MB242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(376002)(366004)(136003)(189003)(199004)(6436002)(26005)(68736007)(6116002)(476003)(6512007)(110136005)(36756003)(6486002)(52116002)(73956011)(76176011)(66556008)(2906002)(3846002)(53936002)(72206003)(31686004)(66476007)(66946007)(11346002)(64756008)(478600001)(4326008)(99286004)(14454004)(25786009)(446003)(2616005)(66446008)(86362001)(102836004)(229853002)(53546011)(186003)(6506007)(6246003)(54906003)(316002)(486006)(5660300002)(66066001)(31696002)(386003)(71200400001)(7416002)(305945005)(71190400001)(8936002)(81156014)(81166006)(8676002)(7736002)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHSPR00MB242;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QNtqDVoxysryNHIC74fIbsrkiCeObMpZohIvR4w1aKNnVNyCM/BiSdfNTl7hSloeV5r4YJcunx9VV3i+DKARv4WG04vLbqzj+dMxJGB4gmllN67LpWwVfqM4otEbxZ3iPy7+6Tb+IwKhb6ecARkisf2NorWGmdyIT5ycYjzo+2up4QEwKnU7TnyeXZErOyOKKy4tSjTzgcR53nQPksGgPcqz19DVmObu4wo9JyzXDoZMV6glvm2NDoFONiIp4WnE0eLNXnXvan9FqqWke4Et8B3LVGrcVaAr6QVQ35zIqEYCZT6wrygcDQrHd2eCwzebYpyqzzShfFtxeQOgJGptT/uF5A0bVLALfijovmrEyRXcsCE1nZ8ngKPHaHxlmw6GKjsma3rTZHK8xpzevKa8r+3xGjVeF0aP/Hh75q2W8tU=
Content-ID: <BF668DD5250ADD4CA5B56765716862D1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 290f0a53-2d13-42a3-dab0-08d6f8b9fde6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 15:38:23.4499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nicolas.ferre@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHSPR00MB242
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_083828_776768_D8546AD6 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
 sachin.ghadi@sifive.com, paul.walmsley@sifive.com, ynezz@true.cz,
 linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 23/05/2019 at 22:50, Rob Herring wrote:
> On Thu, May 23, 2019 at 6:46 AM Yash Shah <yash.shah@sifive.com> wrote:
>>
>> Add the compatibility string documentation for SiFive FU540-C0000
>> interface.
>> On the FU540, this driver also needs to read and write registers in a
>> management IP block that monitors or drives boundary signals for the
>> GEMGXL IP block that are not directly mapped to GEMGXL registers.
>> Therefore, add additional range to "reg" property for SiFive GEMGXL
>> management IP registers.
>>
>> Signed-off-by: Yash Shah <yash.shah@sifive.com>
>> ---
>>   Documentation/devicetree/bindings/net/macb.txt | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
>> index 9c5e944..91a2a66 100644
>> --- a/Documentation/devicetree/bindings/net/macb.txt
>> +++ b/Documentation/devicetree/bindings/net/macb.txt
>> @@ -4,6 +4,7 @@ Required properties:
>>   - compatible: Should be "cdns,[<chip>-]{macb|gem}"
>>     Use "cdns,at91rm9200-emac" Atmel at91rm9200 SoC.
>>     Use "cdns,at91sam9260-macb" for Atmel at91sam9 SoCs.
>> +  Use "cdns,fu540-macb" for SiFive FU540-C000 SoC.
> 
> This pattern that Atmel started isn't really correct. The vendor
> prefix here should be sifive. 'cdns' would be appropriate for a
> fallback.

Ok, we missed this for the sam9x60 SoC that we added recently then.

Anyway a little too late, coming back to this machine, and talking to 
Yash, isn't "sifive,fu540-c000-macb" more specific and a better match 
for being future proof? I would advice for the most specific possible 
with other compatible strings on the same line in the DT, like:

"sifive,fu540-c000-macb", "sifive,fu540-macb"

Moreover, is it really a "macb" or a "gem" type of interface from 
Cadence? Not a big deal, but just to discuss the topic to the bone...

Note that I'm fine if you consider that what you have in net-next new is 
correct.

Regards,
   Nicolas

>>     Use "cdns,sam9x60-macb" for Microchip sam9x60 SoC.
>>     Use "cdns,np4-macb" for NP4 SoC devices.
>>     Use "cdns,at32ap7000-macb" for other 10/100 usage or use the generic form: "cdns,macb".
>> @@ -17,6 +18,8 @@ Required properties:
>>     Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
>>     Or the generic form: "cdns,emac".
>>   - reg: Address and length of the register set for the device
>> +       For "cdns,fu540-macb", second range is required to specify the
>> +       address and length of the registers for GEMGXL Management block.
>>   - interrupts: Should contain macb interrupt
>>   - phy-mode: See ethernet.txt file in the same directory.
>>   - clock-names: Tuple listing input clock names.
>> --
>> 1.9.1
>>
> 


-- 
Nicolas Ferre
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
