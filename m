Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F109082A
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 21:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVzEIWDNTxMz35TKVpvv5Rhzd/4oJ3Bx4ei6Kk4B0oA=; b=ln32NlqVziutMD
	4FBWL4VzUii6q9FUmsaSaEToQhf1H5o8HlenHceAM27n9VvnarnX2TNHBjIMR3r6CIjh5JiEAuGKo
	CPy72GSWvOV8DTmkGx0uUTpO4jxUBY55yLo1mwWq/AvNNOXzUZKReUd657gXBknM9yx1/x66kYvgV
	YPY3Jf+HwdzqK6il+kd94H4bULzEPNcyaZNtOUMtZLo6bOY+jK0C+HYBqE9lLj0g0NHuwPfW17jmL
	/iX/twkA7a/7pP9vWRO04HLsDlP6jfRqWimZSkg/hc+qgAPKRUzd38pv8b/AHkS70qBt//+0twJT+
	GsIx9qIOaW1UyDALpFSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyhnW-0002oB-KG; Fri, 16 Aug 2019 19:22:02 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyhnR-0002nj-Uz
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 19:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565983318; x=1597519318;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZNDl+bii6Kn3re353eARcian2bRjMp890MTLEeU/mto=;
 b=EpqHQu5yGnys8kdxC64+/VebSBP+70CvJQk0YMIt3d4WbbZume9y14n/
 FZFxWnTfNoQuuCJzHHeENKMZrJT8HpAW6ekJbLVQeoPAwcpW2TUDI14Ux
 QU9daLtT31+EaDKuLtk/iQmQeP8SZ0mjRXuzc8telTG2lNPxTIMohOLya
 59OyS34iWsJktWJqxObIO5qUeZjvIgB2sejfXpdAfL8IcnAcXSdogbH+c
 3Kc/99CmPjYxoJXiCK0RkFMNrU1ljgyqx4AfO8JZLjUpzPhKaXueAqa6k
 5Zw1IscCeNRBb/ip459n0d9HeygekWG8tFYSkQEcaJn0zz1V5awp4mXjQ g==;
IronPort-SDR: 6sl0qd4cRw2Ws0eKbKN0Juck8C3Wub18vyQ5OmihUoflzicBgNWfPQKmtdmzRZhJeIvWTvrfEf
 wFzoYRS5sFaS31B0g50upLUl7Q1pVMYdA+1X7EsBrKLhvzYa1TcqRQtY3bMEMWCIhpdhurDCm5
 KyiD9JZaY9R7nZOaGa+XSpCTLy4LxUHN24G+P20Zoz08N4PlsIrRPz426nlzqCR0UVD2pwZOeK
 WODuCfsY0+JhZbDEXwSkJuo0/DCZD1AzVMf0Vll9FrozR8lZM46do/+4Rqj/bqjt3hTYd/tTeX
 2d8=
X-IronPort-AV: E=Sophos;i="5.64,394,1559491200"; d="scan'208";a="120614103"
Received: from mail-bl2nam02lp2058.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.58])
 by ob1.hgst.iphmx.com with ESMTP; 17 Aug 2019 03:21:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JeOEXv+Yj67xuO4pvcmqVNv2tPWzqFY7bSIdG0yJNO2dcLXTlRNH88Yq1bEHxgubVF9OvXwNEtKWrA6z4U0MKTWCs0jgyNJ/tjXNCHwCt2A9kwKVN3W7gkaF+O5hWOfLO9xvVO/CAQYmPh14kZLY1MM7+yCTGh8VXf4MzlVS2lhgVa+x6RTGrPKSWds/wnRSJaVMlYVokG9PmHttipvan4xHcgq2B3QLUkOzObLQ2uPlW9AMjzg6tCQU6YjjiZZiJ55Zyy+zV9WRw7WhSoDKDD2IKjOMa1XY76iIsSutZoGg6AF/vTMLH6CV2HL92Mi1m/AXYChNRBLqkr6RjhCJCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZNDl+bii6Kn3re353eARcian2bRjMp890MTLEeU/mto=;
 b=VkN4fUxEqYGxErl0nphmLobN3aRA97I/rQMP3ULPogJ1z55pqkcwbMRL/OnoEB2TDsqXKx50jPuRzj+RDUb5ZjainncgufnqVB2ysCwBRrNEWRkSXVQN233kPI2gdeMqnclrqRfLvyBFuffdPzm0lJcQXSKbZp4Jj1qO6C6+vDbUIn6f4KD15c+dqsX4frs6sV/DHoyBSEQCfysYS31SxWAhGXnKMltqb79vzxhYgApsmaRVEv3ABcqsIS0OBNw5ZvSCzSDIY3z2+9+Pl2UwA+NwZF/g1r9oGbAryJ/rGO42c3s2/mKkYrGiiJBx1WVzvEJUEj5ZLK/ya+7laIk3dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZNDl+bii6Kn3re353eARcian2bRjMp890MTLEeU/mto=;
 b=gjQ/a2Q7arhq4kvf16Yf96ow8rzvAkcNx1pzVtRYaDU5X5j/HXoblSupWjmODRwTNMTbxcZSsSVXknKZl4D6cqodMf3jA8gYmOyGOpHsYwWCpa+JiYshnb3G9x7tRP5kL5QDLdsFymH1ZTIuIDLyjwRSiRHSVa800nZymW984jo=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5845.namprd04.prod.outlook.com (20.179.59.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 16 Aug 2019 19:21:53 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::d89b:cb55:d563:79e9%6]) with mapi id 15.20.2157.022; Fri, 16 Aug 2019
 19:21:53 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@infradead.org" <hch@infradead.org>
