Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CE31FAF85
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 13:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rkNR5XDOjVBimsRfYqCuc+Izf5vyWj9i0JaM5Z0oRQI=; b=FNzqj0giHrVcgz9kN3jv2Rln3
	nqCTIF0JZfm1JwQ9Dw/1S6i3SpfM0NvUz1TtxIROHLWfD3xQ9cwFLHfRRYlInioMXCL88F4EAAwYf
	m6B6KVgBlsgGFOFEy9V/QT8A67S4Sw4MNtaMA1E6U5VXJLTW1+ZbeIDZgQqm+sRT3qAT1amNm4Pw0
	RDgdKPWhi4+xJ+zXgFzUuZbjlqxvVikck8Jxt+91lXucgNlk/omK9rfdsopZvUsk6xS1tkewXb2ks
	FaAcS6/n7YI78E1blt9tWdnu9Tnn3+/mY/YYc/OXKE6bBi3DD2VgzcCzGdACXhjP3WQhyWH80uM8V
	1W/ZH7IoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlA8T-0001Dw-Fq; Tue, 16 Jun 2020 11:52:13 +0000
Received: from mailgate.ics.forth.gr ([139.91.1.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlA8O-0001DE-RA
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 11:52:10 +0000
Received: from av3.ics.forth.gr (av3in.ics.forth.gr [139.91.1.77])
 by mailgate.ics.forth.gr (8.15.2/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 05GBpxUA091422; Tue, 16 Jun 2020 14:51:59 +0300 (EEST)
X-AuditID: 8b5b014d-257ff700000045c5-06-5ee8b2592d99
Received: from enigma.ics.forth.gr (enigma.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 B8.3F.17861.952B8EE5; Tue, 16 Jun 2020 14:51:53 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user:  at ics.forth.gr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Tue, 16 Jun 2020 14:51:53 +0300
From: Nick Kossifidis <mick@ics.forth.gr>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 1/2] riscv: Register System RAM as iomem resources
Organization: FORTH
In-Reply-To: <063fab26f4c15bf5b833b57fa818749afa7811d4.1592292685.git.zong.li@sifive.com>
References: <cover.1592292685.git.zong.li@sifive.com>
 <063fab26f4c15bf5b833b57fa818749afa7811d4.1592292685.git.zong.li@sifive.com>
Message-ID: <0e1d7a917332b90666417ac0508f8a6d@mailhost.ics.forth.gr>
X-Sender: mick@mailhost.ics.forth.gr
User-Agent: Roundcube Webmail/1.3.9
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKLMWRmVeSWpSXmKPExsXSHT1dWTdy04s4g6cPrC0u75rDZrHtcwub
 xcvLPcwWbbP4LT7cnc3mwOrx5uVLFo/NS+o9LjVfZ/f4vEkugCWKyyYlNSezLLVI3y6BK+Pw
 lnlsBRMFK068WsDYwPiSt4uRk0NCwETi8ZZpbF2MXBxCAkcZJd5enscGkTCVmL23kxHE5hUQ
 lDg58wkLiM0sYCEx9cp+RghbXqJ562xmEJtFQFViSksPWC+bgKbE/EsHwepFBBQkrizZCNVb
 IbH1328mEFtYwE3i1b+9YHF+AWGJT3cvsoLYnAKREl/WfGWBOKiFUWL13VnMEEe4SLw6e4IJ
 4jgViQ+/H7CD2KICyhI3Dz9nn8AoOAvJrbOQ3DoLya0LGJlXMQoklhnrZSYX66XlF5Vk6KUX
 bWIEhzSj7w7G25vf6h1iZOJgPMQowcGsJMIbbfsiTog3JbGyKrUoP76oNCe1+BCjNAeLkjhv
 HvfyWCGB9MSS1OzU1ILUIpgsEwenVAPTvsAL86VXMDKpWP2VKE3M7/Q0+rWmcHLW8verdTjs
 TqX/3bw264e+IuvESV+exUU0cNfpa7GtveKyYycD865vk1zFGC6puelut66f4aG1oaShNDtP
 KLxH1uhPU9S0x4FnRLjvT02bJ9tyJGO1zeudKw7MeOg947eZy4Fb4V0r01ibN/T39Mzmm3rM
 f01dxpncVSe+Ckzj/10S0iF5PjHAwFdVwCdl87bG9YI7z5Qt4DXaIL/j53Q7MxuriVXGi9ZN
 TDhtF2F9bLFF8D9FzqPZ7o85jlhaF3qWiz3lSHjincLqbniraoFQhOv9l/OCrBNmbl50ZF7D
 YoPf0pqe/0X1eLuUz73J7oxtzBB4qK3EUpyRaKjFXFScCAA6b2Qy2AIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_045209_244468_52903A7C 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.2 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [139.91.1.2 listed in wl.mailspike.net]
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
Cc: linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Στις 2020-06-16 10:45, Zong Li έγραψε:
> Add System RAM to /proc/iomem, various tools expect it such as kdump.
> It is also needed for page_is_ram API which checks the specified 
> address
> whether registered as System RAM in iomem_resource list.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/mm/init.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index f4adb3684f3d..bbe816e03b2f 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -517,6 +517,27 @@ void mark_rodata_ro(void)
>  }
>  #endif
> 
> +void __init resource_init(void)
> +{
> +	struct memblock_region *region;
> +
> +	for_each_memblock(memory, region) {
> +		struct resource *res;
> +
> +		res = memblock_alloc(sizeof(struct resource), SMP_CACHE_BYTES);
> +		if (!res)
> +			panic("%s: Failed to allocate %zu bytes\n", __func__,
> +			      sizeof(struct resource));
> +
> +		res->name = "System RAM";
> +		res->start = __pfn_to_phys(memblock_region_memory_base_pfn(region));
> +		res->end = __pfn_to_phys(memblock_region_memory_end_pfn(region)) - 
> 1;
> +		res->flags = IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
> +
> +		request_resource(&iomem_resource, res);
> +	}
> +}
> +
>  void __init paging_init(void)
>  {
>  	setup_vm_final();
> @@ -524,6 +545,7 @@ void __init paging_init(void)
>  	sparse_init();
>  	setup_zero_page();
>  	zone_sizes_init();
> +	resource_init();
>  }
> 
>  #ifdef CONFIG_SPARSEMEM_VMEMMAP


I already have a patch for registering System RAM as an iomem resource 
on my kexec/kdump series. Since I don't care about System RAM regions 
being accurately exposed to userspace (I parse the current device tree 
instead) I just use memblock_start_of_DRAM/end_of_DRAM. This approach 
from arm64 codebase is better since it also handles the case of sparse 
memory regions but in order to be useful for kdump we need to add the 
various segments of the kernel image as child nodes to their respective 
region for kexec-tools. I'll re-spin my patchset anyway so I'll extend 
it to better handle System RAM regions.

