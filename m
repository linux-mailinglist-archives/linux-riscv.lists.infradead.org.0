Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643593C826
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 12:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lyYR8FkOr6MIw5oBGpu0s1vxZ3Yd9tJl4JErE5HcsU=; b=PKQmfxOQZA8rhv
	I+dHMtjrcasy8lgEuk/dTO9FUrTSPoW/5MzLK3KcMD+Vl+Tjl/XFTr0DAFjyCKUf+2Yk1N9Gq+hQA
	hOp9l3GSWfIdu8vHm7IqjRSmpr6mn5rfKway8ktxiRuS8lgkJqMQuiEjeTsBPvzZba2vF4aCnvwTK
	sGl5ScsZP+EoviHgEfErND/LAYY2L8beSvwMqdv94OoTfjeptxh9mW10a5ReCqLPGTJHP1SCFi1v4
	CdqUiTGXMIqalVTf5xrEOuCuU1Vcr7zKCKIheF7HJMZv1Cba0N13sqkWN5NLjonG2cLEDUdy5QOAq
	srqHNfhG8ADCKoJO9Ajg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadhl-0003yw-1S; Tue, 11 Jun 2019 10:08:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadhP-0003ge-Cy
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 10:08:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E075D346;
 Tue, 11 Jun 2019 03:08:14 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FAB53F557;
 Tue, 11 Jun 2019 03:09:56 -0700 (PDT)
Date: Tue, 11 Jun 2019 11:08:11 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH v2] PCI: endpoint: Allocate enough space for fixed size BAR
Message-ID: <20190611100811.GB29976@redmoon>
References: <1558648079-13893-1-git-send-email-alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558648079-13893-1-git-send-email-alan.mikhak@sifive.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030815_499599_BFE29EEC 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pci@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 kishon@ti.com, paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 02:47:59PM -0700, Alan Mikhak wrote:
> PCI endpoint test function code should honor the .bar_fixed_size parameter
> from underlying endpoint controller drivers or results may be unexpected.
> 
> In pci_epf_test_alloc_space(), check if BAR being used for test register
> space is a fixed size BAR. If so, allocate the required fixed size.
> 
> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> ---
>  drivers/pci/endpoint/functions/pci-epf-test.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Applied to pci/endpoint for v5.3, thanks.

Lorenzo

> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> index 27806987e93b..7d41e6684b87 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> @@ -434,10 +434,16 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
>  	int bar;
>  	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
>  	const struct pci_epc_features *epc_features;
> +	size_t test_reg_size;
>  
>  	epc_features = epf_test->epc_features;
>  
> -	base = pci_epf_alloc_space(epf, sizeof(struct pci_epf_test_reg),
> +	if (epc_features->bar_fixed_size[test_reg_bar])
> +		test_reg_size = bar_size[test_reg_bar];
> +	else
> +		test_reg_size = sizeof(struct pci_epf_test_reg);
> +
> +	base = pci_epf_alloc_space(epf, test_reg_size,
>  				   test_reg_bar, epc_features->align);
>  	if (!base) {
>  		dev_err(dev, "Failed to allocated register space\n");
> -- 
> 2.7.4
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
