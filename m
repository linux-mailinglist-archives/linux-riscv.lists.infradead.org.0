Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D571B8AA7
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 03:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKOtKNaS2MVqBJSkNeVOBAfIRWocy7ki1LICFqTWWaE=; b=paw9Ym1ftblSxS
	q+jETyEWfx2UDa/r9rrdtQTk2vHf0+mq9NdkMzw9EXvFQboqkvcOU8UFT3sl3FslAR6y4LEgncFCx
	NM+edcVmECVGeOLhXTYSnLXHdyGtQE9SyGe793Cm8SU8PkyUhsBa5fEwSdSt6ortRUvq9h4/sMC5/
	W7gz6G8+3lK4oKy6NEw3zR2Ra+iKXnQYvBmQY/nmMZcgOuobpao3TUxOMlt3bYL5qhMaPZ3xYlhuK
	9eGG77RfME5qhqL4vM1pWlsE5dEIjL0LCcbLn9Xh3Tjuj8cubPBQTJgwFaM4iUQ4YMIfTrcBa4/L8
	Cg0M/gBMxDcIPz1l4NZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSVk0-0000B3-MH; Sun, 26 Apr 2020 01:05:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSVjm-0008Re-Lf; Sun, 26 Apr 2020 01:05:39 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BEDC206DD;
 Sun, 26 Apr 2020 01:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587863138;
 bh=TW9WOI1NaKEA7K+nsipDf0IuvMnVChZsi71PeMPMFD0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xyssavs7qBvNOpyHvBtiegJkq8Wqg9HwnL8VSZPm/f8KpEORw/jy4AReSAPnbTyaS
 c0Cw8kBn/g+AbZeu0VCV07nAEV8i657DrVx4QfURgeCFg0zIN8wLlvc0ertQQb0mih
 zxkGvbWu7NndBLJ4agHVO4dFK7txamla8RvIHWDs=
Date: Sat, 25 Apr 2020 18:05:37 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 2/4] riscv: support DEBUG_WX
Message-Id: <20200425180537.063e976b232f8771e22f7ee1@linux-foundation.org>
In-Reply-To: <282e266311bced080bc6f7c255b92f87c1eb65d6.1587455584.git.zong.li@sifive.com>
References: <cover.1587455584.git.zong.li@sifive.com>
 <282e266311bced080bc6f7c255b92f87c1eb65d6.1587455584.git.zong.li@sifive.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_180538_728382_D0528BC2 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: hpa@zytor.com, catalin.marinas@arm.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, mingo@redhat.com,
 palmer@dabbelt.com, paul.walmsley@sifive.com, bp@alien8.de,
 linux-riscv@lists.infradead.org, will@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 16:17:13 +0800 Zong Li <zong.li@sifive.com> wrote:

> Support DEBUG_WX to check whether there are mapping with write and
> execute permission at the same time.
> 
> --- a/arch/riscv/include/asm/ptdump.h
> +++ b/arch/riscv/include/asm/ptdump.h
> @@ -8,4 +8,10 @@
>  
>  void ptdump_check_wx(void);
>  
> +#ifdef CONFIG_DEBUG_WX
> +#define debug_checkwx() ptdump_check_wx()
> +#else
> +#define debug_checkwx() do { } while (0)
> +#endif
> +
>  #endif /* _ASM_RISCV_PTDUMP_H */

It's preferred to implement things in regular C, unless they MUST be
implemented in the preprocessor.  So...

--- a/arch/riscv/include/asm/ptdump.h~riscv-support-debug_wx-fix
+++ a/arch/riscv/include/asm/ptdump.h
@@ -9,9 +9,14 @@
 void ptdump_check_wx(void);
 
 #ifdef CONFIG_DEBUG_WX
-#define debug_checkwx() ptdump_check_wx()
+static inline void debug_checkwx(void)
+{
+	ptdump_check_wx();
+}
 #else
-#define debug_checkwx() do { } while (0)
+static inline void debug_checkwx(void)
+{
+}
 #endif
 
 #endif /* _ASM_RISCV_PTDUMP_H */
_


