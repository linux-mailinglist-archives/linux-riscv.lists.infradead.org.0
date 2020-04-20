Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEC01B12EA
	for <lists+linux-riscv@lfdr.de>; Mon, 20 Apr 2020 19:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuvYwXlE5Hkt+ipHk4SgCiMdDOtGLT9536mgI23hPzc=; b=YPyviVfpQoGUfy
	X0QWHyahY2gEVY8blg6UxU6KkzkAxr65PwPbv4NzrNOjWF2MqCKr/PzT/9IZTyv4hO9qYGtYvx6FU
	EKFU70JuuJGNyULfRlydL1MFcPPFkNXRA7jwxYpKtQVhZp4bA4pr2G3yETsUH6W4oQO857azldr40
	QBSCcvRvXzPP/N7AsG6rYfJfWYsC/JewHoAElg6KhO5xePWJqqrw9OFvrjkqPlvs3jj7+wCFMpSlE
	ulho16mecYgqeGN403mI+ZP7qRTDM2zuAQB6u3uGRzB4Ic8/zryXJo92oV3aLw+DXsV7uGkbhIqW8
	RcJSSnhAcYbSp16GcxAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaB0-0001G4-UZ; Mon, 20 Apr 2020 17:25:46 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaAy-0001FD-61
 for linux-riscv@lists.infradead.org; Mon, 20 Apr 2020 17:25:45 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ms17so152022pjb.0
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 10:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WuvYwXlE5Hkt+ipHk4SgCiMdDOtGLT9536mgI23hPzc=;
 b=nT5PkhLJDgs4ZshcX0RBOau7mCFQINthAo95r+0yKvntm76Iq2QN/eA+8RlrAlPCzo
 Nzv+q2x76nv0PlboZbBkvPYcK0h1499XovNnguvRWNdhBgWKy+Cpihz7Jwh+DS5f9rLv
 LAdt8NCB3ip6deeyBvdiE3TaoGK0kIUDoUEGgeFBq/FAjXTKPB+AuHxa+0NVwZLsGbd0
 pRzPp56olekaFGsGyTZqQZZnPiuWTZpj/ooBk0u51Ne4dC4CBiEq3aQCQtOZSXYSWy9P
 kgnQm6eQ8JFg8f98apCUW7P8tMj/UldqTHkLlpVsgRw0f0lHvbHkH49OFyrN/m++DtLx
 kklg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WuvYwXlE5Hkt+ipHk4SgCiMdDOtGLT9536mgI23hPzc=;
 b=g244deo+KXhQxc+lUfgWEgItDsS6ozkNhLGw6n1vkMpPs4EGnjbBtxIAmJW/7EqaTt
 D/griYwNA/jSTELFUFJzQqyfup7S/P1qoJvqcc81ar5RTRI3b/r+yrdK9vVLtC3j6Si2
 QI4Da7IqXuhma7xJ7f/yv1IP5vIRliaG4+n/NGF2MLYk/yjOnyZFy171XDwEzYXP4hKR
 P0LTKO5mI7oYuFIH3wLHIDdKusMOrQm+sQrsJeEF962fb/74Qkci9jW+kn7SaTWwbrCr
 RHmIM5aR5StMIMo5UPUrgW/09OnCUXLbC9lJ1Gh15gFS05cXZsMCJAtuGVaUhfvAjW+p
 sAGA==
X-Gm-Message-State: AGi0PuYJ4qCFGwr/IZmgcecwJLCViHK+mo52J5ODZ3/hNIZUiM8Hq7ZJ
 A+yDPOhpofDenCtAnJVxWK9Y2w==
X-Google-Smtp-Source: APiQypJQ+TxM84Dn0UOUTX5+M6t/2KmdqsL6wy9XgCzEzL/hbZm74owRVPj2e/ZPzqDIAPXdp7avlg==
X-Received: by 2002:a17:90a:3ea7:: with SMTP id
 k36mr488720pjc.125.1587403543005; 
 Mon, 20 Apr 2020 10:25:43 -0700 (PDT)
Received: from ?IPv6:2a02:8084:e84:2480:228:f8ff:fe6f:83a8?
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id p65sm1658019pgp.51.2020.04.20.10.25.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 10:25:42 -0700 (PDT)
Subject: Re: [PATCHv3 01/50] kallsyms/printk: Add loglvl to print_ip_sym()
To: Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org
References: <20200418201944.482088-1-dima@arista.com>
 <20200418201944.482088-2-dima@arista.com>
 <24a1f021e52ccabfd53baa22b93947ef10e6bf3b.camel@perches.com>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <7616c5f4-def1-7362-ceef-db76107b9c2b@arista.com>
Date: Mon, 20 Apr 2020 18:25:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <24a1f021e52ccabfd53baa22b93947ef10e6bf3b.camel@perches.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_102544_225973_E083F548 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Juri Lelli <juri.lelli@redhat.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 James Hogan <jhogan@kernel.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Ben Segall <bsegall@google.com>, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Steven Rostedt <rostedt@goodmis.org>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Michal Simek <monstr@monstr.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Joe,

On 4/18/20 9:40 PM, Joe Perches wrote:
> On Sat, 2020-04-18 at 21:18 +0100, Dmitry Safonov wrote:
>> print_ip_sym() needs to have a log level parameter to comply with other
>> parts being printed. Otherwise, half of the expected backtrace would be
>> printed and other may be missing with some logging level.
> 
> I'd rather create another extension to %ps that also emits
> the [<address>] along with the symbol lookup and retire
> print_ip_sym altogether.

Makes sense.
Would you mind if I'll do it on the top of these patches?
[not to mix new printk-format with patches those add loglvl parameter]

> 
> Something like:
> ---
>  lib/vsprintf.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 7c488a..8fce8f 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -2072,6 +2072,8 @@ char *fwnode_string(char *buf, char *end, struct fwnode_handle *fwnode,
>   * - 'S' For symbolic direct pointers (or function descriptors) with offset
>   * - 's' For symbolic direct pointers (or function descriptors) without offset
>   * - '[Ss]R' as above with __builtin_extract_return_addr() translation
> + * - '[Ss]B' [<address>] and symbolic direct pointers as above
> + *	     (was used previously used as print_ip_sym)
>   * - '[Ff]' %pf and %pF were obsoleted and later removed in favor of
>   *	    %ps and %pS. Be careful when re-using these specifiers.
>   * - 'B' For backtraced symbolic direct pointers with offset
> @@ -2183,6 +2185,8 @@ char *pointer(const char *fmt, char *buf, char *end, void *ptr,
>  	case 'S':
>  	case 's':
>  		ptr = dereference_symbol_descriptor(ptr);
> +		if (fmt[1] == 'B')
> +			buf += vsprintf(buf, end, "[<%px>] ", ptr);
>  		/* Fallthrough */
>  	case 'B':
>  		return symbol_string(buf, end, ptr, spec, fmt);
> 
> 

Thanks,
          Dmitry

