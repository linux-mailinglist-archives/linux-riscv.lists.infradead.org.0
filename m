Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB27179D17
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 01:58:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=u1LASJZHEVADOcgCDErgATidiR4fKstgpk4kWwW4dDc=; b=g17f90ZqVTiqTZ
	qfJy3YGZgNS815tDZMaSOdIZmUAtmRUlf8XfzyDWSYRD2/XMuS8sU2uc/i7xCUJYF1FsD44GYjt8i
	SCe+xfCWpfwdqupQOM7F5JXf2x19a/kAIvfN3yyCb4HoRueITJ+p9lEyWf/pXoJEAQ3ywwBmi2sI7
	Hs9MFUUIRVxUYKey0Cr451sd4VY5z7yPMmWlJR3HuaDlwZl0rk3ve2DMJtSHfoQpZmyFtIzyGL1Y3
	3ozEJGI8xfuZNadRkh1LMhw934CUclRWWY9N+1pPzbHAxheQwSOzhmkyInryjc3PJ0jF9krIw3agR
	uQxFJlUickaIVr90NHYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9epo-0006fg-OS; Thu, 05 Mar 2020 00:57:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9eph-0006ZN-Ao
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 00:57:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id j7so1865149plt.1
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 16:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=u1LASJZHEVADOcgCDErgATidiR4fKstgpk4kWwW4dDc=;
 b=NU7TC4THpMmt27fu9J0XRc2lkNgYkkyprlqOo+Zx0eGQ+wbNpGEHaXLxzKsgJoiBeY
 AvZbKO2rU0wTRPymd2zNp5FPtFqcx/mz8qAvmx8tO70Aw3LEXkNJSxGHWxTbEAV20bcq
 NeYR+BfL2WV5Y8QtzZb6H++oNqWCgbLdO3bQ4utNTY9pnovDuExJdkZGLif2VPnTdHXn
 brdvf+hIi6q5I6+WZtf+T4KtEKj0/+YiKzy7eOOOS0ZLvKfel4wnKNkVIUsYA1nYBv4w
 bjoJJqcel0FVm/FoUC+bqSyUsxAEEygbFYZeM0swufJ1JY0xGjOlV1iwBu1Xpi01MmSv
 Rcgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=u1LASJZHEVADOcgCDErgATidiR4fKstgpk4kWwW4dDc=;
 b=Z4xpIBpGGoaqSyT8MkzTTY1lNHfEkvDJ1q0m92AXq60xl/tdfC6+3A+owjfLbRistU
 PRHfuftNhP1Jo69eRb2rrPmIgm+f+Y2YhjKeWjoBdWE6gTzj0szTXaiaZYLcThyQxlWx
 21kNrXedSa4fnjELhDcapml2Xt/+bodQ6wp1Cx1iSwCyRiG8ByZ2RJEmdXxaQ+yR1aLZ
 8Pduq9plJmgFwGQyX+zw//HsUQChasQtpVPsix9mAWOLjxS0An9jHPzjb6qTPQm/ySKo
 UXddsseXb5rMklTEcacx0alT/t6CjRppvblHvSoCa1U+TErYiqDGl2WetcFrqOBvZ1G0
 5Psw==
X-Gm-Message-State: ANhLgQ3Wjge6fkVJsBqL+3URoZINolN8WSAdUi0aj0gvX3JT5wb17t1D
 MwjM6mg/YSwt6ep9C9puvf21BQ==
X-Google-Smtp-Source: ADFU+vverMZoqPuEecOMVFwavY2c+li6RNYIA+/Iy1kyOle4EI+6N0/Ipmcoo8ibuRSPUPD2jyUjLQ==
X-Received: by 2002:a17:902:7796:: with SMTP id
 o22mr5305888pll.315.1583369867017; 
 Wed, 04 Mar 2020 16:57:47 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id v123sm2738273pfb.85.2020.03.04.16.57.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 16:57:45 -0800 (PST)
Date: Wed, 04 Mar 2020 16:57:45 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 16:34:28 PST (-0800)
Subject: Re: [PATCH 3/8] riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
In-Reply-To: <20200217083223.2011-4-zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-d2350cb4-e02f-4ee4-b093-6020e7a3d1bb@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_165749_406107_535AFD5F 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

On Mon, 17 Feb 2020 00:32:18 PST (-0800), zong.li@sifive.com wrote:
> ARCH_SUPPORTS_DEBUG_PAGEALLOC provides a hook to map and unmap
> pages for debugging purposes. Implement the __kernel_map_pages
> functions to fill the poison pattern.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/Kconfig       |  3 +++
>  arch/riscv/mm/pageattr.c | 13 +++++++++++++
>  2 files changed, 16 insertions(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 07bf1a7c0dd2..f524d7e60648 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -132,6 +132,9 @@ config ARCH_SELECT_MEMORY_MODEL
>  config ARCH_WANT_GENERAL_HUGETLB
>  	def_bool y
>
> +config ARCH_SUPPORTS_DEBUG_PAGEALLOC
> +	def_bool y
> +
>  config SYS_SUPPORTS_HUGETLBFS
>  	def_bool y
>
> diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
> index 7be6cd67e2ef..728759eb530a 100644
> --- a/arch/riscv/mm/pageattr.c
> +++ b/arch/riscv/mm/pageattr.c
> @@ -172,3 +172,16 @@ int set_direct_map_default_noflush(struct page *page)
>
>  	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
>  }
> +
> +void __kernel_map_pages(struct page *page, int numpages, int enable)
> +{
> +	if (!debug_pagealloc_enabled())
> +		return;
> +
> +	if (enable)
> +		__set_memory((unsigned long)page_address(page), numpages,
> +			     __pgprot(_PAGE_PRESENT), __pgprot(0));
> +	else
> +		__set_memory((unsigned long)page_address(page), numpages,
> +			     __pgprot(0), __pgprot(_PAGE_PRESENT));
> +}

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

