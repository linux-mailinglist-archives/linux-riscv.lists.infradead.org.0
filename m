Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49821870D9
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 18:05:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oHuDsb0BYy/d636wQUMKtKEpga8b2Fk0bUIPzh68LKU=; b=Q2g
	eeBm3gc6bnXlQl8rnQlUyg0+SNK2PL47sQn68YxZTyH9hZ2ZbpKjxvTxFLEBHLEE04OP/XJeWF5ZW
	GY/X29ZrO9xl9jUK7xW/jlgybIJRVn7bwmAKNHzQ8oliYaJtfrfibpbHBm2pCGCxctR52VFTgy/q0
	xFzDHeubaEyCkcrFCqa/a99cUf+UhBBZJqL/x6402dltkY96k+FepfbGSeSOtjjQmabRfLRrWhX4X
	D7cDk7DeSi8MQcATGCJc+Dlsq/ynQUebeKIyTJvq6mIMA9axetS4hKFevPMHqY/udvyaKu4HrYnKP
	ixweWVPbCQvC9Ywyur5eAO972xwwAIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtAl-00053v-CB; Mon, 16 Mar 2020 17:05:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClbk-0001aH-5X
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 14:48:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id x2so4982110pfn.9
 for <linux-riscv@lists.infradead.org>; Fri, 13 Mar 2020 07:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=oHuDsb0BYy/d636wQUMKtKEpga8b2Fk0bUIPzh68LKU=;
 b=QPr8dt2QxIixsqy9ZBnc5G/HqRd1sZSgw4ueoF5tpk9YB7UwsXfrmPyWyvGy8KrdxM
 Ks1I3+/p2jNqle4MU937ra2i8OL/XPLMeyjnrrrTJTsaeLpur5FPY6AOMI99EAfJRWGU
 cFLIvxn4oIfTQzwQp+G0cM9TXU9AdPNwU82xoCYs4bwFrkOErhV9OnmUzdms1ZWDkROq
 xoPes2qFz5yh6Nz4u07d36XEmZbalSzQU/OyHwYm69dJq8dnacyyHEw3xI5bSP0Df6IL
 49RaLT7yyXxtf3qmqfPTG15jtJOfXwWKjavCKfoIWdYXjBOmHFHNz++oaUcVpnW0LOc1
 WUkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mime-version:content-disposition:user-agent;
 bh=oHuDsb0BYy/d636wQUMKtKEpga8b2Fk0bUIPzh68LKU=;
 b=msC2WYgHg04ReN5Tek7FuJWv8OFKxx4yIPqke5yJRwjedomEsqZcEeyMpEF4TT1nrK
 KXBaxOAVoE7OU7sLL0393Jv+c0efXM20/drFSFBPqp75H4qBq7Z7GRrgFufsr5O9WYQx
 TKpn8hGCwV8s4P3CQ5jjqw+24GM3VVxtCROsAawhYIn+CTAVApWDlkKEQcyFXa0NuUKx
 z2eTqA8Xv3QiDTGBT6tQsGPQfiPHOOSQvz0YCrJys4wJcMlM6+310CxnPWHQpc7rKFz5
 /R9+lTqElAyudcfYW1g4qX2F9wnr5v5jm4+LRCadd5rG+2wjWYUT3yAyXofuL2MSb2b2
 E+Rg==
X-Gm-Message-State: ANhLgQ1pTbxFRreZr0/B68ryAJYK8TlLFa0dgX/ee8R7mjRZ+ebc0brd
 dckCksb/HpL109hOn5BRtLg=
X-Google-Smtp-Source: ADFU+vs8Y0FxfhJvoRNuZf90geJEcistZcuQ3jM9ek3/ePzkejrShkFIi/fPhjVEEYzg1VsHATLtUg==
X-Received: by 2002:a63:7a1a:: with SMTP id v26mr13166730pgc.152.1584110894252; 
 Fri, 13 Mar 2020 07:48:14 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id y193sm54120509pgd.87.2020.03.13.07.48.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 07:48:13 -0700 (PDT)
Date: Fri, 13 Mar 2020 07:48:12 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Subject: Re: [PATCH] RISC-V: Stop relying on GCC's register allocator's
 hueristics
