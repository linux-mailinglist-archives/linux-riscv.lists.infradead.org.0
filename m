Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3FC8BE09
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 18:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l2/DE/d38c8G8AvAVex4EGXzKLYp/0SEBrrDYS4vYI=; b=LPRbvjmw7c4XjX
	ZrQ5z1nJGGSW5je2EfWd2XRcVIx8CgH3iQxehgledOocIKsmOjSmVWmfAQUym1TVfLPJIXhxafGq7
	0j9X6A04tCaYhXIiU3gcQGfMz5sQe6RZqMLItQiix78e0RkyKoveSYQ921DhLCEADBjw9+xB2dOMw
	iNsPCSGQtrpQvGiIAdSEIZ/MbXGt7cYQUsEfyyW9ke6CwwQoC9JrITvt6INYG0R4NeijbnU0yYAQY
	MenkNU5a14r/jr3DIeOnFJQ0je5pZuqnv7cKG/JWO/te1X0fqHpJs0m4kcB2d0DmdHgeGiHGV/P5b
	iaaOCzP3UwICky0T+hgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZRv-0005Yc-3p; Tue, 13 Aug 2019 16:15:03 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZRr-0005NK-4i
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 16:15:00 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hxZRj-0008W3-Gj; Tue, 13 Aug 2019 10:14:52 -0600
To: Greentime Hu <green.hu@gmail.com>
References: <20190109203911.7887-1-logang@deltatee.com>
 <20190109203911.7887-3-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
 <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
 <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
 <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
 <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
 <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
Date: Tue, 13 Aug 2019 10:14:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: hch@lst.de, michaeljclark@mac.com,
 linux-riscv@lists.infradead.org, greentime.hu@sifive.com, olof@lixom.net,
 paul.walmsley@sifive.com, sbates@raithlin.com, linux-kernel@vger.kernel.org,
 palmer@sifive.com, andrew@sifive.com, aou@eecs.berkeley.edu, robh@kernel.org,
 green.hu@gmail.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_091459_539258_13AA59E7 
X-CRM114-Status: UNSURE (   9.62  )
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, paul.walmsley@sifive.com,
 Olof Johansson <olof@lixom.net>, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org, Michael Clark <michaeljclark@mac.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019-08-13 12:04 a.m., Greentime Hu wrote:
> I think  flat mem doesn't support memory-with-hole scenario.
> In mm/Kconfig, it says
> "
>           For systems that have holes in their physical address
>           spaces and for features like NUMA and memory hotplug,
>           choose "Sparse Memory"
> "
> IMHO, the memory-with-hole scenario should only be tested for sparse
> mem but flat mem.

Fair enough.

> The generic pfn_valid() is just for non-mmu arches. 

The generic pfn_valid() in asm-generic is only for non-mmu arches.

> Every architecture
> with mmu defines their own pfn_valid().

Not true. Arm64, for example just uses the generic implementation in
mmzone.h. My main question is whether we can just do that. If we can't
we should probably structure it like powerpc where they only use the
arch-specific helper for CONFIG_FLATMEM instead of when CONFIG_SPARSEMEM
isn't set.

Logan

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
