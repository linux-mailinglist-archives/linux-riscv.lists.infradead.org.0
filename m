Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FB0BEA93
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Sep 2019 04:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdkfrs81R86gxAhWdNI7Qa+7W2nvVqZwEZwH1ZbIdXY=; b=Qn7nmCfGKQXa27
	Rd50qpDuQI5XOTdGsKPEv0nLPYlIo7DlQyRoEzlSuP2c4NZLXyMUgj8ljeL7yUYWWID3QgV/dHvXr
	kF2XJ6G6Kv4LuMKPJ7Ob9r2iqXP5ZYxfX+HtDfG8G+gV+3bjxak+PJ/jRpPX9dqW3wYGlnpJ7/Iux
	02vxHMc3kJUtlPT2e8uvPSI2AxAHPx/oKZnehhMfMzAOwWzI7aS2pbvpeDOa2Z5sWBNNepG0anMJE
	d4JbH+UGG1Fb4b1acd/R/q3DO9ymeuZmyZZf3C3zD3wPw5YMTHKCJYfQFNBp4LgOq4ZpmQn5msLbY
	w+NIl0wEn49KEwE6vPlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDJRb-0001my-38; Thu, 26 Sep 2019 02:23:47 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDJRV-0001lq-30
 for linux-riscv@lists.infradead.org; Thu, 26 Sep 2019 02:23:44 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9BD366E99926D5B331FD;
 Thu, 26 Sep 2019 10:23:32 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.137) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 26 Sep 2019 10:23:30 +0800
Subject: Re: [PATCH] riscv: move flush_icache_range/user_range() after
 flush_icache_all()
To: <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Palmer Dabbelt" <palmer@sifive.com>
References: <20190926022938.58568-1-wangkefeng.wang@huawei.com>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <4f7b4b37-1907-2afe-7600-dfce47f3bbdf@huawei.com>
Date: Thu, 26 Sep 2019 10:23:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190926022938.58568-1-wangkefeng.wang@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.133.217.137]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_192342_571183_3EAE69FB 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Please ignore this version.

On 2019/9/26 10:29, Kefeng Wang wrote:
> When build lkdtm module, which used flush_icache_range(), error occurred,
>
> ERROR: "flush_icache_all" [drivers/misc/lkdtm/lkdtm.ko] undefined!
>
> Fix it.
>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  arch/riscv/include/asm/cacheflush.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
> index 555b20b11dc3..f6ec26589620 100644
> --- a/arch/riscv/include/asm/cacheflush.h
> +++ b/arch/riscv/include/asm/cacheflush.h
> @@ -80,13 +80,6 @@ static inline void flush_dcache_page(struct page *page)
>  		clear_bit(PG_dcache_clean, &page->flags);
>  }
>  
> -/*
> - * RISC-V doesn't have an instruction to flush parts of the instruction cache,
> - * so instead we just flush the whole thing.
> - */
> -#define flush_icache_range(start, end) flush_icache_all()
> -#define flush_icache_user_range(vma, pg, addr, len) flush_icache_all()
> -
>  #ifndef CONFIG_SMP
>  
>  #define flush_icache_all() local_flush_icache_all()
> @@ -99,6 +92,13 @@ void flush_icache_mm(struct mm_struct *mm, bool local);
>  
>  #endif /* CONFIG_SMP */
>  
> +/*
> + * RISC-V doesn't have an instruction to flush parts of the instruction cache,
> + * so instead we just flush the whole thing.
> + */
> +#define flush_icache_range(start, end) flush_icache_all()
> +#define flush_icache_user_range(vma, pg, addr, len) flush_icache_all()
> +
>  /*
>   * Bits in sys_riscv_flush_icache()'s flags argument.
>   */


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
