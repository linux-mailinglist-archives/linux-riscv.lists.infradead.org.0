Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A0914FD5F
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Feb 2020 14:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acG95167J+aUX0WBYhS4cWYGWvcjK+oJ+/V/F23nsGY=; b=V5AvYcXzOLXytF
	ZRMdM6Rq/y8PfOFdZKw3AtHO0q+14/HcRH233C/ZiEaztOfE+OgOE3ubvSZV2Mc0yNovsofFn0Pmn
	hTXs34PNFBZtKRMtFFFsojsd0+k6SZYn9FBB3zjtDljH4HDfVetzC4eC9eYYKAHo7RXK0pHFdC4Ni
	MkBAd7pwCGwlAU5yhoKINKrXrgjy1eeTVbYi6VoZNKs/ey1842hsMoQ2B/xlc6bgLIgbj5+XCH7d5
	bbOPcApSvPkqjlYr2f9JA8dvyWMbyGt/pF8awREwj3Kt8aKvRa7wACQIfPr2VOrxNI3NByX47Rn4j
	FYRSeaO5IrPr8PvT0Oew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyFSM-0002NZ-1N; Sun, 02 Feb 2020 13:38:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyFSJ-0002NM-N6
 for linux-riscv@bombadil.infradead.org; Sun, 02 Feb 2020 13:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=acG95167J+aUX0WBYhS4cWYGWvcjK+oJ+/V/F23nsGY=; b=PFs2dVGTLqW7PgoehCE4BSdyyG
 7A1c9jUt316YyN+3Ivkpb3FYumpdwqWL/wRiD1Slpp+pZIURBZ6CrKqf09gEfGehcmEj+W/R1u72H
 f3Gol5TLXqwhQbtLYM4Ez9/7l3WGrzBt0U0AniWpWrPam9LFM2tPFzAljgHjjxq24r3kgsbxS2/AW
 QPZHgudWoslJTNnK22bvZqazhJt+d+F6StJs9Qx6MP0F3AEGzUW/OBd+fREL994LI5FVuPsAYQ0R0
 Ny+jcBd6Rfczi/GZqJqLZASVbi7gBP9APQszKqBckjHyk7YEhuRis3+ojuNQ5XSq9bR8rm3ENSQ32
 UXjTXOKA==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyFSA-0006Dr-1I
 for linux-riscv@lists.infradead.org; Sun, 02 Feb 2020 13:38:26 +0000
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 28D74240002;
 Sun,  2 Feb 2020 13:37:30 +0000 (UTC)
Subject: Re: [PATCH bpf-next v2 6/9] riscv, bpf: provide RISC-V specific JIT
 image alloc/free
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 daniel@iogearbox.net, ast@kernel.org, netdev@vger.kernel.org
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
 <20191216091343.23260-7-bjorn.topel@gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <3f6d3495-efdf-e663-2a84-303fde947a1d@ghiti.fr>
Date: Sun, 2 Feb 2020 08:37:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191216091343.23260-7-bjorn.topel@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_133822_699041_F0C9A9BE 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: anup@brainfault.org, linux-riscv@lists.infradead.org, bpf@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 12/16/19 4:13 AM, Björn Töpel wrote:
> This commit makes sure that the JIT images is kept close to the kernel
> text, so BPF calls can use relative calling with auipc/jalr or jal
> instead of loading the full 64-bit address and jalr.
>
> The BPF JIT image region is 128 MB before the kernel text.
>
> Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
> ---
>   arch/riscv/include/asm/pgtable.h |  4 ++++
>   arch/riscv/net/bpf_jit_comp.c    | 13 +++++++++++++
>   2 files changed, 17 insertions(+)
>
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index 7ff0ed4f292e..cc3f49415620 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -404,6 +404,10 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
>   #define VMALLOC_END      (PAGE_OFFSET - 1)
>   #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
>   
> +#define BPF_JIT_REGION_SIZE	(SZ_128M)
> +#define BPF_JIT_REGION_START	(PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> +#define BPF_JIT_REGION_END	(VMALLOC_END)
> +
>   /*
>    * Roughly size the vmemmap space to be large enough to fit enough
>    * struct pages to map half the virtual address space. Then
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
> index 8aa19c846881..46cff093f526 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -1656,3 +1656,16 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
>   					   tmp : orig_prog);
>   	return prog;
>   }
> +
> +void *bpf_jit_alloc_exec(unsigned long size)
> +{
> +	return __vmalloc_node_range(size, PAGE_SIZE, BPF_JIT_REGION_START,
> +				    BPF_JIT_REGION_END, GFP_KERNEL,
> +				    PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
> +				    __builtin_return_address(0));
> +}
> +
> +void bpf_jit_free_exec(void *addr)
> +{
> +	return vfree(addr);
> +}


I think it would be better to completely avoid this patch and the 
definition of this
new zone by using the generic implementation if we had the patch 
discussed here
regarding modules memory allocation (that in any case we need to fix 
modules loading):

https://lore.kernel.org/linux-riscv/d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr/T/#m2be30cb71dc9aa834a50d346961acee26158a238

Alex


