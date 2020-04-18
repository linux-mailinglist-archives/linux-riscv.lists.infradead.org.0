Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940901AE8EC
	for <lists+linux-riscv@lfdr.de>; Sat, 18 Apr 2020 02:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=bQUk53v9VOdk02hVWrUqNSdNvagncREzgVLd//ANno4=; b=o4d0Cr4n8JuRIi
	KZ5xni+609IgQUMEx5cjk7Qg8hwnYWLnMVXoFllQiiX2DeSEnuJa5snPZX/Td/xbD6AwRKooHYO1U
	BgBDestmbn/4ZbPcUgGjiB1SZmplS7s913s6PiXM3VHBWmCXCIJTojKKLXJNyeLj9HS2F8PG3AVZt
	IP3tqsresUNfeDP4iVssIRqFV4Q168LACZ/Muvepi/D+EWn6v7U8cekTmm+esg6JQTwQqwzMRccnS
	UxwgaBwT64uyKLlFT46D8gphX/AlSkgfrvX/RFGQ1dukQ/jM/q7Eo1xfrzTBgqbiqM7kUH4RXO0nz
	XqHdrVjVUaim0Ur+9DYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPbG3-0006Sq-Cl; Sat, 18 Apr 2020 00:22:55 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPbFx-0006Ni-4Y
 for linux-riscv@lists.infradead.org; Sat, 18 Apr 2020 00:22:50 +0000
Received: by mail-pj1-x1044.google.com with SMTP id b7so1787781pju.0
 for <linux-riscv@lists.infradead.org>; Fri, 17 Apr 2020 17:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=bQUk53v9VOdk02hVWrUqNSdNvagncREzgVLd//ANno4=;
 b=jj0M00ke13t2PFFZmqZRD9jdeoDANpEbl1GhSr0wp5MuI/8i7/F79jZJ2vynDaTYZX
 jpzR7taNdqBJtJi1kD8rEcUb4jfSoUydAGZe9YnYIBZl0q5emC7eRUp1Gj4e2XvBaI/d
 4T0ZrNIfSe4DSYQFSyOrtIuk5Nw8ZSrid72hZRsjyGMn+HQkd+R3Lg2QMLBYaA5fGT31
 Qs/99ISt/QE9vk7uvvgWTb+ifjWB9XIB9kc/lH0FSaDeuJsNbQSV7e1HoteY9WCor5Ax
 eLBypFWVjjTe0dfWBfkr9nSXH7T8cvcFteqNriYTt9OmYamW+r1bCeuUfX/kJEHGVQwZ
 R+Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=bQUk53v9VOdk02hVWrUqNSdNvagncREzgVLd//ANno4=;
 b=FIyYqQKvh+Z5UcK0hiq/EnjDjjUDLB7L5Cx3BMsQd/qXntanjXgE+zhybuhhK5ORm+
 7Q55Zpg5d8NUuiPMWv7Fxx6lystJKX2UotgUmJNvmOnDP8J3t9lUOs1bskzO+72ciSUS
 fgpl//+3d3hFlEOSEQDResw9Oy5x8DlC8uzIL2YYV5IqPTw19LAfVQUyXOxU/VLswCxn
 2hSPZ9f0VN1JMZUNcz3J7TnUswdS8dbNrshTtcF5be9zCj2LO2uZN5KhjcmfLFnnbvgH
 4sdRjydj2AjywdU7xdQryBgMtHJ4vCYO5Kwy1G6HDa7rjpcRmJYd67ELKdB8x1A96Kh+
 j2Ow==
X-Gm-Message-State: AGi0PuaTv6QsqnTh5gTo6/9Cv9E46Tysn3kG0ktzDhLHGPrlobN5xqVZ
 dmrx1Ec7tnPwby53/HJITxn0Ww==
X-Google-Smtp-Source: APiQypIiYakCBlEcBNiRMY3xlIehMNHDaNow7Nkg7hziixsb1qiGVspleiQER+W2i9WoIUlKQC0grA==
X-Received: by 2002:a17:902:8506:: with SMTP id
 bj6mr6170949plb.106.1587169368150; 
 Fri, 17 Apr 2020 17:22:48 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id mq18sm7353814pjb.6.2020.04.17.17.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 17:22:47 -0700 (PDT)
Date: Fri, 17 Apr 2020 17:22:47 -0700 (PDT)
X-Google-Original-Date: Fri, 17 Apr 2020 17:19:43 PDT (-0700)
Subject: Re: [PATCH v5 3/9] riscv: patch code by fixmap mapping
In-Reply-To: <27f31750f58cd0ad2805579b16b001aa88103688.1586332296.git.zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-69b9c99a-ee03-4927-acf8-3ba9388e3a0b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_172249_171966_FB153F7E 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org, mhiramat@kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 08 Apr 2020 00:56:58 PDT (-0700), zong.li@sifive.com wrote:
> On strict kernel memory permission, the ftrace have to change the
> permission of text for dynamic patching the intructions. Use
> riscv_patch_text_nosync() to patch code instead of probe_kernel_write.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
> Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
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

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