Subject: Re: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Thread-Topic: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Thread-Index: AQHVTU090lWiUiEQM02Uoz9V3NTipqb3o0CAgAaR3AA=
Date: Fri, 16 Aug 2019 19:21:52 +0000
Message-ID: <3fb8d4f0383b005ecd932a69c4dd295a79b6fb1a.camel@wdc.com>
References: <20190807182316.28013-1-atish.patra@wdc.com>
 <20190812150215.GF26897@infradead.org>
In-Reply-To: <20190812150215.GF26897@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f4e447b-ebf0-4905-ffaf-08d7227efebe
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5845; 
x-ms-traffictypediagnostic: BYAPR04MB5845:
x-microsoft-antispam-prvs: <BYAPR04MB5845D238E3A0F20487A85358FAAF0@BYAPR04MB5845.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0131D22242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(136003)(396003)(39860400002)(376002)(189003)(199004)(6116002)(81166006)(36756003)(5660300002)(3846002)(1730700003)(446003)(478600001)(256004)(54906003)(6246003)(25786009)(81156014)(8676002)(305945005)(71200400001)(71190400001)(99286004)(14454004)(7736002)(53936002)(316002)(6512007)(66446008)(66556008)(64756008)(76176011)(66476007)(6506007)(2501003)(86362001)(118296001)(66946007)(76116006)(476003)(4326008)(8936002)(102836004)(26005)(186003)(6916009)(6436002)(6486002)(229853002)(5640700003)(2906002)(2351001)(66066001)(486006)(11346002)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5845;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vmdvgaEmU/EnPLf9DH+NxedgHk1PxS/K/CNCREo1pck+cVAElfpHJRBlUAEQYW9IARMKLSIlBhrH/Y4+fbmfbaayDJ35dE/zjjS28OB4aAzY1+etlWNp2tIseOwt6V+1QkZBUqOci+f/5C6o+lODXGrkfabZ7f4MuEuUYL6C9Wm9Oc8+dllGMAd4Rmc91pSIzkwvh5f7vBIfszXEue8ekQAPoLflc8MPlNpk0pVgGk/TRLo2g3FEqEbCB+SyA0I17kFOxHFHHlm7AGJYE/gF+03UMZUW2VA58ht43BzXCM+bA0zXqgt8tDCplqGP90GAQOxA+QwxAH/PwKaopl1IcVpKgnyCIQKxcMuhrmgmhqzG3KN8rTwuDAhFR+Xc78M+T3tlJleXWgG6/gU6My947BwYpFB/TGcvHRx8mAmAH/w=
x-ms-exchange-transport-forked: True
Content-ID: <C1958C8B74608D4698922317252C5ED2@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f4e447b-ebf0-4905-ffaf-08d7227efebe
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2019 19:21:52.9989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J3+uy0fnnvUehxT0mwnBbGg3K6xzcDxzjwkyjoj9QEpttRSsoZjVVRzWbl3ndZqFBELmDzereRy3uX1yDUiEDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5845
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_122158_174895_E2917DB4 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-12 at 08:02 -0700, Christoph Hellwig wrote:
> > +	for (e = mandatory_ext; *e != '\0'; ++e) {
> > +		if (isa[0] != e[0]) {
> > +#if defined(CONFIG_FP)
> > +			if ((isa[0] == 'f') || (isa[0] == 'd'))
> > +				continue;
> > +#endif
> > +			unsupported_isa[index] = e[0];
> > +			index++;
> > +		}
> 
> I'd just use if (IS_ENABLED()) here to get full compiler coverage.
> Also no need for the inner braces.
> 

Sure. I will do that.

> > +	if (isa[0] != '\0') {
> > +		/* Add remainging isa strings */
> > +		for (e = isa; *e != '\0'; ++e) {
> > +#if !defined(CONFIG_VIRTUALIZATION)
> > +			if (e[0] != 'h')
> > +#endif
> > +				seq_write(f, e, 1);
> > +		}
> > +	}
> 
> This one I don't get.  Why do we want to check CONFIG_VIRTUALIZATION?
> 

If CONFIG_VIRTUALIZATION is not enabled, it shouldn't print that
hypervisor extension "h" in isa extensions.

This can be extended to any other future extensions and related config.

> >  	seq_puts(f, "\n");ther you want to know if a specific extension
> > is enabled
> >  
> >  	/*
> >  	 * If we were given an unsupported ISA in the device tree then
> > print
> >  	 * a bit of info describing what went wrong.
> >  	 */
> > -	if (isa[0] != '\0')
> > -		pr_info("unsupported ISA \"%s\" in device tree\n",
> > orig_isa);
> > +	if (unsupported_isa[0])
> > +		pr_info("unsupported ISA extensions \"%s\" in device
> > tree for cpu [%ld]\n",
> > +			unsupported_isa, cpuid);
> 
> And I'm not even sure why we care about unsupported
> extensions.  Sooner
> or late a few will op up and they should be harmless.

This is just an information to the userspace that some of the mandatory
ISA extensions ("mafdcsu") are not supported in kernel which may lead
to undesirable results.


Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
