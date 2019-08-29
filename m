Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF71A1F99
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 17:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yTVcdtI7cDuqG4lZd9SYvfz4TRuKEJAg9Vpi6Ecdgk=; b=faUqnJhfpkpAew
	r5LoIx/CJdRSnGuk1gbF6dI1Jo9MXLLsZPI8ymAWDT7MH491XmlQmhVXAVWlnQvgqLEsLRZf5KIZT
	T0n8whxkBvO8J1w/mRrTuX3mezT8D958hgHSmBOvARYhcGarzGQQcByB1DQiIJnce8ddMwey6wPHt
	H8NQoAJsX21hIgaPsNdYzEgZvU13smiT+2c7n86Tt8cSMFE+6n55MsBmRHtXb9qcKqDlf9e5DJ88P
	rb9Y9HcylrdgYpJ3vuzoOouIILZdA5K7GBIPb1saRGKAWJWOnS1hLalHbI8etROQ0ddC0gsW4d1Jp
	JhOUdZXAx9q0ixHN+gnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MdW-0000vf-4H; Thu, 29 Aug 2019 15:46:58 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MdO-0000ts-I5
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 15:46:52 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1i3MdF-0003si-By; Thu, 29 Aug 2019 09:46:46 -0600
To: Mike Rapoport <rppt@linux.ibm.com>
References: <20190828214054.3562-1-logang@deltatee.com>
 <20190829062123.GA16471@rapoport-lnx>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <80a6c33f-6914-ee5f-7456-e1bf3d8801e0@deltatee.com>
Date: Thu, 29 Aug 2019 09:46:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829062123.GA16471@rapoport-lnx>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: hch@lst.de, sbates@raithlin.com,
 linux-riscv@lists.infradead.org, greentime.hu@sifive.com, olof@lixom.net,
 zong@andestech.com, michaeljclark@mac.com, linux-kernel@vger.kernel.org,
 palmer@sifive.com, andrew@sifive.com, aou@eecs.berkeley.edu, robh@kernel.org,
 rppt@linux.ibm.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6] RISC-V: Implement sparsemem
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084650_931078_2FB0811A 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, Michael Clark <michaeljclark@mac.com>,
 Zong Li <zong@andestech.com>, Olof Johansson <olof@lixom.net>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-08-29 12:21 a.m., Mike Rapoport wrote:
> On Wed, Aug 28, 2019 at 03:40:54PM -0600, Logan Gunthorpe wrote:
>> Implement sparsemem support for Risc-v which helps pave the
>> way for memory hotplug and eventually P2P support.
>>
>> Introduce Kconfig options for virtual and physical address bits which
>> are used to calculate the size of the vmemmap and set the
>> MAX_PHYSMEM_BITS.
>>
>> The vmemmap is located directly before the VMALLOC region and sized
>> such that we can allocate enough pages to populate all the virtual
>> address space in the system (similar to the way it's done in arm64).
>>
>> During initialization, call memblocks_present() and sparse_init(),
>> and provide a stub for vmemmap_populate() (all of which is similar to
>> arm64).
>>
>> [greentime.hu@sifive.com:
>>   fixed pfn_valid, FIXADDR_TOP and fixed a bug rebasing onto v5.3]
>> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>> Cc: Albert Ou <aou@eecs.berkeley.edu>
>> Cc: Andrew Waterman <andrew@sifive.com>
>> Cc: Olof Johansson <olof@lixom.net>
>> Cc: Michael Clark <michaeljclark@mac.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Zong Li <zong@andestech.com>
> 
> Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>

Thanks!

Logan

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
