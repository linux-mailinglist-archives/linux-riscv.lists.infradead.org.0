Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720E896B60
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 23:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Ot2U/yM3LGSjB05CNnWrAXvGTEiX63AjgAKWEa9w6c=; b=MHvHHoZw3vr9Vu
	wNH1/b+n+Pj0vskV4FgSubK7BFwKTfryQSP7xD4tlWbDxOwkC39hDQnLW5ncVCThJMaFxyCcoJEt8
	x0ibmhOWPvMW/33E6FSe1UYuLpiIvMhUOYu3bJqfPuR6im5WeiaSAgx+JheJjbf0pV1vHEMtEZytm
	xhFcPb5LtPIHhEi+WK96mZoILi9Xt65vMgjMCByPEjiXBOYhxuaXfVt0rebj/VVDiShkzSQXksf9j
	xGqBTupwFhUkcIGOhuSOv5BwOsJI0ah/zcfrSBWntM8MNpxLIx4kqUDL5F8n5Q8b28asZEgz36Xkc
	qhEU0XXBLBYMGmtq5bag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Bbt-0004xs-Me; Tue, 20 Aug 2019 21:24:09 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Bbp-0004x6-H2
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 21:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566336246; x=1597872246;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bP4qBRGapV4ymu3uf0w1jeMF96Qmio3sLxjMEhqISSY=;
 b=BNAGbFycY7V2HL5tEilUi/ewRGUxYuwxkr+7CpkQpEsI4mg77fteOyfS
 yyUFfGKFSe6zV8yQyUCrCEklphP1mWi3S5nK+VGASRL9MTq/q4ZoXAH5A
 ouS0vGVceDGbOSssFP9L09PeV9Dpo20zMuNrJaaF7g9gbPtcRf+aGOf67
 nIwgx7TNv+9QSrmK9R/qpbbypv2w+IZ8TRRAW4k9Sb6t8A8zmnfS0rX3m
 XJfUyVxuVuNBNzralrsaGrP5wYOMxSco7fruhuSiO8onTonn3YRTxbw7e
 9KM1F/eKka7MvQ7bJVb+DIXyXk7+FgpJ4f8PjI8BgCXOXQ3paokw1Odaa w==;
IronPort-SDR: NcuzmsV02Jo2MVkV6KxNqmlFwsQOtP6/1u47GWhFIV3S41DMEfB03eZRZ8K5MWIghl3aT3NOV3
 JTnOfw2X/ZVwTJWRZ9LJ/rUOrswsWF0sYig1HMlGRyJnsmrViOo1GZzR+nD/RQ7Z3SedclK8Hv
 6qrafM8qMk8TVSV1zkssDtCaDhXzDJ7m73d6NRYBBbr5raTv46/RkqiWIc2C/RHP8HclgHdTma
 FzHCO92L9eYpiwsIoSIHFEOvve31/t6v4uR0FuEqdgfFDSdWgQh7CfEFzuWGQMmkvizV3k9B3s
 YyA=
X-IronPort-AV: E=Sophos;i="5.64,410,1559491200"; d="scan'208";a="116279683"
Received: from mail-sn1nam02lp2054.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.54])
 by ob1.hgst.iphmx.com with ESMTP; 21 Aug 2019 05:06:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KEM5AGADuGRZennoeZe/MoSg9k2qgYrEzYkWp11y304V6jHZ9C+MlqPvjW8fkKepsP6RSXjWTTDiJFtK/29j00pSW/SOS1qiNoVrCLuabt87sXMPWC5dg2JbZgJ5RXF+lwX60a3YL0ZrIuAwS/UpCBdl+ox5kn9yIFDJ/KSAS6wOer60G1Zm11n4RGF5B9rj1JwdEVDu3BKulzlBc8C+24DxsAB8J7AXchPpTckvJYr1T3OocZQCj3zFWW0ni4TQHmDov78vNUkblrv9KFmbxmq77d3s+oUFIsvdO32fIwBM0Odu5QSMrLAUIBN3TdrYaXn8rwg/1FtilbQHVmtF7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bP4qBRGapV4ymu3uf0w1jeMF96Qmio3sLxjMEhqISSY=;
 b=HJtIOWj0HQdMqp59PnllPZ7zVVcgdZu12HTKg6VmHEGT3CPnzySCje0QDlujuKWCXo1z9zidHrEGf5FQrdHGt0yI6n7N4MlCEiO5uaWNiDNTEoEeWa3MMZVpne+T7OzHGr03zhet9YrXFD+fs2SGFsyvVkVdyAjmpXX69rAu0GhT5Z3hG8cVlpfa4nmGanKC2InYaBHfRPvr0w/gFER4EwT1uDO9YYEXOtpG7P9BAF3ooovS8YUZ5BYiG+VXMnq12iEBGXI5hT/WyElwjFiirMIVSHUxbRIG0N18XKILX5KrBOI+Wm8kr4eXy3jftSXvvR6A+IyW5jsBEFkG7b+9ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bP4qBRGapV4ymu3uf0w1jeMF96Qmio3sLxjMEhqISSY=;
 b=fQ+pwtoOBXdkftdobR6ilbXizkz9vXuA5vIVf5h+T1n2VvYRTvWLzZQxVmbSgyZD1h40w774tY8XkalmMLBzSG5RCr13sdKX5uaiXjFgznhkoHQNApkQJe2PwGCjxwQOMcpkaW5IJmziDwPi/gfUfE1dmSNoR0VDHegU7HW1JZI=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5558.namprd04.prod.outlook.com (20.178.232.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 21:05:59 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 21:05:59 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 10/15] riscv: poison SBI calls for M-mode
