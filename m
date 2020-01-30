Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BAD14E01A
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Jan 2020 18:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjSjgSgyTuvEGGpGcPzOuN43I5rGzkVNCSsBJ7pjoBk=; b=IdFKl42+pNSvtN
	HqSwiRWI0Bjz/HiNJZQIrtCdb98pE6hzn8zZJgX59cPxBHGShTUxHE6YlkiNZk3KRfGPaUdW0ivRP
	WdBU3FK0jWgf9+WJtEICphoaO06DdkiahetZeI1WWjedHzvUnwLmyCkGW7OScyK4IiLLhVqkt+Eob
	ndef3CrkMcO143+zmcvKg/YdpWD6iyclCcLVam8lu+pT1Wq4+DdhamPXHQ/j2zxSb4xWlfhGnLZrm
	hgDIUUuLsRcyXRMVLSsAXQJpMnLO8HXyE2TRuJ8l+GTNeiEpQjrKriwMk0cYlGuE2E4RUniUgG0Dd
	IOs1GKtFidJ9/zRnYZpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDoH-00089C-TJ; Thu, 30 Jan 2020 17:40:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDoE-00088o-4D
 for linux-riscv@lists.infradead.org; Thu, 30 Jan 2020 17:40:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id z7so5090064wrl.13
 for <linux-riscv@lists.infradead.org>; Thu, 30 Jan 2020 09:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=sjSjgSgyTuvEGGpGcPzOuN43I5rGzkVNCSsBJ7pjoBk=;
 b=aFEgL1GeQFgxI2GOdOIYGasbJZ+aAJDZeFJF8GdYgdQlJra16qDC0lbJ5XngfCwcby
 yyGFa5z+2fWNz7oebHjghlXQc7HBnBh/XSobupARvdfuzntNc3QtYg/Efx13CGP4YN9A
 +YKjfVlAho6jZM81z9BptEs1U8iz7NccZvejXU1JQyo1ebqc4A1xbz+yMsBiDRZJSHif
 vkVclm1Hvq1kwX5LLcVJ2nI5HW+mCYtjmboWQNBnvnBGP5sGGhv1nNX58jBGEHhQoihv
 VxuiERz6Etf4cCO8bSJGmdAo+lcT6BoNlSU5u+Y00DBA+zZ8Gqzttj7gpPgenv9unfRN
 Ihlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=sjSjgSgyTuvEGGpGcPzOuN43I5rGzkVNCSsBJ7pjoBk=;
 b=czpjBvYcWcco1HkpUNo91tKOQfM1Agj5U1C1nrxgQ2mCljB0U1CaCh8V8B2XTB5woF
 9NsJ5KTz9h2fTmkQmJqs6kXHccu0yQjMY8fSLktdEHF6dkoteIHD8lNAtXrpDqrVgh4T
 iFekgekSDqRMG/wL4oNwO/C06k84JD7ekdyiYYyMecfa78oUeap4julYK/OTRTQJ3/EA
 u2YPl3xr/XqaVfOlLKel+GUs9WPGZdLPcAyxiOSW43ve/MB0DURPZc1mSKTRVtRLGYLu
 pA770o8bJHrJvYiVTgfod/vu6AL7ZWkZdV8eAZ38ams0uzKWDrxNFKgOHM1jOJRGghGW
 tPTQ==
X-Gm-Message-State: APjAAAWkSFBc12ODD3MlEflAPA0OpB+vwmXJhInORCdaNXtH8c1CnlFL
 /39vJsFUBGZxV9KTwHLf6KsI9bxkBLA=
X-Google-Smtp-Source: APXvYqwcuu7W4dXgdugwyB3ewpuGVbCs/ylVmGHTA820ZR8jxpC05U2oaVk2DPBJt+IWjaMyIUgdfA==
X-Received: by 2002:a5d:620b:: with SMTP id y11mr6709330wru.230.1580406052028; 
 Thu, 30 Jan 2020 09:40:52 -0800 (PST)
Received: from localhost ([2a00:79e0:d:11:1da2:3fd4:a302:4fff])
 by smtp.gmail.com with ESMTPSA id a1sm8143501wrr.80.2020.01.30.09.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 09:40:51 -0800 (PST)
Date: Thu, 30 Jan 2020 09:40:51 -0800 (PST)
X-Google-Original-Date: Thu, 30 Jan 2020 17:40:46 GMT (+0000)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] riscv: Use flush_icache_mm for flush_icache_user_range
To: guoren@linux.alibaba.com
In-Reply-To: <20200124161810.24322-1-guoren@linux.alibaba.com>
References: <20200124161810.24322-1-guoren@linux.alibaba.com>
Message-ID: <mhng-19381e7d-faca-4e0d-87e6-29d43d7796e0@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_094054_189602_F540A125 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org, guoren@linux.alibaba.com,
 Andrew Waterman <andrew@sifive.com>, palmer@sifive.com,
 linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 24 Jan 2020 16:18:10 GMT (+0000), guoren@linux.alibaba.com wrote:
> The only call path is:
>
> __access_remote_vm -> copy_to_user_page -> flush_icache_user_range
>
> Seems it's ok to use flush_icache_mm instead of flush_icache_all and
> it could reduce flush_icache_all called on other harts.
>
> I think the patch is the fixup for the commit 08f051eda33b.
>
> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> Cc: Andrew Waterman <andrew@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> ---
>  arch/riscv/include/asm/cacheflush.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
> index b69aecbb36d3..26589623fd57 100644
> --- a/arch/riscv/include/asm/cacheflush.h
> +++ b/arch/riscv/include/asm/cacheflush.h
> @@ -85,7 +85,7 @@ static inline void flush_dcache_page(struct page *page)
>   * so instead we just flush the whole thing.
>   */
>  #define flush_icache_range(start, end) flush_icache_all()
> -#define flush_icache_user_range(vma, pg, addr, len) flush_icache_all()
> +#define flush_icache_user_range(vma, pg, addr, len) flush_icache_mm(vma->vm_mm, 0)
>
>  void dma_wbinv_range(unsigned long start, unsigned long end);
>  void dma_wb_range(unsigned long start, unsigned long end);

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

I've added this to for-next with some minor modifications as
4d99abce8ce80e866020ffa5b2bd790269235f37.  It missed the PR I'm sending
now-ish, but I'll include it as part of the next one even if it's during an
early RC.

Thanks!

