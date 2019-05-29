Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5732E5E3
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 22:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doHmL18qI+aqRG4LlhLbJzSgpu15vPewm1VpSWRHuXg=; b=hPUHG+uVgLVQTO
	vYlzz7Cp+FNrqZjVh21mNT1yhEy15lKpSeDz52hqzNJUcYqbdrcsewGIfhQVvIK9UQAfz0JVCqpSE
	5uixLNZSUKVnLZrYPqhX1qNuO9pkBKD8BtIwQ2ZlJK05iLYo88Q1NpKSWS/DdANtTlFeT7S9GfYFr
	OjTD90dXgMsKhOg9zyiUouoSNzeRyEkSAqupw9Ff/5X+tCs5rqhEm4lUNI370rBLP5HGaFuzqP31W
	R+bzx1UoEa5huyrKUpUEglnyWPj8jKhsjiBDkL1u4oB7hsK5GA3IXYq5Qsznjpd0lcZUQ+7yuG9Sp
	TMRxYhS0rW4yhnnCg4HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW4wC-0008Jm-Nb; Wed, 29 May 2019 20:12:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW4vz-00087r-72
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 20:12:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id q17so2338068pfq.8
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 13:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0aft1pCaWtRYtnkCVrHz1gsURga5CiN4SjNK2Yoiqfs=;
 b=XrzLaKA5MBHx0xlQKOcw3TIc85QvkhgJkO2JlDacDh+XCgUjABQyymyiZ/G560P5jJ
 HkAij558NkgyQQddecvDdQLSq5ZIicJMj+V7FdjS/5Qp/CTG9jIYFMaRFN3A7NFwUjgi
 FNTYdjrs48vkuDxAgacSirUU/cz2L2J9fobnY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0aft1pCaWtRYtnkCVrHz1gsURga5CiN4SjNK2Yoiqfs=;
 b=JBGHKPzKM4WEEO+65njGqczHf3EaK1FwGymmDcIoh3x8Pqwu955h7dkJv/TFL0zgt5
 vf3PfUvgqEZgDhNsjcU+GNXTF/AsXay2PUHI8rQh1rGFyqQcBljx8WHBnpHjijg81+0o
 mdXVzFHkAxMRBGmmMLV2HskwPma60pxN5zjrl+8RzvIEnC55J46njsP2KYtuYYm3aHYy
 zXz1bv/4sxB+nMOA+rN3sDz2E4j8EOL6dTMtGU0KuNUG003FFUO0kz47l0/lYuJkP9X+
 2ifgxjAbR0F/wj5GpJ082BvkaDGd3H0sJ1S5FUdUPCrK8sd3n668S6a8UdHc/KiznoeD
 gr+g==
X-Gm-Message-State: APjAAAWDD2jm9qgWPmfmxPQpmupVgScL790bKFTTlQ1RPaWw3GIO22qa
 8dCbJPoZjaOhm4LYmkv3h0pVew==
X-Google-Smtp-Source: APXvYqwc7/sGYBIou0XJOLY+/Ol3XK8SIbVohsGySQ6NBMh2dCNE0NA9cvRsEXWPqWrlHnSoWF5LlQ==
X-Received: by 2002:aa7:8d81:: with SMTP id i1mr126561827pfr.244.1559160746780; 
 Wed, 29 May 2019 13:12:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d9sm220941pgj.34.2019.05.29.13.12.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 13:12:25 -0700 (PDT)
Date: Wed, 29 May 2019 13:12:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v4 12/14] mips: Replace arch specific way to determine
 32bit task with generic version
Message-ID: <201905291312.7B8EBE955@keescook>
References: <20190526134746.9315-1-alex@ghiti.fr>
 <20190526134746.9315-13-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526134746.9315-13-alex@ghiti.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_131227_292708_AE8FFF12 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 linux-riscv@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 26, 2019 at 09:47:44AM -0400, Alexandre Ghiti wrote:
> Mips uses TASK_IS_32BIT_ADDR to determine if a task is 32bit, but
> this define is mips specific and other arches do not have it: instead,
> use !IS_ENABLED(CONFIG_64BIT) || is_compat_task() condition.
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/mips/mm/mmap.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
> index c052565b76fb..900670ea8531 100644
> --- a/arch/mips/mm/mmap.c
> +++ b/arch/mips/mm/mmap.c
> @@ -17,6 +17,7 @@
>  #include <linux/sched/signal.h>
>  #include <linux/sched/mm.h>
>  #include <linux/sizes.h>
> +#include <linux/compat.h>
>  
>  unsigned long shm_align_mask = PAGE_SIZE - 1;	/* Sane caches */
>  EXPORT_SYMBOL(shm_align_mask);
> @@ -191,7 +192,7 @@ static inline unsigned long brk_rnd(void)
>  
>  	rnd = rnd << PAGE_SHIFT;
>  	/* 32MB for 32bit, 1GB for 64bit */
> -	if (TASK_IS_32BIT_ADDR)
> +	if (!IS_ENABLED(CONFIG_64BIT) || is_compat_task())
>  		rnd = rnd & SZ_32M;
>  	else
>  		rnd = rnd & SZ_1G;
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