Thread-Topic: [PATCH 10/15] riscv: poison SBI calls for M-mode
Thread-Index: AQHVUe6aQdQDddvuSUq1rKYnjWwlLKcEkkMA
Date: Tue, 20 Aug 2019 21:05:59 +0000
Message-ID: <5d45577f9e2a0368a03760ef181266931f21c0d0.camel@wdc.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-11-hch@lst.de>
In-Reply-To: <20190813154747.24256-11-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3dcff183-38c5-42ed-18ba-08d725b23373
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5558; 
x-ms-traffictypediagnostic: BYAPR04MB5558:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB555880F1DDB8A6CCFBE1E995FAAB0@BYAPR04MB5558.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(346002)(39860400002)(136003)(199004)(189003)(66066001)(14454004)(76176011)(2201001)(2501003)(6246003)(36756003)(86362001)(54906003)(66556008)(66946007)(110136005)(66476007)(81166006)(64756008)(66446008)(4744005)(99286004)(81156014)(316002)(53936002)(6116002)(76116006)(3846002)(71200400001)(8676002)(4326008)(71190400001)(229853002)(118296001)(256004)(186003)(14444005)(6506007)(8936002)(486006)(476003)(478600001)(7736002)(5660300002)(6436002)(6486002)(6512007)(25786009)(11346002)(26005)(305945005)(102836004)(446003)(2906002)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5558;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +898yo+WO7ozFTVUTmhA6WSXPkyQNVNS7q9I1I6fjyU8t49xnWARFwuYMRdF0eGNKtTE+5LwS2+7YbBmgvezmUAafbuLd8vYjWGk8kRY/YcEqx9cqAcu19OKSP1NNLLuX+vRI7SvyAjabhF7FmygKBpuMYur3Z5ni8tGp151BcYHd3bUbKD9G7cTh6X8m8zELNJpARBpoti6zFhbJFzj1c29RDnQRtAhPbYukUt9Oqp34rl+XwBei6DMcEuIHFpXRJ0Vxu6wzAQCgLD3XA7/xPgkho5SxdF7eGk2buZWaKyZoEgU3LjauDFHcGVB0ls4YK9vqdTa5QXGAky1XjuM80a7UrRn93AUKB6FFj47jNHN/iElCkCR7YpsilG5YasEEh+RdKOoEuBA7+4gp44b1t8e/UaOeVydEfEHlWkmHAE=
Content-ID: <76FCE82106630048BD11578FACFCEF03@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dcff183-38c5-42ed-18ba-08d725b23373
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 21:05:59.3282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PlHy6Q1BRpVDbESzHN0Y9hE8BbdY4EOECJ0z+vpjRMPmmaIQwPO0cqjxG0i90Az/lNy9sU4TqPUaPGpJynnAnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5558
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_142405_637484_C96AC889 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-08-13 at 17:47 +0200, Christoph Hellwig wrote:
> There is no SBI when we run in M-mode, so fail the compile for any
> code
> trying to use SBI calls.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/include/asm/sbi.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/include/asm/sbi.h
> b/arch/riscv/include/asm/sbi.h
> index 21134b3ef404..1e17f07eadaf 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -8,6 +8,7 @@
>  
>  #include <linux/types.h>
>  
> +#ifndef CONFIG_M_MODE
>  #define SBI_SET_TIMER 0
>  #define SBI_CONSOLE_PUTCHAR 1
>  #define SBI_CONSOLE_GETCHAR 2
> @@ -94,4 +95,5 @@ static inline void sbi_remote_sfence_vma_asid(const
> unsigned long *hart_mask,
>  	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size,
> asid);
>  }
>  
> -#endif
> +#endif /* CONFIG_M_MODE */
> +#endif /* _ASM_RISCV_SBI_H */

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
