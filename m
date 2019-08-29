Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334D4A2B12
	for <lists+linux-riscv@lfdr.de>; Fri, 30 Aug 2019 01:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDCkWwA6DEzkiwyzdnlzmoU+zjk/uPmydoFiO+pWFEY=; b=J6KPKZo9l+u3pF
	DAHksdeXEOULSh9vm/jNITnW1Zw6ZU4NfDI41gNnxg8ap355XkFCY/wOIlHv1n9qyx6XEWbrB/Ib8
	g4PwVOnuwE3Ncm9iVw/PAUooBK4OonJYciV1IpJ2evzSaE95tTnSHeARb7fy3Nxh5QZ3CHSRg0wkx
	BE0TMooP1a/bspJsz9xeYD5DXBZk4MLRDYSlebkH0sBgFrzqLbXDq8swDIvUnH9kxnECFWF+afTK6
	LjOeoFVgTU02ZM5RPgZ+1TxbXJ/CkzZiFCkOp5tnEJbmNd06rMPDjHQ8DNMgnnjP07dQ1PxkofeAJ
	WyNDjRo2tBTHI606v55Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3U3U-0005q7-RI; Thu, 29 Aug 2019 23:42:16 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3U3Q-0005pM-Os
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 23:42:14 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1i3U39-0003ai-9a; Thu, 29 Aug 2019 17:41:56 -0600
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190828214054.3562-1-logang@deltatee.com>
 <alpine.DEB.2.21.9999.1908291542160.12266@viisi.sifive.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <58b828bd-d691-f460-49aa-7e6f15180343@deltatee.com>
Date: Thu, 29 Aug 2019 17:41:52 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1908291542160.12266@viisi.sifive.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: hch@lst.de, sbates@raithlin.com, greentime.hu@sifive.com,
 olof@lixom.net, michaeljclark@mac.com, zong@andestech.com, rppt@linux.ibm.com,
 andrew@sifive.com, aou@eecs.berkeley.edu, robh@kernel.org, palmer@sifive.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 paul.walmsley@sifive.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6] RISC-V: Implement sparsemem
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_164213_137859_5B87AC18 
X-CRM114-Status: GOOD (  10.39  )
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Zong Li <zong@andestech.com>, Olof Johansson <olof@lixom.net>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>,
 Stephen Bates <sbates@raithlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-08-29 5:38 p.m., Paul Walmsley wrote:
>> +#ifdef CONFIG_SPARSEMEM
>> +#define MAX_PHYSMEM_BITS	CONFIG_PA_BITS
>> +#define SECTION_SIZE_BITS	27
> 
> Do you have a specific rationale behind this selection, or is this simply 
> a reasonable starting point?

It's inline with what other platforms are doing. So in some ways it's a
reasonable starting point but I don't see any reason to change it in the
near term.

>> +#endif /* CONFIG_SPARSEMEM */
>> +
>> +#endif /* __ASM_SPARSEMEM_H */
> 
> The following is what I'm getting ready to queue.

Great, thanks!

Logan


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
