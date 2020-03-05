Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D47FB179D85
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 02:44:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=IHAud99V8DFRxBHpmis+LJ7v4tcSxMXp83sRWPaOQ6A=; b=tYs2g7ldH0owiL
	/+TxMcfG3mBUiLsNOvXY/xntX4jMPWwQmbuzisjqE7W6NRBKtPDs6ViMBKUAoXpJNDpsbaU0ZrPNn
	Y27cDKTC4TVl4nC7Tcm2dkYiRdgWKvs0jFdt1wcKqq00isIsDVIBptooXk5q2wpfstUYTuDwWnsBn
	jTyyD86aa7gQ4S6sPbzszN870XoG5SovFeO6PEtmDIzxveBQjsCPvxLhtqWHL8bWB7ulNx5KaVqR8
	T5zjqYHMD+8sstgYOdUibqe3s+rOZ9H/70RZ7efGUcn2Z6F0TQmOSPkSkwm/gTorTu9GMDBNty8EO
	talzDEZNa1mIrSzlDUog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9fYm-0004Eh-MC; Thu, 05 Mar 2020 01:44:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9fYj-0004DM-3P
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 01:44:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id l184so1939161pfl.7
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 17:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=IHAud99V8DFRxBHpmis+LJ7v4tcSxMXp83sRWPaOQ6A=;
 b=0wg1GFbRZt9EYVJPPBIibJ4+vxqpirlX1n7xGBocQk8m8sFNyLXg+XQlO9I7VPjdGq
 ygs1+EDHjMXmicC5J+YkPLbjCw3vU8SvShFAEEpAEs2xn4buuTv1/Pze2GJVuptMMQwB
 Sm4ndHpC+3hWMN6FPQlbkcHcXGUp4lcfmL0+dxOUJ9+CAjhzi3SVqVScYxnPiCqnI3/o
 5fmVd9WwQ+2gZZ0f9TYMbMNTH7b8KxDygdUTJt116xu1RHxptaHh3hF6miYehENNw5Ea
 3/i42PhkPZhpRrDdQt7DLlMQ/vaIBzy8VWA3XfZs8EsWMhDKWz4NSGLc86EGMEC/+YUX
 qPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=IHAud99V8DFRxBHpmis+LJ7v4tcSxMXp83sRWPaOQ6A=;
 b=kKYAc7OgsXfDtfPs0LxsNf/XliNZtP3zYH8jaNNHB3SuWyJSOwDjVgUDuU9+3YAUhr
 YvKka3J49/b3qXgU41putNJRHLMFeC9h0AEwd3fRIvxVtpl9kjUPK63rXKl9lBfz96O0
 KhnGIPqRGKMSWH7xMKnVi/aEm1mlxalDScRSD76ySbr2tXYjdgvcgzfzKlP+TzUMVY0h
 7vrsBcynyZeqTG60Sz4I6QYmK+929EyeaCO+r+0c7pWmwKLIys500Iz1wI6czTNQDuBI
 tOw3W9zUgQasv078s1q7DtutVLEYuhRF2GqQfQfOdxy3gPKR6LQtBseMJAGihxccbQiL
 bTEw==
X-Gm-Message-State: ANhLgQ1VMpQn4BdpVrSoHT2r6/XiK7LNG4Ww0/NT7yznqLP3jQyxQpOB
 1I++74PWWilpq5eoX8BdyQhxbA==
X-Google-Smtp-Source: ADFU+vvYsRYq0ZvKWZHSVa/lorXisjU+Cg1rGxrzNdk4psSdnQvpfS6puzFu4FutPOgd9NHmSertlg==
X-Received: by 2002:aa7:8805:: with SMTP id c5mr5968810pfo.142.1583372660245; 
 Wed, 04 Mar 2020 17:44:20 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id f20sm2432438pfk.69.2020.03.04.17.44.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 17:44:19 -0800 (PST)
Date: Wed, 04 Mar 2020 17:44:19 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 17:44:16 PST (-0800)
Subject: Re: [PATCH 8/8] riscv: add two hook functions of ftrace
In-Reply-To: <20200217083223.2011-9-zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-da89b7a8-70ef-4ac2-9d56-a4ddab325e9c@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_174421_139564_84D04F9D 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, zong.li@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 00:32:23 PST (-0800), zong.li@sifive.com wrote:
> After the text section be mask as non-writable, the ftrace have to
> change the permission of text for dynamic patching the intructions.
> Add ftrace_arch_code_modify_prepare and
> ftrace_arch_code_modify_post_process to change permission.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/kernel/ftrace.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
> index c40fdcdeb950..576df0807200 100644
> --- a/arch/riscv/kernel/ftrace.c
> +++ b/arch/riscv/kernel/ftrace.c
> @@ -7,9 +7,27 @@
>
>  #include <linux/ftrace.h>
>  #include <linux/uaccess.h>
> +#include <linux/memory.h>
> +#include <asm/set_memory.h>
>  #include <asm/cacheflush.h>
>
>  #ifdef CONFIG_DYNAMIC_FTRACE
> +int ftrace_arch_code_modify_prepare(void) __acquires(&text_mutex)
> +{
> +	mutex_lock(&text_mutex);
> +	set_kernel_text_rw();
> +	set_all_modules_text_rw();
> +	return 0;
> +}

None of the other architectures are doing anything remotely like this in these
functions, despite many supporting STRICT_KERNEL_RWX.  Having a function that
maps all text as RW seems super dangerous, as one stack attack means NX is
gone.

Looks like FIX_TEXT_POKE0 is the magic that makes the other ports work.

> +
> +int ftrace_arch_code_modify_post_process(void) __releases(&text_mutex)
> +{
> +	set_all_modules_text_ro();
> +	set_kernel_text_ro();
> +	mutex_unlock(&text_mutex);
> +	return 0;
> +}

Presumably this needs a icache flush as well?  Probably better to do so when
installing the instructions, though.

> +
>  static int ftrace_check_current_call(unsigned long hook_pos,
>  				     unsigned int *expected)
>  {

