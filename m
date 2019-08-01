Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3B37E62C
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 01:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TeP0GxwZ64SRCdBGpX5h0DD+M0IaSNkGa2TEjldFfc=; b=shyd2IC0ntQ4ZY
	cejMWu8YhoiVdi6DPqGli8x8u8ckzkro3opBGF1Eox27FfQ0lbWVZoeJdBcyv122WhjEfr4ywpGBS
	XiGh6HUqp1HapBUrYAE6DJm1uA5GoBseRTGh2z9ILfliRs/hFyQG9d8KmzG0+q5mZbIneFVk30BeT
	KLhVG7luou5cOn4A534rAJpBI2ozU/eDcu059FyAC4UO+KwK8Y9gjM8hIlF43dqHAqUrxXIMh6vOi
	CBRANqaAW0YI6XesQdd3xCABPdpKzEqiVQoqn3dDvHeUbpAO5WWGa7kvgKekwxb9D48HkVtMF+mo+
	CBR74ckUcGRQFDjDOlqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKAm-0003KV-0l; Thu, 01 Aug 2019 23:07:48 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKAi-0003Jh-AO
 for linux-riscv@lists.infradead.org; Thu, 01 Aug 2019 23:07:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564700864; x=1596236864;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JkDeCuNZLDQxMhX+hkEOeAeXDWX8KAfgeLMkHiH4v54=;
 b=bcRdATMZYqXQ0zIB2kARApTtCBrslEClUeXGvDNg2JHUCTBtB5HZsY0c
 I3FSVAjjbMvvEc36OUuVrd3pc3eOZ/eDn5Rrcz9YPHwKx+TQFGjkIL42S
 KGm5vVrHyJAdxtYZ15CNApyb89tMCvQlaAgr7/XH3N//qGjNrI/P6pukt
 G3rVvPmO4TdEAUxdINVMHTtTyf3tlckc82mZPe3Bluz6pcKX2m4r7Hcvr
 Om6cHqU9hjLEiVlDhBqatNA0VnaF5mjOIlmFSx+0UMiLVErkoMx8w39/A
 JaooOgl2/uGiMV8utTxEL5FkXaEGnexAUPwz1HA18wuA2Zm6ykDjHEf81 w==;
IronPort-SDR: i37UlXkPCCzX8PMoX/hOdykA4IurLYiqp2iLRYZqbHH9i53ZQ9eCgQDjbPNvYPE1RhVwVsfaiI
 M/bE8Ohz4H093zNKz+TKdyr6mCxSbxDabFRiaSxBQkIE6Hftu9EEr3s6BvF8ieAYNZSUWn4o2l
 cW93K4yRfFW2B/wsxWv2CqLIxr7717WAw+TsMBBZpqwqp0YE3Ytx0RmhRx5ZEm6nYewIvTX+8d
 qt2ke3A83fLJGNKQ1PTd9PTTNN6IqbqPluRqbVQD8+7ZbT23YteB53Jjk3OR6CmCj6jPm0DVSs
 IzQ=
X-IronPort-AV: E=Sophos;i="5.64,336,1559491200"; d="scan'208";a="114750636"
Received: from mail-co1nam05lp2055.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.55])
 by ob1.hgst.iphmx.com with ESMTP; 02 Aug 2019 07:07:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UL7FSxvw4DVddt43JXXkk8E5ZMQ3ynyGh0vXD9CelO6orbb/bK/jbGjZS16SwhzfvjmcjSGhtW6ymUfTxf9xD52GHXvLnImAXImqlOmJIpN6KxBfbAsWFynGB7cIWhPGQ0cwo1UFYtGCc9caX3gVHy2mNHdv5h2Zb8gT47BQ4j3xRF4QjIJlC0uuMLl9FcFgm0uT/vZSnrPNS1Lj50ZVljJay+Sxz+x/Ps4FLlwFlq0DJnDsSYp20milMO5IWtegZHUSx8rf6iARw30XctslXRpDnxEjkFysknAO62d3gQY6NS0zmFrpzOVP0L3v1lQr0Rj+qSMaw/8Ta7dVdkyr2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JkDeCuNZLDQxMhX+hkEOeAeXDWX8KAfgeLMkHiH4v54=;
 b=BaVyd+FXpWahj0lFfx0qnb3woMRe6AqYI3p4oUtXRgKUgGS+41cn39j2MkMyaDY5wpsfVrUKt/jzomnESWRWcX//OqBLMCjV7B5fscj+8x9G6f8NA5J9ivmBneWjfxzMpcUp1CG2A7ZwKSKP7rxKpEluBmTB2i5LIg5ZNVsQNhfAl/mn5B+P8vVb7yiZyvWhvBlxPa9jP8/WJzTTZ36f42cin/LBM4JBQzsaUTTOhWDrpn00mnsuLESy5CuKutFXR3IipIDvDsyi9fo4KJt8ofqhEnc/FBLtRm1lOl69jAcSZrzFqtOs2g2Y8vkBq63ZXxqJbKwVv3ZgRvFO+lZ24w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JkDeCuNZLDQxMhX+hkEOeAeXDWX8KAfgeLMkHiH4v54=;
 b=HXJdQK/rh3+XgdDw7Va/DHEKVJP6KqnuADIlso951Y4trIDD762MymwrbhgTtwtFik6pu8s70vl1JZJEvVllTsuDAFIIK55LOQrCV8VOFCRlWVtAyCLgtDkPu9jpPLY9GGE3cV3ZAYVuIsnAa9A1UelccPB+sWkdf+6gWWeh8XM=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Thu, 1 Aug 2019 23:07:36 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Thu, 1 Aug 2019
 23:07:36 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH v3 5/5] dt-bindings: Update the riscv,isa string
 description
