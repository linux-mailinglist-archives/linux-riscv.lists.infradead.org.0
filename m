Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9C16E562
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 14:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P//gaezDJ1CjkM2eT8ZKmJScHKlRKfE8d3WSnV5PzJE=; b=LuOoYw96V/n6h0
	a29gMz39dpqq6JkasvftqfnKCjqQs2JP68fputnQTDdLzbVMg9M6EB65T6RJEIjGbLkMr1U7C9Rbl
	kXHllJrd3n6jZ/iWxMJbfCRZ7X/1Kej+OfUXm/NbgdFXNFxekszXgPbHzYxwejxoEJPDIJDDEU2si
	UWz45fs0UV/ScIk4q0uqHI2iehEk+I0Px9CWBo+n4ybyo1Jou1lOHB0ougI8y8dGgwnHk8BXGVdkj
	pCkPXbLpKoejcjBAelasRTNEkV550tM2vXKDUbTg6pFDcuxZfj7S7YZARYKL4DA91lpSOy512+dRd
	/aSDiAvoO0lAcQShSm8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoReI-0007EZ-Ra; Fri, 19 Jul 2019 12:06:06 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoReF-0007DX-Ak
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 12:06:04 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: A5Dq4WpTtI/yuLXjCHB5ZdKFjwc+0eK7TF6rjuZJpBBNxXv1rt3ZkphSIHGvviZhpupE7YiI5X
 e8vO2rNXNBwxgXyukbt9kM/j/TVqan0ltkc81rTNRLpobQi45cpDfna4vMPXGg85LBWl6NnRpO
 QLN6SLt9OHJ92o4soHStBmccLMo210D6NZkWnT3Sh3VQF6uKqebdi+S81NNCc9+QkSbmdjW3lE
 UiNum1Jhsr5dVP0myXFiPoP+UOoIPVlnBUY4iXkZH8Ze4KYMlLBZMQdW7cMHGO6tuSrPNuRyep
 QCY=
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="43419999"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jul 2019 05:05:59 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 19 Jul 2019 05:05:58 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 19 Jul 2019 05:05:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+ODuHUtUNAsh3Oh+t49gEi/ZjtcdqZBoWxkytqrVItdR1O892hzwKZ0NTq4VZUSPeIWYPOoSGZShTvi1alry1DNJTvuw65V/Hvn94xe3/YKk+0HCW90wb0KTux6+qcOaBHlsNpKw5Z7nneICKGLSpel9AnuleXjkyJEd0jISmFZMpBmpGZwk7jgU8wUaZxZrt9hV11p17yllzQP3ANQwM0n4rKDwpbzsxsaULgNw0xt1JAylpH9kaerAGZIbzK88LglTmR60/1c0Bsp7V0hER8Tuy/74O5ZTJsqw7j4CYexYy3ZT5hktiPj9Gn2Cmm80nGn4+UnOMeXcLIySrmrfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=drAZtFRKJUpc9zPstlcyBF57HazITvch/Ip9NXvGeSY=;
 b=KdbM3cBwqSxMKyVKAZOkd0VSzdrdyOIpuiPRs1mpnQjUzip1U4UDbKE9qi6Vtvu3ddBMpcrX3Bz3qQoo1RD5S+tuCTHFmuXuS9j/f3N8x9DX/TAuOZU/TYsd3347PsvYRq18uQ/X9kdNxo+CmaokUxH8akBJbill3aIlGKll2looEdTNWRzyZhw4MmNlxARDp2Tw2My2oYNHwnB0+QpCNGrpi9zMVCwMZagyPecm+gkcWZnEBVt8yMbqC5aBbiD/HJgMJ/Ip4NxTjlFc03o8L5TKcVxPLEleOqTJVxpx6XHzn0luy4sUkW+ZpuMMF6I8HTumXjwA7OExM0kVLPfTEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=drAZtFRKJUpc9zPstlcyBF57HazITvch/Ip9NXvGeSY=;
 b=wv4k+2HeKY+C0gRHSRJiYp7z1AzuSuHC8tw91943H4ncMOxQGybwE2LCPVM1XojiURDs1djFnnf5YNltSPjAEW2lNyILV5KqhcFVUXLWvPkR8Z70ngB+iihY4rwVRAQk6cgXLSSSERL3T8kh149pe29yFXOeVI+HGixYD9s/ddM=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1856.namprd11.prod.outlook.com (10.175.53.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 19 Jul 2019 12:05:57 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::558b:94f:fdae:3af6]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::558b:94f:fdae:3af6%8]) with mapi id 15.20.2094.011; Fri, 19 Jul 2019
 12:05:57 +0000
