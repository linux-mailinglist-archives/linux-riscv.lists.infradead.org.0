Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C0118AA6B
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 02:45:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=defp/e8uGf2l7bhewdU6OaL68+EfMO5fZxpJqA0gb44=; b=J7tncu3h73Kp2d
	RxlVj21eSXvbdHjaXzje0labaYLbISYtytOqnb3PNM8ly6xSczYx9mB8kgy5iBqcRDE4ov+6gi/XL
	ZUwnpupzWswU5tGiyNOYFKpDxvxSmUH7zItwvulEUkfURBW8FcEqJYiMTXfTme+q0Mr/dENx/Egqd
	AahPiqxTTnJpdyetlxqbdhxenO8Qj48VuGzRlKWD7kwJr71oXrP/VvhNRi8yvWctwtegbJqDN77yo
	lJ7ei5fqGbMA4jkZVoLHw6mCaC0H8kE02RIddVsqs1QCa7NKnMNm97t8SVIaNaQnZvEQJ0nG8Y9jO
	D/5G2svnF3lr1eVN6FKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEkFI-0007ob-IY; Thu, 19 Mar 2020 01:45:16 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEkFD-0007nr-SV
 for linux-riscv@lists.infradead.org; Thu, 19 Mar 2020 01:45:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id c19so470240pfo.13
 for <linux-riscv@lists.infradead.org>; Wed, 18 Mar 2020 18:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=defp/e8uGf2l7bhewdU6OaL68+EfMO5fZxpJqA0gb44=;
 b=TRH9dF/Bcso2rM5yQA5z7+HWKaf/U9fQXXXiGt+gvIlAl7EBBYtBY4P+uGN6zC0HeM
 ZqLFF52447PgzW427qP+o/M9QSozt8dx0MUmU6xZ2Q41q9XnatKdKLZZ50i/KMy9FOdh
 gOVor3GK9zXWV5MRE1Z6SxblJGjR/+AKkenXZyyAtKG+W0t55wxsxhCIRJ0rCiUYKXdL
 GWi0nm3Iga4ibfBonBAUtYYJvd+kl+FDzXBQF4v7uS0/vKgirOzLgWxcqWg1ii2ZqZNy
 sL5vWndu8SKanEVT9bXtgRrhMRHVl8Az9Q0KwQ0HByoB4oRMVGJ4ZKpYg+8DIDX5qEeR
 SKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=defp/e8uGf2l7bhewdU6OaL68+EfMO5fZxpJqA0gb44=;
 b=QDQ5wm26C2K+WrIiwnWvASJIc9UjgqjEmn+DZt1aNruYIHtb2bdADYTMZK3dovudnG
 B5S/5zhYEiIC+ITDqFJYsQY/EDUN6YqeiivaQZJGTN7KhqLedVmRvRe7B81u2MdlrcFD
 hu2G7PzVpBe78WsXJpDqRarmPNrX3Ckxln5mfLj4Ul5+jymgyAS9oqp2zb+Gzwo/JdkP
 +tZ8aqjqNlIB4SHB4KBicjY2pnO2EcXiF3KWgQGhKZ4Tu6A/YpuabjWIhrXPLMoTmB9m
 cZ6yleyoaA3xOiOX4SnouiwecgV6+pwy/wBI+zGX1tckjJimJpcjt7zeTX4T4dvL8hwO
 N3iQ==
X-Gm-Message-State: ANhLgQ3kkEL3sMzkGJjKxkyrEKUYUeyWypxjwzlY5bTT9QSAP8U4KxzV
 MsMRSMrnyDDca8hOh4RvdvfH5g==
X-Google-Smtp-Source: ADFU+vv85oxDxQAFmm7XMMsICpoRLKqZYdHMoXpDM4rA+wl3SEkqIZ7ih9rz7hyN855EqqkemkO67g==
X-Received: by 2002:a65:44c1:: with SMTP id g1mr722666pgs.362.1584582310663;
 Wed, 18 Mar 2020 18:45:10 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id k17sm249690pfp.194.2020.03.18.18.45.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 18:45:09 -0700 (PDT)
