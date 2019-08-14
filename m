Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5DC8DC23
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 19:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKOgXMeWZhLNIqa2oAxXFe+ekY4Ii/7SONLQ9HJ7/sM=; b=kHielwE2Qd/poJ
	IzIXYZ1TyylRGJmCzdUAiYn7EpTqdpzxiwE5xTd2dAvysTaA9OQXW10NYvIME+N79FO+d+drDyAMc
	imGA4SEtC1lqlFQ9QA2wH8Jj9boYab1THKuefmUt2CBBKC/07DdsMSD+dlfxANpxZnfoGjJHCYv8q
	60K7Ywy/JAx1dJ2nQV6whouKtyFoRRxYzrH03CH5p2Iudhqhzfx5z5kgd/9n/RIV9H6Pxs1ZVtuzV
	D0i0zTk3W95w6D7OiWz2bP170cfAyqqdCJ10uLsRP/I2+f8yxfAvl+XAnGmctHzgGZPspTHQzBDuq
	Ll27ZqpDISEBQ2zHsNMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxxM0-0002rs-6U; Wed, 14 Aug 2019 17:46:32 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxxLw-0002rT-HO
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 17:46:29 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hxxLt-00009q-1D; Wed, 14 Aug 2019 11:46:25 -0600
To: Paul Walmsley <paul.walmsley@sifive.com>, Greentime Hu <green.hu@gmail.com>
References: <20190109203911.7887-1-logang@deltatee.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
 <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
 <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
 <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
 <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
 <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
 <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
 <alpine.DEB.2.21.9999.1908130921170.30024@viisi.sifive.com>
 <e1f78a33-18bb-bd6e-eede-e5e86758a4d0@deltatee.com>
 <CAEbi=3f+JDywuHYspfYKuC8z2wm8inRenBz+3DYbKK3ixFjU_g@mail.gmail.com>
 <0d81412d-73fc-fa56-6f84-dedda72b9cc6@deltatee.com>
 <alpine.DEB.2.21.9999.1908141035020.18249@viisi.sifive.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <26594413-227b-2cc8-0f61-232a6a3907d0@deltatee.com>
Date: Wed, 14 Aug 2019 11:46:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1908141035020.18249@viisi.sifive.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: hch@lst.de, michaeljclark@mac.com,
 linux-riscv@lists.infradead.org, greentime.hu@sifive.com, olof@lixom.net,
 linux-mm@vger.kernel.org, sbates@raithlin.com, linux-kernel@vger.kernel.org,
 palmer@sifive.com, andrew@sifive.com, aou@eecs.berkeley.edu, robh@kernel.org,
 green.hu@gmail.com, paul.walmsley@sifive.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_104628_621949_6E16F96F 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, Olof Johansson <olof@lixom.net>,
 linux-mm@vger.kernel.org, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org, Michael Clark <michaeljclark@mac.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-08-14 11:40 a.m., Paul Walmsley wrote:
> On Wed, 14 Aug 2019, Logan Gunthorpe wrote:
> 
>> On 2019-08-14 7:35 a.m., Greentime Hu wrote:
>>
>>> Maybe this commit explains why it used HAVE_ARCH_PFN_VALID instead of SPARSEMEM.
>>> https://github.com/torvalds/linux/commit/7b7bf499f79de3f6c85a340c8453a78789523f85
>>>
>>> BTW, I found another issue here.
>>> #define FIXADDR_TOP            (VMALLOC_START)
>>> #define FIXADDR_START           (FIXADDR_TOP - FIXADDR_SIZE)
>>> #define VMEMMAP_END    (VMALLOC_START - 1)
>>> #define VMEMMAP_START  (VMALLOC_START - VMEMMAP_SIZE)
>>> These 2 regions are overlapped.
>>>
>>> How about this fix? Not sure if it is good for everyone.
>>
>> Yes, this looks good to me. I can fold these changes into my patch and
>> send a v5 to the list.
> 
> The change to FIXADDR_TOP should be separated out into its own patch - it 
> probably needs to go up as a fix.

I don't think so... VMEMMAP_START doesn't exist until the sparsemem
patch so it can't be changed until after the sparsemem patch and no
sense adding a bug in the sparsemem patch...

Logan


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
