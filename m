Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8CC1A6475
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 11:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=09cnm3+i0ndIjlySPBrqwSJvZY+pOQmWAnjw11igqsY=; b=uK6sNN7relFh3v2pxe5EWeWoV
	PK4OyitnbQb2RdUCZkMvWlbvGTZJZVR2bLDhDZAUkvUCNinpsjD8GbRd32vQ95oQYP1nf95dmZN2W
	lTWczXJUHkcEHE/RZKf7I1d92f9fdptZl0mUWvaYKbt3YhC+PlYaSS6yI1Zap9cDF9GeNkbi+uu9a
	atm0Rs2NKpkjuGi7j9L77WYb6BaQxzGQVGR8Vt6AhJvWpa8uO+RB+FmENSSOq8V4wG2lsIBAY629o
	dzwphLew1uH62xsLy5K2IXqkXg/pygKksi8TIuLm1Dj6qDNE/zObHIiE4wC3cOGTVlFW5Mk/tyX2J
	iA9vGaaCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNv3O-0001GB-P4; Mon, 13 Apr 2020 09:06:54 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNv3K-0001FP-JR
 for linux-riscv@lists.infradead.org; Mon, 13 Apr 2020 09:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586768810; x=1618304810;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=XWwx8g/KiMUw/W747vk0I6FNaUvAUxZ4C4jBe2p9eBk=;
 b=P4PM11DEPrcCYFvd8bndtrDq/tYCMpwTPwRmvsy1ox07Ps8OVw0PlofU
 ZRF08XX9JwsucvnF4bvcpt7flforkfWhWLKEDIu43z5amWCjy3uCeVcjE
 eOP585Mvkn9CLmXAY8VbahHSdzCJPqn6/O5wVenTSE6fong3rqTXwE8LP
 Kq5Ef6bnuZ7enhXQjCpAgVikrvTUlEVXpgtJjo6TSFCeLXCeAHA2W4lax
 J5Fc6prRpEbwi9iG3Gdsg8vz+cw32pTVJry0+yVWCWhRkqV3FH9SpIO35
 TLN0zjQ+sZ8QbP+mejselg1O52hYlyqGt2brQrzX8b4zhCnEaFtWbvnVT A==;
IronPort-SDR: 0nHzoP8bG1qSJeRybXg1oPefPkEQt2187F0Rhr2yzLJQ5lwtQ+vwY3/Gekm5LOF2qIPj7NxjVL
 +Ge6EgtOhD8nzowfI4LSyiqWoRa082UZfIEBA0U+BkSa901H5VlrKQpsCPkS6MX0wAz/DTRtaR
 OdWWzhrC8lcTtAZ4uo82NgRvpduGO8H6qaMlGaryp+CMfnJ/liLaubhusaBlnAo7SJg4pBkOcm
 +1vSpTcWpp2xXmnhA3bvv7m0jyJUA+wprJBxtTRe0G7nq98k0QC8M6ndLhuhANFjXQfAzkiC9r
 xzY=
X-IronPort-AV: E=Sophos;i="5.72,378,1580745600"; d="scan'208";a="135207451"
Received: from mail-bn7nam10lp2107.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.107])
 by ob1.hgst.iphmx.com with ESMTP; 13 Apr 2020 17:06:47 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LwArWUodJDOvH8ef0x7VWLnDI6e+e/HfnwLGKNuGRhWLTGlyORp9ZaDiwjNIaIq4OdcLOUMcih9JzSho2QdaEOBj1nqZvWNCVfq/th73U9xpxbeHKuCDRnCRguuteer7wHn1A8pYMGM9rko1H/Tq0NlFVhgD3PzAbTE2cq1jFBvwjrCflQfkARcrwXdKzts7zE7BmCmDVYXt6JZVP7kllTqyXXYsOlA3BBDOI+i5uXzw/w5JJxRvIyAuVzeFXMe9zSqeb+PiHRLkckVu2jl4vZCFjfbkBwwq6H8H9AFwc8wMl2CB4+QrKTe98ENCyvH4cLmK+0Gf/V8NGWYVsvRPrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=09cnm3+i0ndIjlySPBrqwSJvZY+pOQmWAnjw11igqsY=;
 b=MkEGm+CkBs28YXPTZv8cJf/6TvLhhejk8mj4yiYV30IknYolwVncd1lJgy0LkxtHCwsSNEUIRJjuR8cstsyP7LD2uPCM2UYSrGbJlcMqJvA1FE5/HqzEWWsgUWtYXe2GYMLIAn9AwbSy1uW9LUKbFchzOD7G1aM1poNa14ImDOCmMojhdsQIABntvwJdnumhUbkqT1SztR0Mm3/ty90q38sRFcNhY2pODJDwveFHtcql4j9/Ki5xCGuFFp6dRvb2bxNQfA57YEr5MGxeoLlSdbtdkDkPabc9/0cVNZu/necH9fc88+HohNp3J1GOyPF8IX67adxaZSFx2BNy+KvSEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=09cnm3+i0ndIjlySPBrqwSJvZY+pOQmWAnjw11igqsY=;
 b=QW2vCdd/uw4l26bEU1ovVtT+KH6/lqE7RV5lURDykglbqqLO5HYl9rYFNMjESuGO6zoXMSKYERRUP5rP1oixa8rmSzI/1w4AMxL6nE9ZifRfUef+1/UnldPvMYtt9nBrPfdZ5amL1cPIkc78ABNsZaPkaokmY89WbqKEuhOiF4M=
