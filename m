Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4265F329BE
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 09:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F7qD4vohh+lHtUXQrKsZE+kOkxM17DUs42AXN/dKvcc=; b=YCmqaAIbouni0wdtdWqW7KtVmB
	YpgiwZ+NncUtctNyicDuPRFbF31WXs6GRtKFmu/179iapXS8/BL4PhOYnlf6zdCRMfOfsTUDnD4Ak
	0iNdA9O0RRyUdZmoUX+7hsAJGabfPLDA7FL3u895kP8z38j5RJJKFV+6UKB7ang6AfCSXyZaDV3Ug
	slkrzInbOuyGGCfjVBoGz5/mz7FWPTLsf07mM86kJRxoqMAndiyvhNTCMZWg0X25oqN2dRZaERncV
	2PQ3Ract42OAT5BPUHHUa4/tIfF9rR4uGvtvEDTIVW9GasHLM/5CVn6KObk+eXy2ZuIrXJUWE1tAL
	+48Z2CvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhVo-0005Vi-Fl; Mon, 03 Jun 2019 07:36:08 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhVl-0005VP-Am
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 07:36:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x537a2wt062770;
 Mon, 3 Jun 2019 02:36:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559547362;
 bh=J/ejpkPe6HKf7RmhY8bOeErC2DlZumaIg+UR1lXhtrg=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=REdUpDc6JQ2yzTCS2CoagRIqkJuDG7NJ1KQjv6UXMvbdyicw2uvmLD/KYE+ZYEt9x
 cPuMIy4BhvuQAPCpjU9hMOMCBBtrkST/zZLPRk8LAzYnLci87NirUQnMy2AAeeXQzq
 iy0t1BYGp+EbotwZqiRgLj6h/WjOfPcHOqtSZpa0=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x537a2Nk041255
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 3 Jun 2019 02:36:02 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 3 Jun
 2019 02:36:01 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 3 Jun 2019 02:36:01 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x537ZxEm099881;
 Mon, 3 Jun 2019 02:35:59 -0500
Subject: Re: [PATCH v2] PCI: endpoint: Skip odd BAR when skipping 64bit BAR
To: Alan Mikhak <alan.mikhak@sifive.com>, <linux-pci@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <lorenzo.pieralisi@arm.com>,
 <linux-riscv@lists.infradead.org>, <palmer@sifive.com>,
 <paul.walmsley@sifive.com>
References: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <00db2302-3260-1cca-5a65-2280881cfc7a@ti.com>
Date: Mon, 3 Jun 2019 13:04:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_003605_454115_3BD05466 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 24/05/19 3:25 AM, Alan Mikhak wrote:
> Always skip odd bar when skipping 64bit BARs in pci_epf_test_set_bar()
> and pci_epf_test_alloc_space().
> 
> Otherwise, pci_epf_test_set_bar() will call pci_epc_set_bar() on odd loop
> index when skipping reserved 64bit BAR. Moreover, pci_epf_test_alloc_space()
> will call pci_epf_alloc_space() on bind for odd loop index when BAR is 64bit
> but leaks on subsequent unbind by not calling pci_epf_free_space().
> 
> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>

Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/pci/endpoint/functions/pci-epf-test.c | 25 ++++++++++++-------------
>  1 file changed, 12 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> index 27806987e93b..96156a537922 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> @@ -389,7 +389,7 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
>  
>  static int pci_epf_test_set_bar(struct pci_epf *epf)
>  {
> -	int bar;
> +	int bar, add;
>  	int ret;
>  	struct pci_epf_bar *epf_bar;
>  	struct pci_epc *epc = epf->epc;
> @@ -400,8 +400,14 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
>  
>  	epc_features = epf_test->epc_features;
>  
> -	for (bar = BAR_0; bar <= BAR_5; bar++) {
> +	for (bar = BAR_0; bar <= BAR_5; bar += add) {
>  		epf_bar = &epf->bar[bar];
> +		/*
> +		 * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
> +		 * if the specific implementation required a 64-bit BAR,
> +		 * even if we only requested a 32-bit BAR.
> +		 */
> +		add = (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ? 2 : 1;
>  
>  		if (!!(epc_features->reserved_bar & (1 << bar)))
>  			continue;
> @@ -413,13 +419,6 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
>  			if (bar == test_reg_bar)
>  				return ret;
>  		}
> -		/*
> -		 * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
> -		 * if the specific implementation required a 64-bit BAR,
> -		 * even if we only requested a 32-bit BAR.
> -		 */
> -		if (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64)
> -			bar++;
>  	}
>  
>  	return 0;
> @@ -431,7 +430,7 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
>  	struct device *dev = &epf->dev;
>  	struct pci_epf_bar *epf_bar;
>  	void *base;
> -	int bar;
> +	int bar, add;
>  	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
>  	const struct pci_epc_features *epc_features;
>  
> @@ -445,8 +444,10 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
>  	}
>  	epf_test->reg[test_reg_bar] = base;
>  
> -	for (bar = BAR_0; bar <= BAR_5; bar++) {
> +	for (bar = BAR_0; bar <= BAR_5; bar += add) {
>  		epf_bar = &epf->bar[bar];
> +		add = (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ? 2 : 1;
> +
>  		if (bar == test_reg_bar)
>  			continue;
>  
> @@ -459,8 +460,6 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
>  			dev_err(dev, "Failed to allocate space for BAR%d\n",
>  				bar);
>  		epf_test->reg[bar] = base;
> -		if (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64)
> -			bar++;
>  	}
>  
>  	return 0;
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
