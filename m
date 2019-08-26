Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969299CADC
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 09:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wl+D/L3RXA4K60ABBNGW/fHK2Jur20pCS2Xr7c4hF1M=; b=dWsviw41zBnT/J
	wgrSGu9eqP4+j3k3stQEbKd80xrF0vAfJKI7rBSW39/4FTmbNUgopuU85nSzRS5lH13kWsYManSZf
	3zLDo72qId5BxL46HJQqkohPwpjChUGHfKOUhxh9s8tB1YtTjwSW+CtvNplZmcRbPaj7qe7egJ8Jz
	5Wur6XyutwTZIwiFyMsPPe4Pe/RLRlXQDHQs3OLGPdSyMB0ajdrFJQNKcOHixK+eLhE2fFsTq8793
	TE8KyG+99ShW/HgtQRKq0IUg254FV476u21LfqpbquddK+/zn7RAH7bYQpC7yCsTeGguABxAKIL6G
	jzoSvObeEzwuR1/rn9Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29gX-0007SG-56; Mon, 26 Aug 2019 07:45:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29gG-00079c-1s; Mon, 26 Aug 2019 07:44:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FqJ6xvyn0LHQ16MKsazT2HhX3KxiVzyDvsY2B23Ctso=; b=bdX927/h7yS5b1qg30jd4ATTN
 X998dcLFf2XLF3GhMdnEPUlpSbM/iRxAGrhpx+yvAcP6BXLmbwDijPz2wcP/JwkDHBUjSbZxoDB+3
 YQ57G9VNts3H7N7la3on6VnVzaxdmSveaKRWl58IAtaq38KY9/FnISbhc9828VnPKrpWSuveuwCsf
 LLkKN5ECiFgMtCQvCGf3g2FcMbmezoDuCh0pBTcRFNTS/Q3Cy+gP7YmApuR0lGoAMiLT59cXHHtB4
 IueRhEqDIVavy7Y4upqvIZAVIkf6Nx08E5ArJ5fpMQa79c0XUnLbHIWxJnMajZebul2t7vd6teTi+
 wxeuxTAhA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i29g9-00028n-7H; Mon, 26 Aug 2019 07:44:41 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 4A7803070F4;
 Mon, 26 Aug 2019 09:44:04 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id A84BA20B33552; Mon, 26 Aug 2019 09:44:37 +0200 (CEST)
Date: Mon, 26 Aug 2019 09:44:37 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Changbin Du <changbin.du@gmail.com>
Subject: Re: [PATCH 05/11] ftrace: create memcache for hash entries
Message-ID: <20190826074437.GM2369@hirez.programming.kicks-ass.net>
References: <20190825132330.5015-1-changbin.du@gmail.com>
 <20190825132330.5015-6-changbin.du@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825132330.5015-6-changbin.du@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-parisc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, x86@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 linux-mips@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 09:23:24PM +0800, Changbin Du wrote:
> When CONFIG_FTRACE_FUNC_PROTOTYPE is enabled, thousands of
> ftrace_func_entry instances are created. So create a dedicated
> memcache to enhance performance.
> 
> Signed-off-by: Changbin Du <changbin.du@gmail.com>
> ---
>  kernel/trace/ftrace.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
> index a314f0768b2c..cfcb8dad93ea 100644
> --- a/kernel/trace/ftrace.c
> +++ b/kernel/trace/ftrace.c
> @@ -94,6 +94,8 @@ struct ftrace_ops *function_trace_op __read_mostly = &ftrace_list_end;
>  /* What to set function_trace_op to */
>  static struct ftrace_ops *set_function_trace_op;
>  
> +struct kmem_cache *hash_entry_cache;
> +
>  static bool ftrace_pids_enabled(struct ftrace_ops *ops)
>  {
>  	struct trace_array *tr;
> @@ -1169,7 +1171,7 @@ static int add_hash_entry(struct ftrace_hash *hash, unsigned long ip,
>  {
>  	struct ftrace_func_entry *entry;
>  
> -	entry = kmalloc(sizeof(*entry), GFP_KERNEL);
> +	entry = kmem_cache_alloc(hash_entry_cache, GFP_KERNEL);
>  	if (!entry)
>  		return -ENOMEM;
>  
> @@ -6153,6 +6155,15 @@ void __init ftrace_init(void)
>  	if (ret)
>  		goto failed;
>  
> +	hash_entry_cache = kmem_cache_create("ftrace-hash",
> +					     sizeof(struct ftrace_func_entry),
> +					     sizeof(struct ftrace_func_entry),
> +					     0, NULL);
> +	if (!hash_entry_cache) {
> +		pr_err("failed to create ftrace hash entry cache\n");
> +		goto failed;
> +	}

Wait what; you already have then in the binary image, now you're
allocating extra memory for each of them?

Did you look at what ORC does? Is the binary search really not fast
enough?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
