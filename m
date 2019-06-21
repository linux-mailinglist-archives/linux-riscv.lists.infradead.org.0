Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8644EF4C
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 21:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ex2YgLUmMHwkCixdpa7UN7dEiN4qycwZpF0p0CbwWIU=; b=FT6QCN/qKs/3Nx
	pJaneGM3ZPRJTS41VUcWdOc8Oxhos124SuCo5kDHCvcVgfI2nyZPp/g9C+mPt+9/7yqpXRG17IPAv
	f44gRdAxqI1PKv7rgddJdhxMxB6jLiroh28nfnAdyGQoHuqCdymf5GyNXkTlwupgoLz4g/x/1hJHm
	OdjaSaTA5xl0W3ywvcEejV8KFdd+f6BImon8BJI3geeuV63YBN6SH5bxpqj72dwymytz/hspHxur/
	syr9V4VQyetE+38MbiAI39FGHIO2OLPwD3oryWymp83jmSnZlq1meDAsTc6z8QBpruCypfy2OgRuK
	n9SqyaF0IUuBHC4eYSbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heOzb-0006W2-Kt; Fri, 21 Jun 2019 19:14:35 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heOzX-0006Uw-Eu
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 19:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561144472; x=1592680472;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+AJQW0kNNpk4BWguDTeJsA9QlCDT0tD7bbEXMXP+RgQ=;
 b=PGpFM1OE1Ai4Omo9v3WCub9n7ifRVxY98LxqDe0+2Dn5i3UUXczFJzw+
 nU/P8SUJFDzb0I6adN5e8oG/o1g4qZ53xLgHXOl3Bwthi/uVRcKIu+Jpn
 Z81Fmu7kBbV3r9EXWCPGQ0nDpfnhv8vSAN/kmD/RM4XJHcEkgWKlZOJ8R
 drxQalfq4cAcseeGX6IAIEAcIZOcZGv9BkFMH/y5bqND72uP+1SHDTWIB
 SswxM9vD5RgX7Y0PB5Qfu4i65ErHlUCUy/axD8qKGcmc0iI8czkzHt4u+
 agrK7Owg0aWsoUNPGz/yolX1vnh9TUkc8ABSeHymKt05wpBBVohI2VnBE Q==;
X-IronPort-AV: E=Sophos;i="5.63,401,1557158400"; d="scan'208";a="112410683"
Received: from mail-sn1nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.52])
 by ob1.hgst.iphmx.com with ESMTP; 22 Jun 2019 03:14:29 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+AJQW0kNNpk4BWguDTeJsA9QlCDT0tD7bbEXMXP+RgQ=;
 b=I93raC/JVgBtohLBZoTsijI2+grtVr6lz9j93438ogMYLSxrUFE0TKcj73eeqWeZERNYl+7YUeUBLad7EdiThktf4D7dKSD8WTGWp3RBs9sIF7q47kCqRMdA2quru56IhT5KM55iMQhw+wjeBpVtvPYt2jAVWy3otkNumR2RlJI=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5045.namprd04.prod.outlook.com (52.135.235.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Fri, 21 Jun 2019 19:14:27 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 19:14:27 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
Thread-Topic: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
Thread-Index: AQHVKCA1s3Kn2VpoYUKwjMwaF74JUaametQA
Date: Fri, 21 Jun 2019 19:14:27 +0000
Message-ID: <18c7992607dd1fed062bd295ac0738a759eff078.camel@wdc.com>
References: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
 <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75bd2c75-aeef-40f3-473e-08d6f67cae1d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5045; 
x-ms-traffictypediagnostic: BYAPR04MB5045:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5045CAA56321F757D4B58C15FAE70@BYAPR04MB5045.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(136003)(39860400002)(376002)(396003)(346002)(366004)(199004)(189003)(72206003)(66476007)(476003)(186003)(81156014)(2906002)(2201001)(3846002)(14454004)(76116006)(102836004)(7416002)(53936002)(110136005)(81166006)(6512007)(486006)(26005)(54906003)(6436002)(71200400001)(66946007)(118296001)(4326008)(316002)(6486002)(68736007)(6116002)(66066001)(8676002)(36756003)(6246003)(25786009)(229853002)(256004)(2501003)(6506007)(64756008)(14444005)(446003)(8936002)(5660300002)(478600001)(305945005)(2616005)(7736002)(76176011)(99286004)(86362001)(71190400001)(73956011)(11346002)(66556008)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5045;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XfTAuXQ8PpV80uoBukLPgKSIruDsacpPQqWmc+iVP563000HlHXcow/J8UkxzyOwQTOnvJALIzzhxdnFqRouBRF4cB2gzGjmm/oacl/2XbFvQeVJ9soZC0qWxzvgnJCjjp1Dj0w9RkevwRcaij7Ma4K2LSpjQh810JhFIUqRR3SGBZUBYC7fFW5Q2s0Dn/9qP80Zhvb1Qd0oZ2vvBXoVmGJT8+00NcwyPbKhnUOCylQpJmlQ9JAgiVqYm0y2KF8lVh5ube8pU615pkNeGS4LgkSc8H7fcjG3/3y+xGq1OmG9rtkKVbG+ydYwPEL01Ts7ByApt7FBV1q8zXHXmbz9hNo7KYvj0A7wJcUZIT3JQqlWGmNsKAutH0oOoxfBee2XprvWED7C2Z+kpm0NoeSQTe5OwBkzN/ofw6CBD86u9dU=
Content-ID: <0C3E41F463150B45B327C91AE3200B30@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75bd2c75-aeef-40f3-473e-08d6f67cae1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 19:14:27.6546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_121432_198744_39B7C147 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-06-21 at 16:23 +0530, Yash Shah wrote:
> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 16
> ++++++++++++++++
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 4e8fbde..c53b4ea 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -225,5 +225,21 @@
>  			#address-cells = <1>;
>  			#size-cells = <0>;
>  		};
> +		eth0: ethernet@10090000 {
> +			compatible = "sifive,fu540-macb";
> +			interrupt-parent = <&plic0>;
> +			interrupts = <53>;
> +			reg = <0x0 0x10090000 0x0 0x2000
> +			       0x0 0x100a0000 0x0 0x1000>;
> +			reg-names = "control";
> +			status = "disabled";
> +			local-mac-address = [00 00 00 00 00 00];
> +			clock-names = "pclk", "hclk";
> +			clocks = <&prci PRCI_CLK_GEMGXLPLL>,
> +				 <&prci PRCI_CLK_GEMGXLPLL>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
>  	};
>  };
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 4da8870..d783bf2 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -63,3 +63,12 @@
>  		disable-wp;
>  	};
>  };
> +
> +&eth0 {
> +	status = "okay";
> +	phy-mode = "gmii";
> +	phy-handle = <&phy1>;
> +	phy1: ethernet-phy@0 {
> +		reg = <0>;
> +	};
> +};

Thanks. I am able to boot Unleashed with networking enabled with this
patch.

FWIW, 
Tested-by: Atish Patra <atish.patra@wdc.com>

Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