Thread-Topic: [PATCH v3 5/5] dt-bindings: Update the riscv,isa string
 description
Thread-Index: AQHVSAREeMdpzzXGsU+2Z9vvOg2BbKbmcbCAgAB6FQA=
Date: Thu, 1 Aug 2019 23:07:36 +0000
Message-ID: <40ec671a2ef7204ad890b2ca43ec92d6981d6344.camel@wdc.com>
References: <20190801005843.10343-1-atish.patra@wdc.com>
 <20190801005843.10343-6-atish.patra@wdc.com>
 <CAL_JsqLqxN1+fvrdD24Ho6s7gB+pGy-0sZaL-jJqkYZ2yC4JEA@mail.gmail.com>
In-Reply-To: <CAL_JsqLqxN1+fvrdD24Ho6s7gB+pGy-0sZaL-jJqkYZ2yC4JEA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63615853-7c76-4652-2a7b-08d716d50acb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4901; 
x-ms-traffictypediagnostic: BYAPR04MB4901:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB490134D5D79906C90306F9B0FADE0@BYAPR04MB4901.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:439;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(39860400002)(346002)(376002)(136003)(189003)(199004)(81166006)(478600001)(25786009)(53546011)(66574012)(71200400001)(6506007)(6306002)(71190400001)(7736002)(6486002)(6436002)(14454004)(8676002)(81156014)(102836004)(76176011)(256004)(99286004)(316002)(26005)(8936002)(14444005)(229853002)(6512007)(6246003)(186003)(36756003)(76116006)(64756008)(66066001)(2906002)(66946007)(66476007)(305945005)(486006)(86362001)(54906003)(68736007)(11346002)(966005)(66556008)(476003)(446003)(6116002)(3846002)(53936002)(4326008)(118296001)(2616005)(5660300002)(66446008)(7416002)(142933001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4901;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5PeyMbYMGFIComLkvM2fjgkFjjR3KF28EcS9f42xTFDlCuT54x2mMtCludK9uhTRu6jgPvrSB8JIzQfnxSDzIzQsfpHofxclYU4f/Zk7xlMZ685eMUELPZi66LND8ky70RzjaCNhSmkOkb3g6TDV+NaRnwgYCR60yqo439qWtkMVnFbDtRGQqtkAX9NjatIyMhlGGwt8otldBACwXo3QYY/SyENUDjqXyFhSg4Z+QZEVoD4c3hYfH15S9UJr2Bk/nLtRh/0GZOjmVwU+sj2nwFIlOmSCn/+XKPVAKo/mbwxQcxlt4QvbfqSLBg3RZNIbVLICr54F+dUbnWW7Te+7YPNSEdfEEoltJopOlA6XGjZV3Vex95/FHGZH9vgS2uZITxHLeCmy7hvkwyOWKDq6YevZpN33WkMJJIWq5G0+QvQ=
Content-ID: <A06B902F88D8304FB2DF845FCCEB3719@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63615853-7c76-4652-2a7b-08d716d50acb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 23:07:36.0686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4901
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_160744_403402_0E7AD4E9 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>, Anup Patel <Anup.Patel@wdc.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "info@metux.net" <info@metux.net>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-08-01 at 09:50 -0600, Rob Herring wrote:
> On Wed, Jul 31, 2019 at 6:58 PM Atish Patra <atish.patra@wdc.com>
> wrote:
> > Since the RISC-V specification states that ISA description strings
> > are
> > case-insensitive, there's no functional difference between mixed-
> > case,
> > upper-case, and lower-case ISA strings. Thus, to simplify parsing,
> > specify that the letters present in "riscv,isa" must be all
> > lowercase.
> > 
> > Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/cpus.yaml | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > index c899111aa5e3..4f0acb00185a 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -46,10 +46,12 @@ properties:
> >            - rv64imafdc
> >      description:
> >        Identifies the specific RISC-V instruction set architecture
> > -      supported by the hart.  These are documented in the RISC-V
> > +      supported by the hart. These are documented in the RISC-V
> >        User-Level ISA document, available from
> >        https://riscv.org/specifications/
> > 
> > +      Letters in the riscv,isa string must be all lowercase.
> > +
> 
> The schemas are case sensitive this looks pretty pointless without
> the
> context of the commit msg. Can you prefix with 'While the
> specification is case insensitive, "
> 

Sure. How about this ?

"While the above isa strings in ISA specification are case insensitive,
letters in the riscv,isa string must be all lowercase to simplify
parsing."


> For some background, FDT generally always has been case sensitive too
> (dtc won't merge/override nodes/properties with differing case). It's
> really only some older true OF systems that were case insensitive.
> The
> kernel had a mixture of case sensitive and insensitive comparisons
> somewhat depending on the arch and whether of_prop_cmp/of_node_cmp or
> str*cmp functions were used. There's been a lot of clean-up and now
> most comparisons are case sensitive with only Sparc having some
> deviation.
> 
> Rob

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
