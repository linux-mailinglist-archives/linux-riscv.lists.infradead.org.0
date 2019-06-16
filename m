Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40E847485
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Jun 2019 14:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkTZ/BCNM1j2hFA5xXMLw8sNn6RfgORekjYORUKPylc=; b=cF0JoV+2WqGLhO
	j4z0bhiDtvsoBjLUi8ROVjhXKoQDC3OCSjEEeqY/noqwbjBWOoCQRWHA/ZSqJOSZULuC+Hrkuue0v
	0JvijPb696GC2z8lhNv6WmevFgR+6edmQ/IOkgvdkOOwpD4L8prjpfmRwluH6J2Uv0aS2ewhFjGjY
	D3PQ2kokLWQ85nvGwz3Succv4PeTM36lFN4kLBi7UigezRGmJRF8c7w/YJkgzkmPGTknk3XRffJ0x
	KGdFk7jZKJ7LmJfGKlIOCdZuxXsyDAC9QwpyJ/QYszUPPjSWzine4im4ezYXYiBVtEmWGFldqkVzH
	/4qNgxKA7HVaSSFFbucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcUWr-0006Of-N8; Sun, 16 Jun 2019 12:45:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcUWU-0005fh-Bw; Sun, 16 Jun 2019 12:44:39 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5GCiLhA033414;
 Sun, 16 Jun 2019 07:44:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560689061;
 bh=19H8228T7JxbHupQvwDqhQcBwn5pS/mQpYoEWhiFVCA=;
 h=From:Subject:To:CC:References:Date:In-Reply-To;
 b=fBMNN+Jl7jtZzcNJVVeNu23O1SMLIJURY6HkAxnEugTApS0+Qf+8w4dTVl5udZW9I
 WWkTepki3mCK0/KTL9D7KhWO8mofjFaG6vluM3At9EHCZ7FJ1MK85p8JAtYTO45Vc8
 JIsly0gmjIo/3EETy2UfYgeE/p0YT3PapwEPfhDE=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5GCiL4U024120
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 16 Jun 2019 07:44:21 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 16
 Jun 2019 07:44:20 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 16 Jun 2019 07:44:20 -0500
Received: from [10.250.133.146] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5GCiGQW130920;
 Sun, 16 Jun 2019 07:44:17 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v5 1/3] mtd: spi-nor: add support for is25wp256
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>, <marek.vasut@gmail.com>,
 <tudor.ambarus@microchip.com>, <dwmw2@infradead.org>,
 <computersforpeace@gmail.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>, <linux-mtd@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-2-git-send-email-sagar.kadam@sifive.com>
Message-ID: <325855d0-00f9-df8a-ea57-c140d39dd6ef@ti.com>
Date: Sun, 16 Jun 2019 18:14:16 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1560336476-31763-2-git-send-email-sagar.kadam@sifive.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_054438_560510_6B987EF5 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: wesley@sifive.com, palmer@sifive.com, aou@eecs.berkeley.edu,
 paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
[...]

> @@ -4129,7 +4137,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	if (ret)
>  		return ret;
>  
> -	if (nor->addr_width) {
> +	if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
>  		/* already configured from SFDP */

Hmm, why would you want to ignore addr_width that's read from SFDP table?

Regards
Vignesh


>  	} else if (info->addr_width) {
>  		nor->addr_width = info->addr_width;
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index b3d360b..ff13297 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -19,6 +19,7 @@
>  #define SNOR_MFR_ATMEL		CFI_MFR_ATMEL
>  #define SNOR_MFR_GIGADEVICE	0xc8
>  #define SNOR_MFR_INTEL		CFI_MFR_INTEL
> +#define SNOR_MFR_ISSI		0x9d		/* ISSI */
>  #define SNOR_MFR_ST		CFI_MFR_ST	/* ST Micro */
>  #define SNOR_MFR_MICRON		CFI_MFR_MICRON	/* Micron */
>  #define SNOR_MFR_MACRONIX	CFI_MFR_MACRONIX
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
