Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7C129369
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 10:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=22RA2a/qPmaiY9UjZdSOrZk/iwkmaRfEIYWYRKU+qv0=; b=gyeKTEShiJkbSdybk8/iR+QaaN
	iooOCtKccluIdX7UMFHY1Enf84dfTfslmy8flS8HpPzHL96DecUcUMANgKIjn4LFJxWgBEIFZKdrA
	j0cQOOI0X+EplKINlNnYI0dbqUUz3AFqtaoeeADBNA0z2/5uLqYFST+y0LaFElfnFbqpKd/hEft3c
	u4YxIYG4zP0BWNRBnDBu9p+7wr1XdKqHzdzKN+hrM9DVhT5NTZM4PX3r+wXxkQYlQTINUw+xsOrvC
	dzQvBqOLXXfcdLnyLdVGW2eblxG/0lwLVAlD15cgjaiD/EaVrvH7PPw9qtmkawhABaECvA9Uqjnas
	UuqI0dUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5uF-0000Wu-1h; Fri, 24 May 2019 08:50:27 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5uB-0000WO-Sh
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 08:50:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4O8oKVl026215;
 Fri, 24 May 2019 03:50:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558687820;
 bh=/qvsKjjrzMOuqfE4AI6CHRCXStcPXbN8fsAEk/gLESs=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=nVJO//LY62/0eRWDhHco9r9Bn/VCALRTJ4cKK7P3GOCXtmUaVUYabTcb0j6z27Bti
 DrlyB/6s8pbI4KERybu7FufAsgGmRlkezij6fJX1mh51ntKdt655a26rdsL725llrU
 7xYKGNaA7uOQFYabwoN4RWdUiuwf9jgiLeFh2mMM=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4O8oKWS061465
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 May 2019 03:50:20 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 24
 May 2019 03:50:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 24 May 2019 03:50:20 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4O8oHsQ020943;
 Fri, 24 May 2019 03:50:18 -0500
Subject: Re: [PATCH v2] PCI: endpoint: Skip odd BAR when skipping 64bit BAR
To: Alan Mikhak <alan.mikhak@sifive.com>, <linux-pci@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <lorenzo.pieralisi@arm.com>,
 <linux-riscv@lists.infradead.org>, <palmer@sifive.com>,
 <paul.walmsley@sifive.com>
References: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <5ea275c0-b502-1f3e-c94d-487f3e0292fc@ti.com>
Date: Fri, 24 May 2019 14:19:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_015024_004920_A3777D8D 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi,

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

set_bar shouldn't set PCI_BASE_ADDRESS_MEM_TYPE_64. If a platform supports only
64-bit BAR, that should be specified in epc_features bar_fixed_64bit member.

Thanks
Kishon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
