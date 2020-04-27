Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E111B9900
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 09:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eyWzZnW1G9YgvbOb4A45elJWOnYyaLIsm09HE/vkfPY=; b=Bmk34uZxAEZmWsUX80LhZajYo
	1L92qFAByzwVPfclXxPECUwIR5g7ztAFCD3nsHpYotdnY4DFakeIwlP6inwKrt+HTTDlhpK9NJsxu
	uV41nUzkiJ/RAfNQ/ntLFBGc+GkEI6fVeh2AX+4Av3p9ZWyTmGmchOQ28HKe9X2xt/kDckNrEuLCm
	BFEjCS1AL/zy4mtF7TvEJwWJ0uT0di3RJzmKIAP79/Z8hOX7Z4qjzW+C1FkUx22rgvdP2eYMvLkxk
	0qstZzuFh6FhplL2NL0DMt+nkOEbcwBylMves3atxtFRfWBTTTQAJHM/8fC++SypdZS4VsOePY4Z0
	XRIeXvcxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyWV-0004LW-PH; Mon, 27 Apr 2020 07:49:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyW2-0003zq-Eh; Mon, 27 Apr 2020 07:49:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EC0B20728;
 Mon, 27 Apr 2020 07:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587973761;
 bh=gUEF4e+I+5LtkJ+KR7VccemOQ0DrTjrOVZmMSY/BJKo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tM0MCyqEbiKAHZFfSbvrulUKGmf63KAanMfop+yxY/F6lhWkM0zaQHm6rQTTcpbFO
 HOLa2VqGqzrsyLsi9beTUDK/YUbfTbFXhIaq0lXicUQ2nltnRNrmYVf2nEyZ5hYtxm
 L4qNVWY1RZq3IAt1JnQvY/wDdHSjRRAJ1cpgYvGY=
Date: Mon, 27 Apr 2020 08:49:16 +0100
From: Will Deacon <will@kernel.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 1/4] mm: add DEBUG_WX support
Message-ID: <20200427074915.GA11787@willie-the-truck>
References: <cover.1587455584.git.zong.li@sifive.com>
 <23980cd0f0e5d79e24a92169116407c75bcc650d.1587455584.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <23980cd0f0e5d79e24a92169116407c75bcc650d.1587455584.git.zong.li@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_004930_770812_2100EB41 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tglx@linutronix.de, catalin.marinas@arm.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, mingo@redhat.com,
 palmer@dabbelt.com, paul.walmsley@sifive.com, bp@alien8.de,
 akpm@linux-foundation.org, hpa@zytor.com, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 04:17:12PM +0800, Zong Li wrote:
> Some architectures support DEBUG_WX function, it's verbatim from each
> others. Extract to mm/Kconfig.debug for shared use.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> Suggested-by: Palmer Dabbelt <palmer@dabbelt.com>
> ---
>  mm/Kconfig.debug | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
> index 0271b22e063f..077458ad968d 100644
> --- a/mm/Kconfig.debug
> +++ b/mm/Kconfig.debug
> @@ -118,6 +118,39 @@ config DEBUG_RODATA_TEST
>      ---help---
>        This option enables a testcase for the setting rodata read-only.
>  
> +config ARCH_HAS_DEBUG_WX
> +	bool
> +
> +config DEBUG_WX
> +	bool "Warn on W+X mappings at boot"
> +	depends on ARCH_HAS_DEBUG_WX
> +	select PTDUMP_CORE
> +	help
> +	  Generate a warning if any W+X mappings are found at boot.
> +
> +	  This is useful for discovering cases where the kernel is leaving
> +	  W+X mappings after applying NX, as such mappings are a security risk.
> +	  This check also includes UXN, which should be set on all kernel
> +	  mappings.

"UXN" is the name of a bit in the arm64 page-table descriptors, so this
should be reworded now that it's in generic help text.

Will

