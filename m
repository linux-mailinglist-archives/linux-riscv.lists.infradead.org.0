Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BB13C834
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 12:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCcO0VpFX+VPdbVgUW2XIOogM353j/3x2K9PrY6NxME=; b=H9F34yXFAuIMGn
	rPRX411+o9QtAajF4duhILWE1DdpTsmwEdkNsw7L3/Tmhers04umwTZzyQHk+IYk+dirCBgWdraBG
	Um1CiFEgJPFXyY6XOfhE+VuVo5Q1PleBnj+gaUZzBg4/ADs6M+GxmQ7ThgLPw9gVvJVgC6/gYaD1t
	I+TrTfdnEknzIeolfBUP/4CrfRoWk25F6qhOHtSby/IX2dhQajBLiOtu6xLCTJe468YF/Cxjk5wXn
	vVpyzmMBihrwPOga3UscOKE+ajbUKhVvABNWI3zZdeVN8INTAzVgxsSz+/31G6xYnTvDznooo/3Ex
	jn038xyH4UCYeIQV4bFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadiW-0004h0-PQ; Tue, 11 Jun 2019 10:09:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadiR-0004do-3u
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 10:09:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C19D9337;
 Tue, 11 Jun 2019 03:09:18 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E0923F557;
 Tue, 11 Jun 2019 03:11:00 -0700 (PDT)
Date: Tue, 11 Jun 2019 11:09:15 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH v2] PCI: endpoint: Clear BAR before freeing its space
Message-ID: <20190611100915.GD29976@redmoon>
References: <1558648647-14324-1-git-send-email-alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558648647-14324-1-git-send-email-alan.mikhak@sifive.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030919_329003_883F2C1C 
X-CRM114-Status: GOOD (  12.77  )
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

On Thu, May 23, 2019 at 02:57:27PM -0700, Alan Mikhak wrote:
> Associated pci_epf_bar structure is needed in pci_epc_clear_bar() but
> would be cleared in pci_epf_free_space(), if called first, and BAR
> would not get cleared.
> 
> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> ---
>  drivers/pci/endpoint/functions/pci-epf-test.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to pci/endpoint for v5.3, thanks.

Lorenzo

> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> index 27806987e93b..f81a219dde5b 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> @@ -381,8 +381,8 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
>  		epf_bar = &epf->bar[bar];
>  
>  		if (epf_test->reg[bar]) {
> -			pci_epf_free_space(epf, epf_test->reg[bar], bar);
>  			pci_epc_clear_bar(epc, epf->func_no, epf_bar);
> +			pci_epf_free_space(epf, epf_test->reg[bar], bar);
>  		}
>  	}
>  }
> -- 
> 2.7.4
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
