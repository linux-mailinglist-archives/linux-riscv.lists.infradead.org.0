Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A719C1EEE95
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jun 2020 02:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=MrpdpocEURe/t3y3gZl3X5wMKrRSnAGOPmZQ5g0avbc=; b=bdqNKhSTQdqbFu
	HQpZR/YytGlZRHe6pGgZfzUtyFqMtwxYUM+/GVWXpGp5bkzM71e5wvxM7CWOFcg2Er9SBUvizY3kL
	3Amci5VWBxMY4BC8qh8TgjWc8Rbjkb2v1fX8iPRRVDQWyuCBFGygcl6DpckZlQMRwvaEDh2+V5CSA
	FptZy7BcsUPAAnqNHgH/VbAq4B6xlgGJfWK7kLPFOeFh1oDF+7SR76lK7GCCYn4Nhz/s+zRuNTHYo
	WFuOEb/wLdibB3NuvL3kKHJEdp7GKunPQbqAWeimrBxTjUdCh9wdNde0NdXBQ4fS7A5PU5K56gblZ
	YDX9w98mi5VTRs8B5u/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgznw-0006h6-0r; Fri, 05 Jun 2020 00:01:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgznr-0006ft-Ii
 for linux-riscv@lists.infradead.org; Fri, 05 Jun 2020 00:01:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id e9so4234435pgo.9
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 17:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=MrpdpocEURe/t3y3gZl3X5wMKrRSnAGOPmZQ5g0avbc=;
 b=juQe+upOZBcu5uYuurfczE1LF3Zyt3bYitv3q9E6S0ccXNZFkB3wZ53YoGbnveWA2Q
 ZwafILlf1ALSg5fDfckDiyifJigjOBUeywvfrSpgvGROo1jnfQvF/sN4untmlIHaVEp5
 XTuq7L2sXQFa3XQtUrTuaWCM+MC6mVfGac0aozm835quSPepv60kDarekyfGHTBg8GCq
 QDCre/K65kmMao7IFxaoqSKXUJsT4ddDi32PH7B1q/sn1UmJll+/5QKv3cycvpQJ7pGM
 yb2KGogoy+eoEfskAlTPlRqoHpgEAPIlADsGFLudYN0sEC+Sl9KjMScpgxvGsF848uix
 qdKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=MrpdpocEURe/t3y3gZl3X5wMKrRSnAGOPmZQ5g0avbc=;
 b=KzccLkpBa2OpFC9AG2NQ6hF/aTL2y/BIHWaNA7IQzn/YjWSt2NDmUoBNxZjUwnMjR0
 maYv0PB6WZ4v7yCG+siUsYtyUHwAGuoc9jzNx2BpoF6KVCgjxu86iUc3Ad2jcXzLILba
 REggC2f5K1hUhBIO0I3kj9QY8QWKmGB2LtSAGTLvo+fGHuXU/dYvQnuu+jXsB4H0NHTj
 nZVxv88A6RG0yZoWoAWCE18FCnnSfHZa+fSrnyStUURTz1mzSfSxugkAr2YSdubV6Mue
 5bhdv1lnoag75KXxBW2RxRz6h1yNTRIZA+7idKVcizKo02PJ75leD+93I5+TamJdRj07
 oyfg==
X-Gm-Message-State: AOAM530XXbl7NRoXCpU7benLj2SjtkVj0gnfWMbX7f7knMv3eXQ1AD+K
 +quyJISrj/vatrbuMYS9YgyXB98iVG9neA==
X-Google-Smtp-Source: ABdhPJy4hOSc4BH6wa0zaDSNuSgjQdv97BrlAnQP9eXDo87HxRJw5B1jx9UEYZzVsfw42ghgXTuz/Q==
X-Received: by 2002:a62:84d0:: with SMTP id k199mr7145258pfd.156.1591315302557; 
 Thu, 04 Jun 2020 17:01:42 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id y10sm5000928pgi.54.2020.06.04.17.01.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 17:01:41 -0700 (PDT)
Date: Thu, 04 Jun 2020 17:01:41 -0700 (PDT)
X-Google-Original-Date: Thu, 04 Jun 2020 15:26:59 PDT (-0700)
Subject: Re: [PATCH] riscv: fix build warning of missing prototypes
In-Reply-To: <7acb6dcf9975bbf3aff4be3b01320fd1b5ba30c1.1590983619.git.zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-44445efa-712b-441e-a8f2-9821f4e89b3b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_170143_681681_2DD82747 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lkp@intel.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, zong.li@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 31 May 2020 20:55:32 PDT (-0700), zong.li@sifive.com wrote:
> Add the missing header in file, it was losed in original implementation.
>
> The warning message as follows:
>  - no previous prototype for 'patch_text_nosync' [-Wmissing-prototypes]
>  - no previous prototype for 'patch_text' [-Wmissing-prototypes]
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> ---
>  arch/riscv/kernel/patch.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
> index 5805791cd5b5..d4a64dfed342 100644
> --- a/arch/riscv/kernel/patch.c
> +++ b/arch/riscv/kernel/patch.c
> @@ -11,6 +11,7 @@
>  #include <asm/kprobes.h>
>  #include <asm/cacheflush.h>
>  #include <asm/fixmap.h>
> +#include <asm/patch.h>
>
>  struct patch_insn {
>  	void *addr;

Thanks, this one is queued up -- for-next is in flux right now, but with any
luck it'll get sorted out soon.

