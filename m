Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430B75C4F7
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jul 2019 23:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0HzSmw2vE6u0ATMuEd/nr9ByXdu6fCq2iJMCtnkBW4=; b=cm6QWHwyFuYcU6
	1FMWXlJnBAmTWi0neQkhblt3WH28oA+CP0+15Mk54r/13LpZhsAma3HClLD6mrF9DTbpqZQdgDYky
	NCFbmCKNTH5w5f40CJVZsSd2cRQxAkI9AOGxk70Hv1zUI+5EwJiiVflchYEgzwS272rI+ETVX33aV
	BZ1S6FJbAKQSMxZEyVBYe/8FwgIjVQ0Xay7IW0ruK/q/PkPOexkngFxzDDDxAuUZmDCr1dhGnAtqP
	/0qNJUjheJOrzr8QIrLLrCaw35bfwbuSTvFN4UNosSOhUrlFe0F5TQY7upqvpQQSxl10fw4f/vQbA
	oUnXJ4sCLStCjIdXpGTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi3og-0000hC-0e; Mon, 01 Jul 2019 21:26:26 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi3od-0000gO-3g
 for linux-riscv@lists.infradead.org; Mon, 01 Jul 2019 21:26:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562016383; x=1593552383;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3V/LpFRVnfBTIRTA/E6S6Opbxs7T1rbBrBsb20bpQxg=;
 b=TF7h6bU7MEloYizjoZRZ5NkwZ6YRMHp+6P0jolej/Yxm6MiscB+rWA4a
 AOvmlZgj0Mqg9CmhPbkuNjr2aE15mD4kecSu/zFAELK+3WqRPk1U/Qu3o
 64cVtb99AGd/OOJfM+7ge1PeWnykTdT1AdLhcI1yYko09D6UbJ5ApVTGD
 tTSWGScu2e4vqwOe+ERDhqM6C/dzI8YdJElfATj9zbHeef0f4A4GICVfD
 8WKEO2Hkt+BaPSfScLiunlUMHanbS84sZ2uGS0EEykuwty0mDOEODXZ3t
 lQiEpjZPJMc1DBpU8ilX63qmz/XpErI2Jpr/yDgYURCRToZTFj6cxLSY5 A==;
X-IronPort-AV: E=Sophos;i="5.63,440,1557158400"; d="scan'208";a="113613833"
Received: from mail-by2nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.55])
 by ob1.hgst.iphmx.com with ESMTP; 02 Jul 2019 05:26:19 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3V/LpFRVnfBTIRTA/E6S6Opbxs7T1rbBrBsb20bpQxg=;
 b=ghtlyfY3MWv6VUkokwb/p/GbYrO9IVX+/jweAoRAjxboEDG2ln0PXrCPomrE3K3KkzudoSs/6AuTQIHXFSswdtvE1+FsdhxspDHn1vg1tkzO+Xy5HOsdBxMiQdGijZBt95vU68tF2und04RP+B2airn66rxDOaUcolsOqf23HJw=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4664.namprd04.prod.outlook.com (52.135.240.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 21:26:18 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 21:26:18 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 16/17] riscv: clear the instruction cache and all
 registers when booting
Thread-Topic: [PATCH 16/17] riscv: clear the instruction cache and all
 registers when booting
Thread-Index: AQHVKk/eafb73EoeVUKcVAZHOtIduKa2UpyA
Date: Mon, 1 Jul 2019 21:26:18 +0000
Message-ID: <78919862d11f6d56446f8fffd8a1a8c601ea5c32.camel@wdc.com>
References: <20190624054311.30256-1-hch@lst.de>
 <20190624054311.30256-17-hch@lst.de>