Received: from BY5PR04MB6900.namprd04.prod.outlook.com (2603:10b6:a03:229::20)
 by BY5PR04MB6659.namprd04.prod.outlook.com (2603:10b6:a03:21a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Mon, 13 Apr
 2020 09:06:46 +0000
Received: from BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606]) by BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606%5]) with mapi id 15.20.2900.028; Mon, 13 Apr 2020
 09:06:46 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH 3/3] RISC-V: Skip setting up PMPs on traps
Thread-Topic: [PATCH 3/3] RISC-V: Skip setting up PMPs on traps
Thread-Index: AQHWDcb//TU19ug3ZkGg7+xvGBqxvg==
Date: Mon, 13 Apr 2020 09:06:46 +0000
Message-ID: <BY5PR04MB6900258EA15F45EC6D4344B3E7DD0@BY5PR04MB6900.namprd04.prod.outlook.com>
References: <20200408165802.167546-1-palmer@dabbelt.com>
 <20200408165802.167546-4-palmer@dabbelt.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [60.117.181.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bcb96cfc-ef92-4b98-1db5-08d7df89fe1a
x-ms-traffictypediagnostic: BY5PR04MB6659:
x-microsoft-antispam-prvs: <BY5PR04MB66594194D7D781695FB30857E7DD0@BY5PR04MB6659.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 037291602B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6900.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(53546011)(9686003)(6506007)(186003)(55016002)(71200400001)(4326008)(2906002)(26005)(7696005)(5660300002)(81156014)(66446008)(76116006)(91956017)(64756008)(66476007)(33656002)(66556008)(86362001)(66946007)(110136005)(478600001)(8676002)(52536014)(316002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7TXliXn20mentyh4JZwTr67Vy4ZHRMB0lkaGQ9k/HsEo83YNCOGcAM2AryYqNLh9ZKW2DcLs/hBndAFaAHUFkeory30HqpyHbSEUHR/Gc6l+NsFIpxGC2/RVPQzuM2gkmZiN0pwRbMzPicgUoDUbZ6YjfjOAW2n4CPunnqNCW4KWZ2Cn3v4/n4w1hl5DFt3NAU1jTnVxMBujwDMD8UOyZbeGpZ+Fufwo/fZRz/s+3hGnSU5C5qmqao4A+bw78dCZFhMII4r6CYnLXoCXYgRdT7oi9+dVPG7ba0x2h74X3UuxRpeHswGqrJzW/rk+k9vTjhvnAZ2vIo6StTIsmw/vlYyb7p/6HtNYPIoQm0SOckxC1pMftlMT4pmyX8RGEFeLzlgB9Q+fTEaFPOBnF+xMP7NnA0y92OfonYfwMEE6AmNzSiL5rdg+Be2c7a5/Mj9q
x-ms-exchange-antispam-messagedata: oNa+y/VM2Wt0Hqr/Vkv4QdZlEa7K2CpN6uTquOZ5h/UF5SqAMd75pAo8++TnKjkHuwfbJeM6O8XlikPqoDuANAWXOdPaLyU8VZtWni2ADho/m+FaZ7yjnQ9jSUrlTiKgKHtS8SDdeP+s0e/y97TVfg==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb96cfc-ef92-4b98-1db5-08d7df89fe1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2020 09:06:46.0383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I7Qi4l2jz3iBwURxgdmBlQe13EoRTpGEcId4qla3LGyf1eSeOb0I485Ba7mp/guY7ZNkkOXeltB0k1EZzO84VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6659
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_020650_765287_5711CF2D 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/04/09 1:58, Palmer Dabbelt wrote:=0A=
> From: Palmer Dabbelt <palmerdabbelt@google.com>=0A=
> =0A=
> The RISC-V ISA manual says that PMPs are WARL, but it appears the K210=0A=
> doesn't implement them and instead traps on the unsupported accesses.=0A=
> This patch handles those traps by just skipping the PMP=0A=
> initialization entirely, under the theory that machines that trap on PMP=
=0A=
> accesses must allow memory accesses as otherwise they're pretty useless.=
=0A=
> =0A=
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>=0A=
=0A=
This one works:=0A=
=0A=
Tested-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
Reviewed-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
=0A=
Testing/hacking the other 2 patches of the series now.=0A=
=0A=
=0A=
> ---=0A=
>  arch/riscv/kernel/head.S | 11 ++++++++++-=0A=
>  1 file changed, 10 insertions(+), 1 deletion(-)=0A=
> =0A=
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S=0A=
> index 98a406474e7d..7ed1b22950fd 100644=0A=
> --- a/arch/riscv/kernel/head.S=0A=
> +++ b/arch/riscv/kernel/head.S=0A=
> @@ -161,11 +161,20 @@ ENTRY(_start_kernel)=0A=
>  	/* Reset all registers except ra, a0, a1 */=0A=
>  	call reset_regs=0A=
>  =0A=
> -	/* Setup a PMP to permit access to all of memory. */=0A=
> +	/*=0A=
> +	 * Setup a PMP to permit access to all of memory.  Some machines may=0A=
> +	 * not implement PMPs, so we set up a quick trap handler to just skip=
=0A=
> +	 * touching the PMPs on any trap.=0A=
> +	 */=0A=
> +	la a0, pmp_done=0A=
> +	csrw CSR_TVEC, a0=0A=
> +=0A=
>  	li a0, -1=0A=
>  	csrw CSR_PMPADDR0, a0=0A=
>  	li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)=0A=
>  	csrw CSR_PMPCFG0, a0=0A=
> +.align 2=0A=
> +pmp_done:=0A=
>  =0A=
>  	/*=0A=
>  	 * The hartid in a0 is expected later on, and we have no firmware=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

