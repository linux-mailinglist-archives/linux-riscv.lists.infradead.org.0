Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF45A85C0
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 16:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDqfkE0w+tEUf5IfYb0tyQ9u5vjJ2WMyNTWzBueMP/Q=; b=U+qfclC+wn+92w
	+mgR31PYG08OUhjdGBr4VaqXKlXWydlHOhUCoqSsaCcQCrXxTzjOQXDqjfvPXae2fPZ9pX0Of8bce
	/t5eGTxB4N4mfIbGt7Kj2hcVZoa8p4W+Ru6Z3EvntnMbxHDaZvrKUtKDIfu1dm1SFsDGXbCH9SYpe
	DRZZ66fOvulh7xW3Oob1WUlzrU5M6QlOdt11u+O3ViYXGjUQRq9w6kpeRdjzQKO6X+kYMnQuV6XWn
	PH/P65j32lQ8FJbjNioX15+X6WEsxe6P0FIjPfHMLjtP5JaDYWsZMSiGSFKqeRXOLAXEdCYXqcQCk
	zoTL0opTjL89kGX/Q+2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5WUU-0003tE-Jl; Wed, 04 Sep 2019 14:42:34 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WUE-0003a7-Ux; Wed, 04 Sep 2019 14:42:20 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id AF49BB8E4149F22B28EE;
 Wed,  4 Sep 2019 22:42:15 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 4 Sep 2019 22:42:10 +0800
Subject: Re: [PATCH -next 25/36] spi: s3c24xx: use
 devm_platform_ioremap_resource() to simplify code
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-26-yuehaibing@huawei.com>
 <CAJKOXPdq4as1Oe3U+9znkvP0RA=sxUoiWVBCSbzf_wq_um2t=w@mail.gmail.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <3595bac1-e426-b4f9-4e24-01e104fdfe5d@huawei.com>
Date: Wed, 4 Sep 2019 22:42:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPdq4as1Oe3U+9znkvP0RA=sxUoiWVBCSbzf_wq_um2t=w@mail.gmail.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_074219_344419_A98A716E 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: tmaimon77@gmail.com, palmer@sifive.com, tali.perry1@gmail.com,
 eric@anholt.net, ldewangan@nvidia.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 f.fainelli@gmail.com, benjaminfair@google.com, shc_work@mail.ru,
 khilman@baylibre.com, openbmc@lists.ozlabs.org, michal.simek@xilinx.com,
 jonathanh@nvidia.com, yuenn@google.com, wens@csie.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 Andi Shyti <andi@etezian.org>, rjui@broadcom.com, s.hauer@pengutronix.de,
 mripard@kernel.org, broonie@kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, paul.walmsley@sifive.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, baohua@kernel.org, sbranden@broadcom.com,
 yamada.masahiro@socionext.com, avifishman70@gmail.com, venture@google.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, thierry.reding@gmail.com, wahrenst@gmx.net,
 kernel@pengutronix.de, kgene@kernel.org, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019/9/4 22:28, Krzysztof Kozlowski wrote:
> On Wed, 4 Sep 2019 at 16:00, YueHaibing <yuehaibing@huawei.com> wrote:
>>
>> Use devm_platform_ioremap_resource() to simplify the code a bit.
>> This is detected by coccinelle.
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
> 
> This tag does not look real... First of all where is the report?

It is our internal CI robot, which is unavailable to external temporarily.

> Second, it was reported by coccinelle.
> Reported-by should be use to give real credits.
> 
> Best regards,
> Krzysztof
> 
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>>  drivers/spi/spi-s3c24xx.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/spi/spi-s3c24xx.c b/drivers/spi/spi-s3c24xx.c
>> index aea8fd9..2d6e37f 100644
>> --- a/drivers/spi/spi-s3c24xx.c
>> +++ b/drivers/spi/spi-s3c24xx.c
>> @@ -487,7 +487,6 @@ static int s3c24xx_spi_probe(struct platform_device *pdev)
>>         struct s3c2410_spi_info *pdata;
>>         struct s3c24xx_spi *hw;
>>         struct spi_master *master;
>> -       struct resource *res;
>>         int err = 0;
>>
>>         master = spi_alloc_master(&pdev->dev, sizeof(struct s3c24xx_spi));
>> @@ -536,8 +535,7 @@ static int s3c24xx_spi_probe(struct platform_device *pdev)
>>         dev_dbg(hw->dev, "bitbang at %p\n", &hw->bitbang);
>>
>>         /* find and map our resources */
>> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> -       hw->regs = devm_ioremap_resource(&pdev->dev, res);
>> +       hw->regs = devm_platform_ioremap_resource(pdev, 0);
>>         if (IS_ERR(hw->regs)) {
>>                 err = PTR_ERR(hw->regs);
>>                 goto err_no_pdata;
>> --
>> 2.7.4
>>
>>
> 
> .
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