Date: Wed, 18 Mar 2020 18:45:09 -0700 (PDT)
X-Google-Original-Date: Wed, 18 Mar 2020 16:19:33 PDT (-0700)
Subject: Re: [PATCH 1/2] riscv: uaccess should be used in nommu mode
In-Reply-To: <20200303093418.9180-1-greentime.hu@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: greentime.hu@sifive.com
Message-ID: <mhng-c8144bd2-e457-4949-90bc-c05113a6c954@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_184512_065805_AEA69BF4 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 green.hu@gmail.com, greentime@kernel.org, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 03 Mar 2020 01:34:17 PST (-0800), greentime.hu@sifive.com wrote:
> It might have the unaligned access exception when trying to exchange data
> with user space program. In this case, it failed in tty_ioctl(). Therefore
> we should enable uaccess.S for NOMMU mode since the generic code doesn't
> handle the unaligned access cases.
>
>    0x8013a212 <tty_ioctl+462>:  ld      a5,460(s1)
>
> [    0.115279] Oops - load address misaligned [#1]
> [    0.115284] CPU: 0 PID: 29 Comm: sh Not tainted 5.4.0-rc5-00020-gb4c27160d562-dirty #36
> [    0.115294] epc: 000000008013a212 ra : 000000008013a212 sp : 000000008f48dd50
> [    0.115303]  gp : 00000000801cac28 tp : 000000008fb80000 t0 : 00000000000000e8
> [    0.115312]  t1 : 000000008f58f108 t2 : 0000000000000009 s0 : 000000008f48ddf0
> [    0.115321]  s1 : 000000008f8c6220 a0 : 0000000000000001 a1 : 000000008f48dd28
> [    0.115330]  a2 : 000000008fb80000 a3 : 00000000801a7398 a4 : 0000000000000000
> [    0.115339]  a5 : 0000000000000000 a6 : 000000008f58f0c6 a7 : 000000000000001d
> [    0.115348]  s2 : 000000008f8c6308 s3 : 000000008f78b7c8 s4 : 000000008fb834c0
> [    0.115357]  s5 : 0000000000005413 s6 : 0000000000000000 s7 : 000000008f58f2b0
> [    0.115366]  s8 : 000000008f858008 s9 : 000000008f776818 s10: 000000008f776830
> [    0.115375]  s11: 000000008fb840a8 t3 : 1999999999999999 t4 : 000000008f78704c
> [    0.115384]  t5 : 0000000000000005 t6 : 0000000000000002
> [    0.115391] status: 0000000200001880 badaddr: 000000008f8c63ec cause: 0000000000000004
> [    0.115401] ---[ end trace 00d490c6a8b6c9ac ]---
>
> This failure could be fixed after this patch applied.
>
> [    0.002282] Run /init as init process
> Initializing random number generator... [    0.005573] random: dd: uninitialized urandom read (512 bytes read)
> done.
>
> Welcome to Buildroot
> buildroot login: root
> Password:
> Jan  1 00:00:00 login[62]: root login on 'ttySIF0'
> ~ #
>
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> ---
>  arch/riscv/Kconfig               |  1 -
>  arch/riscv/include/asm/uaccess.h | 36 ++++++++++++++++----------------
>  arch/riscv/lib/Makefile          |  2 +-
>  3 files changed, 19 insertions(+), 20 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 73f029eae0cc..92d63a63aec8 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -50,7 +50,6 @@ config RISCV
>  	select PCI_DOMAINS_GENERIC if PCI
>  	select PCI_MSI if PCI
>  	select RISCV_TIMER
> -	select UACCESS_MEMCPY if !MMU
>  	select GENERIC_IRQ_MULTI_HANDLER
>  	select GENERIC_ARCH_TOPOLOGY if SMP
>  	select ARCH_HAS_PTE_SPECIAL
> diff --git a/arch/riscv/include/asm/uaccess.h b/arch/riscv/include/asm/uaccess.h
> index f462a183a9c2..8ce9d607b53d 100644
> --- a/arch/riscv/include/asm/uaccess.h
> +++ b/arch/riscv/include/asm/uaccess.h
> @@ -11,6 +11,24 @@
>  /*
>   * User space memory access functions
>   */
> +
> +extern unsigned long __must_check __asm_copy_to_user(void __user *to,
> +	const void *from, unsigned long n);
> +extern unsigned long __must_check __asm_copy_from_user(void *to,
> +	const void __user *from, unsigned long n);
> +
> +static inline unsigned long
> +raw_copy_from_user(void *to, const void __user *from, unsigned long n)
> +{
> +	return __asm_copy_from_user(to, from, n);
> +}
> +
> +static inline unsigned long
> +raw_copy_to_user(void __user *to, const void *from, unsigned long n)
> +{
> +	return __asm_copy_to_user(to, from, n);
> +}
> +
>  #ifdef CONFIG_MMU
>  #include <linux/errno.h>
>  #include <linux/compiler.h>
> @@ -367,24 +385,6 @@ do {								\
>  		-EFAULT;					\
>  })
>
> -
> -extern unsigned long __must_check __asm_copy_to_user(void __user *to,
> -	const void *from, unsigned long n);
> -extern unsigned long __must_check __asm_copy_from_user(void *to,
> -	const void __user *from, unsigned long n);
> -
> -static inline unsigned long
> -raw_copy_from_user(void *to, const void __user *from, unsigned long n)
> -{
> -	return __asm_copy_from_user(to, from, n);
> -}
> -
> -static inline unsigned long
> -raw_copy_to_user(void __user *to, const void *from, unsigned long n)
> -{
> -	return __asm_copy_to_user(to, from, n);
> -}
> -
>  extern long strncpy_from_user(char *dest, const char __user *src, long count);
>
>  extern long __must_check strlen_user(const char __user *str);
> diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
> index 47e7a8204460..0d0db80800c4 100644
> --- a/arch/riscv/lib/Makefile
> +++ b/arch/riscv/lib/Makefile
> @@ -2,5 +2,5 @@
>  lib-y			+= delay.o
>  lib-y			+= memcpy.o
>  lib-y			+= memset.o
> -lib-$(CONFIG_MMU)	+= uaccess.o
> +lib-y			+= uaccess.o
>  lib-$(CONFIG_64BIT)	+= tishift.o

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

