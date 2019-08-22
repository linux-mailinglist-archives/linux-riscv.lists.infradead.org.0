Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA1A99C88
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 19:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siU0NkeSz8D+XBHpePcy8eXX5tL1VDaeyX/Rjr1PnHQ=; b=BB+JP1/wguYGAg
	4BgLA73mQQufK0Z0Yi1ZWECWi+PpcZGluh26qng/ivIurF0Kb1jRXYlVn2LXj8ncfjGEdtmJhBd9V
	lS8Phyz4f/ROlN8kzde75zb2hBdrBnE3IKetYlQytqI+xb60Re5teI8PZnkZHGXoLGfoy3cBZLKUW
	Ka2kAmgVowGQ9wtvAUz5wzxOir6Qr7583KEeXIciV+z/kVwXmdbVKjkWA7mlSwtWodr5SrIZfxsoI
	SMm2QnQFu475hsZIiv5GEUS5ZWQsbRItkdL4q8L+wWnVFgvqOrrZu/fFAzdBZLy9fFVENVgYYmaNu
	L3qEY2pjsK0+S8UZM+ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qzN-0003et-My; Thu, 22 Aug 2019 17:35:09 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qzJ-0002QI-IF
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 17:35:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566495306; x=1598031306;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zlyi6GNKTTQ9dAmaoZtrvScQSv3lWgMhXLqH+Y5Fk7o=;
 b=Zxnoz0QJOyulxgEo8f9H+JNYdE/G1LskA+GRj30qEUPxD0/TOStrshYz
 TzePWaeHpOvTOfVxzI32zRDtB0XrcGjuLKMlRWePViMfmCRPxWynDFnTn
 vuzY1WZ1kfaf5hjiqHKN+a+ygPfiru8OJaeg9wlvaWgyed5A/8gpv1pK6
 zeN+OKNvYjJeJ96CmoWzYNE5u6RV6jcyi21sI5W3sAIroZLoSEzsU3VEx
 9a7+sRsUY/LlrSkyHGx756e+hxcWQ/bAEjjvl0VJgeUwsk0L0re2X9bwV
 D1RWqj7IOdGSqvUrFnNlQooXX2I2PEB6n50RAuqJjhyl8UNBUVBr4+Cny A==;
IronPort-SDR: YUtM6Aj+MXgfIyMseVVUJ/psCk2l9yrIXAnfkuOD0p5XrU/+T9D68F47F7BrbTHpGd5IPSv9E5
 hhH4qH9A/v4Oq2lZpOqmxyyyRni8Eb4pABP0B+XiGtr5xJkWcy9C2T1tjPNUor3mNhR/TKSk8k
 2zCfIag7c9VUwfZukjRMIrE6yErpS3xqQ+Ub9msjPQDXfX0o278JwxDnAF8cSo5Xbn5EbTzmmT
 F1ZvzJ5yxF2/QwIzqiPYd3U3jnDwEj7NsccgipLRgYvXqNDh9yh/uno0ppKZ0oS7FBwIXwGFep
 Q2s=
