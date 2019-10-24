Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DCDE3956
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 19:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RelRzoeINrdQSvrzyjnlmF7BK/8av3rTXvZ/tDwo7A=; b=eZ/5Pl1GCoYSfw
	nCb65ANir13J7DLi4FVWewlrpKmj4jiKNoB64HqRgNf3g6n0lvWDA8V/egGNDayytXVprY9EhBV0i
	imKpSWe35g1cIF2s6ElJrrxl/sB+EbfHEXQ4klI9+nES+JgCF7Hdwd1YQ2Dx7FAbp108MAikHjOPZ
	kbCBDYgCoi+1xtHI/NE56aoLSfJlrqOg85nWKRIo/USxw+CBdeL4dEIbTvHuktT5aVbhx2zvqATPx
	e0O3YVmuIQl3IO+xGqMdwstNVTUIECz+Zc3hVyaX2HaAMzFVix1h6pka4i3p5bmahA0Oim7ba7bm/
	MMp5089jVEl4fMwmaTYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgaC-0005xP-Th; Thu, 24 Oct 2019 17:07:32 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNga8-0005qT-Ad
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 17:07:29 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1iNgZv-0005cq-D7; Thu, 24 Oct 2019 11:07:16 -0600
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <1571908438-4802-1-git-send-email-yash.shah@sifive.com>
 <c4817ec1-4e50-5646-68f0-caeb0ab6f0bf@deltatee.com>
 <alpine.DEB.2.21.9999.1910240937350.20010@viisi.sifive.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <0684fa31-1dfd-9f6c-762e-5811e6e9d5b9@deltatee.com>
Date: Thu, 24 Oct 2019 11:07:12 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1910240937350.20010@viisi.sifive.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: allison@lohutok.net, will@kernel.org, tglx@linutronix.de,
 gregkh@linuxfoundation.org, greentime.hu@g.sifive.com, sachin.ghadi@sifive.com,
 rppt@linux.ibm.com, Anup.Patel@wdc.com, catalin.marinas@arm.com, alex@ghiti.fr,
 aou@eecs.berkeley.edu, sorear2@gmail.com, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, palmer@g.sifive.com,
 paul.walmsley@g.sifive.com, yash.shah@sifive.com, paul.walmsley@sifive.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] RISC-V: Add PCIe I/O BAR memory mapping
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_100728_706779_3C3C8BAC 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: "sorear2@gmail.com" <sorear2@gmail.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alex@ghiti.fr" <alex@ghiti.fr>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "Palmer Dabbelt \( Sifive\)" <palmer@g.sifive.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@g.sifive.com>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Greentime Hu <greentime.hu@g.sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-10-24 10:51 a.m., Paul Walmsley wrote:
> On Thu, 24 Oct 2019, Logan Gunthorpe wrote:
> 
>> On 2019-10-24 3:14 a.m., Yash Shah wrote:
>>> For I/O BARs to work correctly on RISC-V Linux, we need to establish a
>>> reserved memory region for them, so that drivers that wish to use I/O BARs
>>> can issue reads and writes against a memory region that is mapped to the
>>> host PCIe controller's I/O BAR MMIO mapping.
>>
>> I don't think other arches do this. 
> 
> $ git grep 'define PCI_IOBASE' arch/ 
> arch/arm/include/asm/io.h:#define PCI_IOBASE            ((void __iomem *)PCI_IO_VIRT_BASE)
> arch/arm64/include/asm/io.h:#define PCI_IOBASE          ((void __iomem *)PCI_IO_START)
> arch/m68k/include/asm/io_no.h:#define PCI_IOBASE        ((void __iomem *) PCI_IO_PA)
> arch/microblaze/include/asm/io.h:#define PCI_IOBASE     ((void __iomem *)_IO_BASE)
> arch/unicore32/include/asm/io.h:#define PCI_IOBASE      PKUNITY_PCILIO_BASE
> arch/xtensa/include/asm/io.h:#define PCI_IOBASE         ((void __iomem *)XCHAL_KIO_BYPASS_VADDR)
> $
> 
> This is for the old x86-style, non-memory mapped I/O address space the 
> legacy PCI stuff that one would use in{b,w,l}()/out{b,w,l}() for.
> 
> Yash, you might consider updating your patch description to note that this 
> is for "legacy I/O BARs (i.e., non-MMIO BARs)" or something similar.  That 
> might make things clearer.

Ah, right, yes, that would clear things up.

Logan

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