In-Reply-To: <20190624054311.30256-17-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.45.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52bd3de9-56d7-489f-bfcc-08d6fe6ac148
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4664; 
x-ms-traffictypediagnostic: BYAPR04MB4664:
x-microsoft-antispam-prvs: <BYAPR04MB46647A09F1EECF00129DC8C9FAF90@BYAPR04MB4664.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(189003)(199004)(118296001)(25786009)(71190400001)(71200400001)(476003)(486006)(2501003)(99286004)(2616005)(6506007)(76176011)(26005)(256004)(14444005)(6116002)(3846002)(478600001)(446003)(186003)(102836004)(72206003)(36756003)(11346002)(6436002)(76116006)(6486002)(2201001)(2906002)(53936002)(14454004)(229853002)(6512007)(5660300002)(316002)(66066001)(66946007)(54906003)(66476007)(66446008)(66556008)(64756008)(73956011)(68736007)(110136005)(6246003)(8676002)(81166006)(81156014)(86362001)(8936002)(305945005)(7736002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4664;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KslD34yP5hwFESqyOJ0iBtBjfXD0dQncTKQ4fD9kcR4kfgsHcs0HH/ZJMUc/DBZMrb/qUSDtBXj5YhB+HF00PBwPCn3v1rrcIRCUnozxVzKzyUDEGm5Y4pIXzQrpw2fN1+90KJvWVbxJIZfV1eLGItrC4CTC5F97GoQFQjYVMBIxiLQvrBECE3RrbPbTcxQ57KUz0sOoXQwjnB8ZthVQgUl+CqN6I5YyJKZYDgGbibnWPBGlgW0UkybCx+7D5HN7xfl02U7jE30IonlZYGqctOX/2d3CW/My4cVSpsBlxGNnSD7Yu3O+dqiXvxG2XNIg9KE5K0vqsYqvoOGqr533dwVox15t2qLKhk7nnlOztphOJxv8mR+cbuoDY+ky10eT39evfR5j4Yv1+kdmezF7MDIO8yuMeW2Qz9lT0moh8O4=
Content-ID: <3F95E20170DB634F896CA2BAF2589A70@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52bd3de9-56d7-489f-bfcc-08d6fe6ac148
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 21:26:18.0563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4664
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_142623_316973_BDB02080 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-06-24 at 07:43 +0200, Christoph Hellwig wrote:
> When we get booted we want a clear slate without any leaks from
> previous
> supervisors or the firmware.  Flush the instruction cache and then
> clear
> all registers to known good values.  This is really important for the
> upcoming nommu support that runs on M-mode, but can't really harm
> when
> running in S-mode either.

That means it should be done for S-mode as well. Right ?
I see the reset code is enabled only for M-mode only.

>   Vaguely based on the concepts from opensbi.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/kernel/head.S | 85
> ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 85 insertions(+)
> 
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index a4c170e41a34..74feb17737b4 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -11,6 +11,7 @@
>  #include <asm/thread_info.h>
>  #include <asm/page.h>
>  #include <asm/csr.h>
> +#include <asm/hwcap.h>
>  
>  __INIT
>  ENTRY(_start)
> @@ -19,6 +20,12 @@ ENTRY(_start)
>  	csrw CSR_XIP, zero
>  
>  #ifdef CONFIG_M_MODE
> +	/* flush the instruction cache */
> +	fence.i
> +
> +	/* Reset all registers except ra, a0, a1 */
> +	call reset_regs
> +
>  	/*
>  	 * The hartid in a0 is expected later on, and we have no
> firmware
>  	 * to hand it to us.
> @@ -168,6 +175,84 @@ relocate:
>  	j .Lsecondary_park
>  END(_start)
>  
> +#ifdef CONFIG_M_MODE
> +ENTRY(reset_regs)
> +	li	sp, 0
> +	li	gp, 0
> +	li	tp, 0
> +	li	t0, 0
> +	li	t1, 0
> +	li	t2, 0
> +	li	s0, 0
> +	li	s1, 0
> +	li	a2, 0
> +	li	a3, 0
> +	li	a4, 0
> +	li	a5, 0
> +	li	a6, 0
> +	li	a7, 0
> +	li	s2, 0
> +	li	s3, 0
> +	li	s4, 0
> +	li	s5, 0
> +	li	s6, 0
> +	li	s7, 0
> +	li	s8, 0
> +	li	s9, 0
> +	li	s10, 0
> +	li	s11, 0
> +	li	t3, 0
> +	li	t4, 0
> +	li	t5, 0
> +	li	t6, 0
> +	csrw	sscratch, 0
> +
> +#ifdef CONFIG_FPU
> +	csrr	t0, misa
> +	andi	t0, t0, (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D)
> +	bnez	t0, .Lreset_regs_done
> +
> +	li	t1, SR_FS
> +	csrs	sstatus, t1
> +	fmv.s.x	f0, zero
> +	fmv.s.x	f1, zero
> +	fmv.s.x	f2, zero
> +	fmv.s.x	f3, zero
> +	fmv.s.x	f4, zero
> +	fmv.s.x	f5, zero
> +	fmv.s.x	f6, zero
> +	fmv.s.x	f7, zero
> +	fmv.s.x	f8, zero
> +	fmv.s.x	f9, zero
> +	fmv.s.x	f10, zero
> +	fmv.s.x	f11, zero
> +	fmv.s.x	f12, zero
> +	fmv.s.x	f13, zero
> +	fmv.s.x	f14, zero
> +	fmv.s.x	f15, zero
> +	fmv.s.x	f16, zero
> +	fmv.s.x	f17, zero
> +	fmv.s.x	f18, zero
> +	fmv.s.x	f19, zero
> +	fmv.s.x	f20, zero
> +	fmv.s.x	f21, zero
> +	fmv.s.x	f22, zero
> +	fmv.s.x	f23, zero
> +	fmv.s.x	f24, zero
> +	fmv.s.x	f25, zero
> +	fmv.s.x	f26, zero
> +	fmv.s.x	f27, zero
> +	fmv.s.x	f28, zero
> +	fmv.s.x	f29, zero
> +	fmv.s.x	f30, zero
> +	fmv.s.x	f31, zero
> +	csrw	fcsr, 0
> +#endif /* CONFIG_FPU */
> +.Lreset_regs_done:
> +	ret
> +END(reset_regs)
> +#endif /* CONFIG_M_MODE */
> +
>  __PAGE_ALIGNED_BSS
>  	/* Empty zero page */
>  	.balign PAGE_SIZE

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