From: <Nicolas.Ferre@microchip.com>
To: <yash.shah@sifive.com>, <davem@davemloft.net>, <robh+dt@kernel.org>,
 <paul.walmsley@sifive.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH 2/3] macb: Update compatibility string for SiFive
 FU540-C000
Thread-Topic: [PATCH 2/3] macb: Update compatibility string for SiFive
 FU540-C000
Thread-Index: AQHVPiKzEWVX87W+rUadJIz70Teg7KbR2FcA
Date: Fri, 19 Jul 2019 12:05:57 +0000
Message-ID: <4075b955-a187-6fd7-a2e6-deb82b5d4fb6@microchip.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0107.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::48) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e68862f-03c5-403c-7222-08d70c41752f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1856; 
x-ms-traffictypediagnostic: MWHPR11MB1856:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MWHPR11MB18563E83C0EB73D091F1CAE5E0CB0@MWHPR11MB1856.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39860400002)(396003)(136003)(346002)(376002)(366004)(199004)(189003)(64756008)(66946007)(66476007)(66446008)(4326008)(66556008)(486006)(6512007)(6306002)(6246003)(14454004)(14444005)(5660300002)(256004)(53936002)(6116002)(3846002)(68736007)(8936002)(316002)(99286004)(110136005)(54906003)(2501003)(36756003)(66066001)(31686004)(6486002)(81156014)(6436002)(81166006)(2201001)(2906002)(25786009)(966005)(8676002)(15650500001)(478600001)(7736002)(7416002)(86362001)(2616005)(76176011)(446003)(186003)(11346002)(53546011)(6506007)(386003)(305945005)(71190400001)(476003)(26005)(31696002)(102836004)(71200400001)(52116002)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1856;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: slltzOKLwrMcIW0I1BaPgGn3CqcaLE2As0UrJIUtTHAIx/SniVocrGIlK6PPkLa7MFuxgIaFZSigX9g02iUVpzoh8swy9dXk2kXZrqYW3SrQLLUelmJ3ZviQq+t372OMTSNKMmIbDeFCByaTguek/ICdasJK5l2spv+1LXcPmi2C+uzmEU6skAvlfRPiBKA/ssm4qzyqjFZOc42nlRCYyQd57ORBoUogC5ZCwayw72jeb8sLWexNa9Pez9lNqc2qbtPVgUpdRAshRhs52319BcMLR8eIPQpz5g34zT0yQiDgq2NxIlBGVjRy7AvUTzZVSlq4C7+TwnDzAeqXywWzr/FIEn5o8zRx7KbivWQvgqT//6I8MltGKfbxRn9NWhRl27ZSaHjAX3jF4WOqHlawThR5xkZtM5HEEdq0DjKVgeQ=
Content-ID: <D5BEB55406C32044939CB2E42927225D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e68862f-03c5-403c-7222-08d70c41752f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 12:05:57.6827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nicolas.ferre@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_050603_489743_09A1B0FC 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, sachin.ghadi@sifive.com, ynezz@true.cz,
 palmer@sifive.com, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 19/07/2019 at 13:10, Yash Shah wrote:
> Update the compatibility string for SiFive FU540-C000 as per the new
> string updated in the binding doc.
> Reference: https://lkml.org/lkml/2019/7/17/200

Maybe referring to lore.kernel.org is better:
https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/

> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks, best regards,
   Nicolas

> ---
>   drivers/net/ethernet/cadence/macb_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 15d0737..305371c 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -4112,7 +4112,7 @@ static int fu540_c000_init(struct platform_device *pdev)
>   	{ .compatible = "cdns,emac", .data = &emac_config },
>   	{ .compatible = "cdns,zynqmp-gem", .data = &zynqmp_config},
>   	{ .compatible = "cdns,zynq-gem", .data = &zynq_config },
> -	{ .compatible = "sifive,fu540-macb", .data = &fu540_c000_config },
> +	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
>   	{ /* sentinel */ }
>   };
>   MODULE_DEVICE_TABLE(of, macb_dt_ids);
> 


-- 
Nicolas Ferre

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
