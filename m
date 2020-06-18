Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3ED1FEB08
	for <lists+linux-riscv@lfdr.de>; Thu, 18 Jun 2020 07:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XGGsdR0mYBGZP25VLAkbyhuFPOG2nkYX8/rU9zYBdlQ=; b=Spt/eWtJ4Gkir8UFqFUso0AIzs
	J5fJCqwePGz5fjhn5rjcM48F+XC19A/jWx7vyfkEyaDxRerbdwzJFWQj1muaXzD4YDdPPTwOsIlqJ
	kYJ0E4kSVAO+8boT9n/6Rn0uw2S+b05XANnQObeD0ZAs98MCmA0BYQZY1sE6ua5xDd7z1sxIALIBS
	OuZnQpb4wBbbXLa4DiWNMmNQD86IHzVpMl+nxQNEMt+pIs64ikEeElPwXNtG0ldTSOR80t1wIkRkl
	EJ85cXi8rQZSOe4utctmUYM09pHDlKOgpoGJtrgFzw4l2z0xMXuBjmLZvD+HGtxAixEM7BVgHR/6L
	56ySy7LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnEq-0000tB-6x; Thu, 18 Jun 2020 05:37:24 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnEn-0000sQ-Gp
 for linux-riscv@lists.infradead.org; Thu, 18 Jun 2020 05:37:22 +0000
X-Originating-IP: 90.112.45.105
Received: from [192.168.1.14] (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id F4009240002;
 Thu, 18 Jun 2020 05:37:14 +0000 (UTC)
Subject: Re: [PATCH v2 0/8] Introduce sv48 support
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200603081104.14004-1-alex@ghiti.fr>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <0fbb7c9b-d221-5bf8-ddc0-3938066a09d0@ghiti.fr>
Date: Thu, 18 Jun 2020 01:37:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200603081104.14004-1-alex@ghiti.fr>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_223721_692732_4F7C0444 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Palmer,

Le 6/3/20 à 4:10 AM, Alexandre Ghiti a écrit :
> This patchset implements sv48 support at runtime. The kernel will try to
> boot with 4-level page table and will fallback to 3-level if the HW does not
> support it.
>                                                                                   
> The biggest advantage is that we only have one kernel for 64bit, which
> is way easier to maintain.
>                                                                                   
> Folding the 4th level into a 3-level page table has almost no cost at
> runtime. But as mentioned Palmer, the relocatable code generated is less
> performant.
>                                                                                   
> At the moment, there is no way to build a 3-level page table non-relocatable
> 64bit kernel. We agreed that distributions will use this runtime configuration
> anyway, but Palmer proposed to introduce a new Kconfig, which I will do later
> as sv48 support was asked for 5.8.
>                                                                                   
> Finally, the user can now ask for sv39 explicitly by using the device-tree
> which will reduce memory footprint and reduce the number of memory accesses
> in case of TLB miss.
>
> Changes in v2:
>    * Move variable declarations to pgtable.h in patch 5/7 as suggested by Anup
>    * Restore mmu-type properties in patch 6 as suggested by Anup
>    * Fix unused variable in patch 5 that was used in patch 6
>    * Fix SPARSEMEM build (patch 2 was modified so I dropped the Reviewed-by)
>    * Applied various Reviewed-by
>
> Alexandre Ghiti (8):
>    riscv: Get rid of compile time logic with MAX_EARLY_MAPPING_SIZE
>    riscv: Allow to dynamically define VA_BITS
>    riscv: Simplify MAXPHYSMEM config
>    riscv: Prepare ptdump for vm layout dynamic addresses
>    riscv: Implement sv48 support
>    riscv: Allow user to downgrade to sv39 when hw supports sv48
>    riscv: Use pgtable_l4_enabled to output mmu type in cpuinfo
>    riscv: Explicit comment about user virtual address space size
>
>   arch/riscv/Kconfig                  |  34 ++---
>   arch/riscv/include/asm/csr.h        |   3 +-
>   arch/riscv/include/asm/fixmap.h     |   1 +
>   arch/riscv/include/asm/page.h       |  15 +++
>   arch/riscv/include/asm/pgalloc.h    |  36 ++++++
>   arch/riscv/include/asm/pgtable-64.h |  97 +++++++++++++-
>   arch/riscv/include/asm/pgtable.h    |  31 ++++-
>   arch/riscv/include/asm/sparsemem.h  |   6 +-
>   arch/riscv/kernel/cpu.c             |  23 ++--
>   arch/riscv/kernel/head.S            |   3 +-
>   arch/riscv/mm/context.c             |   2 +-
>   arch/riscv/mm/init.c                | 194 ++++++++++++++++++++++++----
>   arch/riscv/mm/ptdump.c              |  49 +++++--
>   13 files changed, 412 insertions(+), 82 deletions(-)
>

Do you any remark regarding this patchset and the others ?

Thanks,

Alex


