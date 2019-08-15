Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4046C8F05D
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 18:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYWRLpjpTU43oFFP5Xzd1G2FMLDFDLEsDpzRaLHi1Rc=; b=axns8LBauBF9rf
	c+dhjRwqcZOv3XjTPUTXxGqX2AvgE2I1T5/JVsditfYJpGWvQjMZ0UmGOP6BCQ+muONQSphznlkUg
	NNFNlUx50qM1pILR0hc7jZsotaghNtjmIFm/n0ZiEu69NZQExdC0eHtHdHX2KiveUyDFjKLzkVIZv
	uC+D2ZL6i55KyvYKe8/sSkcNW35na9vf6Uu9tQkYwD8EVeboGukgq3bHCwxECuTbTpOiEYiLilTEc
	tmWV0KC5XOoDR+ipAfXah1AgzdY5enD4pMGQiaDqwth8f3mEo7nTVsFvBUR5kqZpL3gIfVCDywmD5
	41s5uGCoBPo6KpVBA9bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyIUW-0000fZ-1P; Thu, 15 Aug 2019 16:20:44 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyIUO-0000fD-Dv
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 16:20:39 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hyIUJ-0001Sz-T8; Thu, 15 Aug 2019 10:20:32 -0600
To: Greentime Hu <greentime.hu@sifive.com>
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
 <8b7b6285-dd85-5895-8653-be1f6f08cca8@deltatee.com>
 <CAHCEeh+us9N5_AMAJp41Ob9R9PD=JfWLcUrU+gU54xf8NKddJw@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <315f8a06-72f8-9ee8-4a3c-aa9e66b472fd@deltatee.com>
Date: Thu, 15 Aug 2019 10:20:28 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHCEeh+us9N5_AMAJp41Ob9R9PD=JfWLcUrU+gU54xf8NKddJw@mail.gmail.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: linux-mm@vger.kernel.org, hch@lst.de, michaeljclark@mac.com,
 linux-riscv@lists.infradead.org, olof@lixom.net, sbates@raithlin.com,
 linux-kernel@vger.kernel.org, palmer@sifive.com, andrew@sifive.com,
 aou@eecs.berkeley.edu, robh@kernel.org, paul.walmsley@sifive.com,
 green.hu@gmail.com, greentime.hu@sifive.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_092036_850945_08760740 
X-CRM114-Status: GOOD (  18.04  )
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, linux-mm@vger.kernel.org,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Olof Johansson <olof@lixom.net>, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-08-15 3:31 a.m., Greentime Hu wrote:
> Hi Logan,
> 
> On Thu, Aug 15, 2019 at 6:21 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>>
>> Hey,
>>
>> On 2019-08-14 7:35 a.m., Greentime Hu wrote:
>>> How about this fix? Not sure if it is good for everyone.
>>
>> I applied your fix to the patch and it seems ok. But it doesn't seem to
>> work on a recent version of the kernel. Have you got it working on v5.3?
>> It seems the following patch breaks things:
>>
>> 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
>>
>> I don't really have time right now to debug this any further.
>>
> 
> I just tried v5.3-rc4 and it failed. I try to debug this case.
> I found it failed might be because of an unmapped virtual address is used
> in memblocks_present() -> memblock_alloc ().
> 
> In this commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two
> stages"), it finishes all the VA/PA mapping after setup_vm_final() is
> called.
> So we have to call memblocks_present() and sparse_init() right after
> setup_vm_final().
> 
> Here is my patch and I tested with memory-with-hole.
> It can boot normally in Unleashed board after applying this patch.

Great, thanks! I'll roll this into my patch and send v5 out when I have
a moment. Can I add your Signed-off-by for the bits you've contributed
to give you credit for your work?

Logan

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