X-IronPort-AV: E=Sophos;i="5.64,417,1559491200"; d="scan'208";a="121036205"
Received: from mail-bn3nam01lp2051.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.51])
 by ob1.hgst.iphmx.com with ESMTP; 23 Aug 2019 01:34:48 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G5Z3qMDj49WHa2tG9sNjzlT0K5euhXvEJRf7DHYloIwRMRhFHOVcO+qebzBcQvhpGERSgMGs380m+b9WmdaK4yZWDRIF5Hb4FrdB0K4UxlEgC+nxzMew6E0MPabHnf4xMui6cwMtYhPZWjMQcIKJIGbS+IWJUlH5eMAD8K4BlAZ5EJMmKU6gDNbAgK0R07Swunj/EvR4077/6Vicoal+qdadJIJeAV6DYTvHLNHM7hB7icYj53+9IX04R9caAhPOqYZkSCfcG0SoidIh+DcQm65ZzfirXmDc+WSeOr0WDgwns+ta65E3wu4bw+onrSBVH6eX/HMaOW4wmAVUCnCqiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zlyi6GNKTTQ9dAmaoZtrvScQSv3lWgMhXLqH+Y5Fk7o=;
 b=AA+x0TTHSvBi09zJqh2QU3Ji3S4SH66IdD7xB86u+Uw2Skv7Wo0Qy2eZ6TL3VM8gaEqCPqLYuAmkmuP/QGsyUUyg08odq5KfazntlhLfXA8J0G6lzPrYbcKSqFjPf4weVREbIYpoTB1mw7/Vbi3nZkFmqVaiEkrfGCFa7CxIBqUZRQ4n7Lo0BC3YJAHXb6ZiLetiSQd2diQrFSHPFdz3BqFN5FTaMKkc0X67CQZu3JfcVsXM39wuUgXFrmEIdL8r+rYeWfiwJdP4n9HfiUJsr4s9rEwdpX0DqW+XmgqukTnBj4XWk2k9h9M94OqB1mgVoDrvELOSnVxVrIjxNwEJtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zlyi6GNKTTQ9dAmaoZtrvScQSv3lWgMhXLqH+Y5Fk7o=;
 b=MhVl+nMzAofXyhDrF79p6D5zoOHjYMrZiEnUZ8DdOv1l+w2ktTl4R0tEsgpLeX5LbjaOtlGUSxgl3x/CIOxLgMbFtu9iZAQMg7W42f4s6DmNjYnYf3wWQC4lsZtBO+fxEOxlLfenKUG4vU53Rc6bzH0QvZ8+E68HwmUZo/iGxy8=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4789.namprd04.prod.outlook.com (52.135.240.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 17:34:47 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 17:34:47 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>
Subject: Re: [PATCH 7/8] riscv: improve the local flushing logic in
 sys_riscv_flush_icache
Thread-Topic: [PATCH 7/8] riscv: improve the local flushing logic in
 sys_riscv_flush_icache
Thread-Index: AQHVWLa3LGWms5Pc4E+LLqn10p92iacGu++AgACyawA=
Date: Thu, 22 Aug 2019 17:34:46 +0000
Message-ID: <7facec591af41619c640c00f54843aaba346075d.camel@wdc.com>
References: <20190822065612.28634-1-hch@lst.de>
 <20190822065612.28634-8-hch@lst.de>
In-Reply-To: <20190822065612.28634-8-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 822b1da0-20ff-4d57-64ba-08d727270710
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4789; 
x-ms-traffictypediagnostic: BYAPR04MB4789:
x-microsoft-antispam-prvs: <BYAPR04MB4789C8A71D6F8D781E4F1A3EFAA50@BYAPR04MB4789.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(366004)(189003)(199004)(8676002)(2501003)(53936002)(25786009)(6246003)(2616005)(46003)(2906002)(6116002)(7736002)(81166006)(81156014)(8936002)(476003)(64756008)(76116006)(66476007)(66446008)(66946007)(486006)(5660300002)(66556008)(4326008)(14454004)(478600001)(316002)(118296001)(6512007)(2201001)(76176011)(36756003)(446003)(110136005)(229853002)(11346002)(256004)(14444005)(102836004)(305945005)(186003)(71200400001)(6506007)(6436002)(6486002)(99286004)(86362001)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4789;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Yu3nTPv8hsvI+Ggi8oNgmMyja7fAk1BitzdtAiy4Tvq4/9MDczAbKpp4I1Zstlf3fGTsgL7dgpsk4wCjbIZEWccWSWqcErBR932LHHbHqjRpBkAXFTWfpJS0prFU1OQOL07rOx6LaQqV5wEKs4I1VOoigY/nvRkMXu+7RSD3gKh6+YzJ5r9GyHRlkt01MrCE5podVa4H0kIia1vm41DkwRqUdBGP/qxd9jtDnIiT6rCrxYi68d/rJn1q9mF1W0g1kurdSR7K2QydAHpX8zoGlwKrApXBg5CBey8Y1Ovj84y1bGUSvPN+0aWMJLDdQrQAPpGgr04bfj+jogRaCP9G03n1hcuTPWBaQQ6n9olkcYqWD8WvUiTXIj+RC9/nqU+prTrgO1JTJtVERCArHzeomyyCcwnoCMOJbz4JOjUmjvM=
x-ms-exchange-transport-forked: True
Content-ID: <CF0CC9BD8227664A977E0BF03CF79E6A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 822b1da0-20ff-4d57-64ba-08d727270710
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 17:34:46.9938 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +hQwk/XlAhKJDOIJALyiSg7Qi/LZigWNBjfE3cxP2R+UVThG0gYQKsun9Xu0YHHAOz2B0qyFkxIdQX0qG3PWyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_103505_786611_7960F3C1 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 15:56 +0900, Christoph Hellwig wrote:
> If we have to offload any remote sfence the SBI we might as well let
> it
> handle the local one as well.  This significantly simplifies the
> cpumask
> operations and streamlines the code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/mm/cacheflush.c | 33 ++++++++++++++-------------------
>  1 file changed, 14 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> index 9180b2e93058..8f1134715fec 100644
> --- a/arch/riscv/mm/cacheflush.c
> +++ b/arch/riscv/mm/cacheflush.c
> @@ -20,7 +20,6 @@ void flush_icache_all(void)
>  static void flush_icache_mm(bool local)
>  {
>  	unsigned int cpu = get_cpu();

get_cpu should be removed from here as it is called again in below.
> -	cpumask_t others, hmask;
>  
>  	/*
>  	 * Mark the I$ for all harts not concurrently executing as
> needing a
> @@ -29,27 +28,23 @@ static void flush_icache_mm(bool local)
>  	cpumask_andnot(&current->mm->context.icache_stale_mask,
>  		       cpu_possible_mask, mm_cpumask(current->mm));
>  
> -	/* Flush this hart's I$ now, and mark it as flushed. */
> -	local_flush_icache_all();
> -
>  	/*
> -	 * Flush the I$ of other harts concurrently executing.
> +	 * It's assumed that at least one strongly ordered operation is
> +	 * performed on this hart between setting a hart's cpumask bit
> and
> +	 * scheduling this MM context on that hart.  Sending an SBI
> remote
> +	 * message will do this, but in the case where no messages are
> sent we
> +	 * still need to order this hart's writes with
> flush_icache_deferred().
>  	 */
> -	cpumask_andnot(&others, mm_cpumask(current->mm),
> cpumask_of(cpu));
> -	local |= cpumask_empty(&others);
> -	if (!local) {
> -		riscv_cpuid_to_hartid_mask(&others, &hmask);
> -		sbi_remote_fence_i(hmask.bits);
> -	} else {
> -		/*
> -		 * It's assumed that at least one strongly ordered
> operation is
> -		 * performed on this hart between setting a hart's
> cpumask bit
> -		 * and scheduling this MM context on that
> hart.  Sending an SBI
> -		 * remote message will do this, but in the case where
> no
> -		 * messages are sent we still need to order this hart's
> writes
> -		 * with flush_icache_deferred().
> -		 */
> +	cpu = get_cpu();
> +	if (local ||
> +	    cpumask_any_but(mm_cpumask(current->mm), cpu) >=
> nr_cpu_ids) {
> +		local_flush_icache_all();
>  		smp_mb();
> +	} else {
> +		cpumask_t hmask;
> +
> +		riscv_cpuid_to_hartid_mask(mm_cpumask(current->mm),
> &hmask);
> +		sbi_remote_fence_i(cpumask_bits(&hmask));
>  	}
>  
>  	put_cpu();

Otherwise, looks good to me.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
