Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCFC1A10DC
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 18:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRxgvsRqSWn/AK3yEIP2ZSYGJq1vPL0pg7dDWpn0Y/A=; b=AJFuM5VLh5VyKV
	T2znbOefEGhbEPIiT+PuqgaKSrktEqJbyxTJ0q7viQrbAJdSaV8aO5brFd8PQ3YifMYmBk7xhXy/x
	1R/43Gk6DLmqhfM8DofugsxhnD2wobx6ejWEAafEYS/OHBa/uIC8Se96zp70LyiRbhI4S1hfUDZ/1
	sXNmFt/6JA6+WPhRjPWRirQ8SXshTulYKWgaCY4Q7EdTYaGl6dYo4TOlD6ZVlRMyGf+XMb6qR+8mY
	7gumSpupNPE86ASdeSw4bssKFd27tRMXmcWPq2ZfBmPJwVznFpRapXHDohbDLRUwBERpYbj7n/0+o
	zxucBkJvuI8aG3cE1Khw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLqgD-0000td-VG; Tue, 07 Apr 2020 16:02:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqgA-0000tD-OL
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 16:02:24 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7CBB2075E;
 Tue,  7 Apr 2020 16:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586275342;
 bh=3VjqdLa0s70r8aebZrWtJwDbgUgBPZ4Fn9cPzsn7F8c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Gw12nJpwBaICSNfCelcRlTky9psIctNfr5AJaqWmlY49ejsFHlL99qIPglWjGUE6g
 lt8XQXYKRg8vkMPGLFA45y42nwSgDMDSWpCJnWHPa0OORNCkXAgpnZMm3xhLDod8Xu
 5vmKwu/nNjeR6eTeVFO7ruZlDGkVoOk0ro2Istk8=
Date: Wed, 8 Apr 2020 01:02:18 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v4 3/9] riscv: patch code by fixmap mapping
Message-Id: <20200408010218.c601beb496712a1251e2c9a0@kernel.org>
In-Reply-To: <0b6ad2759b47731a83008b46dbbed7c92e68cae2.1586265122.git.zong.li@sifive.com>
References: <cover.1586265122.git.zong.li@sifive.com>
 <0b6ad2759b47731a83008b46dbbed7c92e68cae2.1586265122.git.zong.li@sifive.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_090222_815755_A82C7D29 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue,  7 Apr 2020 22:46:48 +0800
Zong Li <zong.li@sifive.com> wrote:

> On strict kernel memory permission, the ftrace have to change the
> permission of text for dynamic patching the intructions. Use
> riscv_patch_text_nosync() to patch code instead of probe_kernel_write.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>

Looks good to me.

Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>

Thanks!

> ---
>  arch/riscv/kernel/ftrace.c | 26 +++++++++++++++++---------
>  1 file changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
> index c40fdcdeb950..08396614d6f4 100644
> --- a/arch/riscv/kernel/ftrace.c
> +++ b/arch/riscv/kernel/ftrace.c
> @@ -7,9 +7,23 @@
>  
>  #include <linux/ftrace.h>
>  #include <linux/uaccess.h>
> +#include <linux/memory.h>
>  #include <asm/cacheflush.h>
> +#include <asm/patch.h>
>  
>  #ifdef CONFIG_DYNAMIC_FTRACE
> +int ftrace_arch_code_modify_prepare(void) __acquires(&text_mutex)
> +{
> +	mutex_lock(&text_mutex);
> +	return 0;
> +}
> +
> +int ftrace_arch_code_modify_post_process(void) __releases(&text_mutex)
> +{
> +	mutex_unlock(&text_mutex);
> +	return 0;
> +}
> +
>  static int ftrace_check_current_call(unsigned long hook_pos,
>  				     unsigned int *expected)
>  {
> @@ -46,20 +60,14 @@ static int __ftrace_modify_call(unsigned long hook_pos, unsigned long target,
>  {
>  	unsigned int call[2];
>  	unsigned int nops[2] = {NOP4, NOP4};
> -	int ret = 0;
>  
>  	make_call(hook_pos, target, call);
>  
> -	/* replace the auipc-jalr pair at once */
> -	ret = probe_kernel_write((void *)hook_pos, enable ? call : nops,
> -				 MCOUNT_INSN_SIZE);
> -	/* return must be -EPERM on write error */
> -	if (ret)
> +	/* Replace the auipc-jalr pair at once. Return -EPERM on write error. */
> +	if (patch_text_nosync
> +	    ((void *)hook_pos, enable ? call : nops, MCOUNT_INSN_SIZE))
>  		return -EPERM;
>  
> -	smp_mb();
> -	flush_icache_range((void *)hook_pos, (void *)hook_pos + MCOUNT_INSN_SIZE);
> -
>  	return 0;
>  }
>  
> -- 
> 2.26.0
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