Message-ID: <20200313144812.GA25715@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_074816_216033_E4510791 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 FAKE_REPLY_C           No description available.
X-Mailman-Approved-At: Mon, 16 Mar 2020 10:05:00 -0700
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
Cc: linux-riscv@lists.infradead.org, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 11:07:28AM -0800, Palmer Dabbelt wrote:
> GCC allows users to hint to the register allocation that a variable should be
> placed in a register by using a syntax along the lines of
> 
>     function(...) {
>         register long in_REG __asm__("REG");
>     }
> 
> We've abused this a bit throughout the RISC-V port to access fixed registers
> directly as C variables.  In practice it's never going to blow up because GCC
> isn't going to allocate these registers, but it's not a well defined syntax so
> we really shouldn't be relying upon this.  Luckily there is a very similar but
> well defined syntax that allows us to still access these registers directly as
> C variables, which is to simply declare the register variables globally.  For
> fixed variables this doesn't change the ABI.
> 
> LLVM disallows this ambiguous syntax, so this isn't just strictly a formatting
> change.
> 
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>

riscv:allnoconfig:

arch/riscv/kernel/stacktrace.c: In function 'walk_stackframe':
arch/riscv/kernel/stacktrace.c:78:8: error: 'sp_in_global' undeclared (first use in this function)

sp_in_global is declared inside #ifdef CONFIG_FRAME_POINTER.

Guenter

> ---
>  arch/riscv/include/asm/current.h | 5 +++--
>  arch/riscv/kernel/process.c      | 5 +++--
>  arch/riscv/kernel/stacktrace.c   | 7 ++++---
>  3 files changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/current.h b/arch/riscv/include/asm/current.h
> index dd973efe5d7c..1de233d8e8de 100644
> --- a/arch/riscv/include/asm/current.h
> +++ b/arch/riscv/include/asm/current.h
> @@ -17,6 +17,8 @@
>  
>  struct task_struct;
>  
> +register struct task_struct *riscv_current_is_tp __asm__("tp");
> +
>  /*
>   * This only works because "struct thread_info" is at offset 0 from "struct
>   * task_struct".  This constraint seems to be necessary on other architectures
> @@ -26,8 +28,7 @@ struct task_struct;
>   */
>  static __always_inline struct task_struct *get_current(void)
>  {
> -	register struct task_struct *tp __asm__("tp");
> -	return tp;
> +	return riscv_current_is_tp;
>  }
>  
>  #define current get_current()
> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> index 817cf7b0974c..610c11e91606 100644
> --- a/arch/riscv/kernel/process.c
> +++ b/arch/riscv/kernel/process.c
> @@ -22,6 +22,8 @@
>  #include <asm/switch_to.h>
>  #include <asm/thread_info.h>
>  
> +unsigned long gp_in_global __asm__("gp");
> +
>  extern asmlinkage void ret_from_fork(void);
>  extern asmlinkage void ret_from_kernel_thread(void);
>  
> @@ -107,9 +109,8 @@ int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
>  	/* p->thread holds context to be restored by __switch_to() */
>  	if (unlikely(p->flags & PF_KTHREAD)) {
>  		/* Kernel thread */
> -		const register unsigned long gp __asm__ ("gp");
>  		memset(childregs, 0, sizeof(struct pt_regs));
> -		childregs->gp = gp;
> +		childregs->gp = gp_in_global;
>  		/* Supervisor/Machine, irqs on: */
>  		childregs->status = SR_PP | SR_PIE;
>  
> diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
> index 0940681d2f68..02087fe539c6 100644
> --- a/arch/riscv/kernel/stacktrace.c
> +++ b/arch/riscv/kernel/stacktrace.c
> @@ -19,6 +19,8 @@ struct stackframe {
>  	unsigned long ra;
>  };
>  
> +register unsigned long sp_in_global __asm__("sp");
> +
>  void notrace alk_stackframe(struct task_struct *task, struct pt_regs *regs,
>  			     bool (*fn)(unsigned long, void *), void *arg)
>  {
> @@ -29,7 +31,7 @@ void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
>  		sp = user_stack_pointer(regs);
>  		pc = instruction_pointer(regs);
>  	} else if (task == NULL || task == current) {
> -		const register unsigned long current_sp __asm__ ("sp");
> +		const register unsigned long current_sp = sp_in_global;
>  		fp = (unsigned long)__builtin_frame_address(0);
>  		sp = current_sp;
>  		pc = (unsigned long)walk_stackframe;
> @@ -73,8 +75,7 @@ static void notrace walk_stackframe(struct task_struct *task,
>  		sp = user_stack_pointer(regs);
>  		pc = instruction_pointer(regs);
>  	} else if (task == NULL || task == current) {
> -		const register unsigned long current_sp __asm__ ("sp");
> -		sp = current_sp;
> +		sp = sp_in_global;
>  		pc = (unsigned long)walk_stackframe;
>  	} else {
>  		/* task blocked in __switch_to */
> -- 
> 2.17.1

