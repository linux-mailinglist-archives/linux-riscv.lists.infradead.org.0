Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FC8E2004
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 17:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5f/NAF3U7uwpBBtVaGSPGfb1kCVlLrnhoVOgtLonSU0=; b=hayyYYuYUJxQni
	KUaOAa4uX4xfJzmkoeXL4g+K4+EgqIs+3fnDInMNoATkjhW73ZfufZgLvmupvSTsWXtV6YcDh3YR+
	IzRAhAWlD3sXOOvFAP/0j1rrrKoM6u5Yj9kaAMf3/pI59lAXE/DWc0mpgkWZn44z4j9+9+HLGfkJ5
	8cpMc6jXcntSRBFvXrAKlo1G7zCiGmpeic4nO1RIeb7b1YOw7V9FTe+7Ur3GxmDNajsJHm4SgeEF8
	AB0ir5vJ3pfyyRuOQkEds6c7LrFGl63gmn/XNysD+9fyFA5qNaUpt1IC8AaZyYeM/5csF5ZGmsCRL
	oPOCRsh+ptoSYIrsbpcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJ1a-00080l-MU; Wed, 23 Oct 2019 15:58:14 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJ1X-000801-1a
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 15:58:12 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1iNJ1V-0005hJ-Bj; Wed, 23 Oct 2019 09:58:10 -0600
To: Kefeng Wang <wangkefeng.wang@huawei.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
References: <20191023032302.160388-1-wangkefeng.wang@huawei.com>
 <20191023032302.160388-2-wangkefeng.wang@huawei.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <2f1d943a-6021-3a2c-1d04-2e5939925f86@deltatee.com>
Date: Wed, 23 Oct 2019 09:58:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023032302.160388-2-wangkefeng.wang@huawei.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: aou@eecs.berkeley.edu, palmer@sifive.com,
 linux-riscv@lists.infradead.org, paul.walmsley@sifive.com,
 wangkefeng.wang@huawei.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] riscv: Fix undefined reference to
 vmemmap_populate_basepages
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_085811_417690_C6D747FA 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-10-22 9:23 p.m., Kefeng Wang wrote:
> Using CONFIG_SPARSEMEM_VMEMMAP instead of CONFIG_SPARSEMEM to fix
> following build issue.
> 
>   riscv64-linux-ld: arch/riscv/mm/init.o: in function 'vmemmap_populate':
>   init.c:(.meminit.text+0x8): undefined reference to 'vmemmap_populate_basepages'
> 
> Cc: Logan Gunthorpe <logang@deltatee.com>
> Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>

Yup!

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

> ---
>  arch/riscv/mm/init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 83f7d12042fb..a1ca6200c31f 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -458,7 +458,7 @@ void __init paging_init(void)
>  	zone_sizes_init();
>  }
>  
> -#ifdef CONFIG_SPARSEMEM
> +#ifdef CONFIG_SPARSEMEM_VMEMMAP
>  int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>  			       struct vmem_altmap *altmap)
>  {
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
