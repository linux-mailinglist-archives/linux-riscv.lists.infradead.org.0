Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D28B3133CF1
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Jan 2020 09:17:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=abwTz2beL2gLghCfDY6LQgHixzJKFXuNxR9Ws8d7RDM=; b=oQVu3rp9t3s2asGcZy6gxSE2g
	yDb/WDcl4WrDx+o2Fd0LXKiE+WDKNYn2HsqznSHBi9GfOV5YYAi8oWK3xW4XHUaLYAfGkkQbdBvek
	/N5PzfKLBKhX5/gBLTscTLkgpLfQI0vBWhk6jVFx8WBNNuUCQW1s62MoBFC+sOxwiDNYPobi0Vju/
	5UeWv6hgx/fZOfM7S2KL8iGas5+GMVYHq6+T6VMThzV06D7FAgwAwlsjC89PGCYS5qH21LpBcZcxP
	OQtT3xL5M8L0Elf0tZRPmOqqrzW1iLKKRoldtzfBpaUXvU4ycg1FzFCA0RBFj+6DKErrOpnWxBMlw
	OojnpahEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6X4-0002O9-Aq; Wed, 08 Jan 2020 08:17:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6X0-0002MY-3F
 for linux-riscv@lists.infradead.org; Wed, 08 Jan 2020 08:17:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id b6so2393167wrq.0
 for <linux-riscv@lists.infradead.org>; Wed, 08 Jan 2020 00:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=abwTz2beL2gLghCfDY6LQgHixzJKFXuNxR9Ws8d7RDM=;
 b=aI0ASofZ8Mua6VCbXQHpsVOKk4LmrksJUB9HHWJ4R//7YVTf+AUhqMkWJH0W9VehP8
 hO4J7xnWfhFJ3/BjgARnjAydkUNLG6miKqZXznSTmYG7NbXK/nCVrNLCgMgMDgwZW17h
 //+Qlu+yDH80bAB+zotUnImUeyCrF9shYMSmq5TxYR+EcUA9NiQwKAyiiJ3qw9kw6LAY
 gdy7z21xh2Qa9I2UJPvmYXXDxdKMod6+yjf1nzPgX1eWzeSCDQhhxqEnQovgazaNQfCM
 qQBVz3rFWrQyGcD678n9tQ0zwItTkphu7bT8QJNWvgAOvheUlsYrjQA5omq0vUDdpVS1
 gUXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=abwTz2beL2gLghCfDY6LQgHixzJKFXuNxR9Ws8d7RDM=;
 b=o4BD4Ih2fm01J5jfcAJ1R2g0PCUxh3u5QszLp1YSBx62DXi8QanQkttwFPv75+riRP
 ysee+f7fmRhnS8JcqQJXKcxbTmbTWnh5/IER3nLYE8egXjFhVKGiMPuyNl8SEH2SN4A7
 IsI1pNZ0PhUyrBJm1sZlaBbyYBN1f5Jqm9lNfB345QHIeMJw4QkCrBQ1F3g11bFYcoB6
 di3N9H3F8zCQtQSbD7nfc3/96PzxW/0F3yOmIX5sVXofy3HkVBS25nq1dbnZRGJNmK0x
 V3UXTbwSXe+T7NhCCELKuzUFzplRVHR+uhtvLQNz0G7owjFnBC2Xt2DOR+NUBtf388Om
 5pDQ==
X-Gm-Message-State: APjAAAXGpmyddET0HWY8q7kM9ELvXgQnoOL+useGnVK0rCOJ2rvd1Af/
 PDEntwqmk07Vrhz5AWfMyY6KqGDRaxkcCFCvfD2vzg==
X-Google-Smtp-Source: APXvYqz5y0daA1TT4hH3Zv+jz1/iOuMW0TLllfiMXuVE3LIZXrDCM1nG4BRrP8A84+6/wpPPnvOZ98XBmvbco7MQBPg=
X-Received: by 2002:adf:d850:: with SMTP id k16mr2893460wrl.96.1578471450572; 
 Wed, 08 Jan 2020 00:17:30 -0800 (PST)
MIME-Version: 1.0
References: <1578463746-25279-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1578463746-25279-1-git-send-email-yash.shah@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 8 Jan 2020 13:47:19 +0530
Message-ID: <CAAhSdy2UAAQrzD4mgbAu1p022YLLLhUX2dJjYomyiTifoE0mBg@mail.gmail.com>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.h to include/soc
To: Yash Shah <yash.shah@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_001734_278200_CA2BDF1E 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, James Morse <james.morse@arm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 rrichter@marvell.com, tony.luck@intel.com, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, mchehab@kernel.org,
 linux-edac@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 11:39 AM Yash Shah <yash.shah@sifive.com> wrote:
>
> The commit 9209fb51896f ("riscv: move sifive_l2_cache.c to drivers/soc")
> moves the sifive L2 cache driver to driver/soc. It did not move the
> header file along with the driver. Therefore this patch moves the header
> file to driver/soc
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/include/asm/sifive_l2_cache.h | 16 ----------------
>  drivers/edac/sifive_edac.c               |  2 +-
>  drivers/soc/sifive/sifive_l2_cache.c     |  2 +-
>  include/soc/sifive/sifive_l2_cache.h     | 16 ++++++++++++++++
>  4 files changed, 18 insertions(+), 18 deletions(-)
>  delete mode 100644 arch/riscv/include/asm/sifive_l2_cache.h
>  create mode 100644 include/soc/sifive/sifive_l2_cache.h
>
> diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/arch/riscv/include/asm/sifive_l2_cache.h
> deleted file mode 100644
> index 04f6748..0000000
> --- a/arch/riscv/include/asm/sifive_l2_cache.h
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * SiFive L2 Cache Controller header file
> - *
> - */
> -
> -#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
> -#define _ASM_RISCV_SIFIVE_L2_CACHE_H
> -
> -extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
> -extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
> -
> -#define SIFIVE_L2_ERR_TYPE_CE 0
> -#define SIFIVE_L2_ERR_TYPE_UE 1
> -
> -#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
> diff --git a/drivers/edac/sifive_edac.c b/drivers/edac/sifive_edac.c
> index 413cdb4..c0cc72a 100644
> --- a/drivers/edac/sifive_edac.c
> +++ b/drivers/edac/sifive_edac.c
> @@ -10,7 +10,7 @@
>  #include <linux/edac.h>
>  #include <linux/platform_device.h>
>  #include "edac_module.h"
> -#include <asm/sifive_l2_cache.h>
> +#include <soc/sifive/sifive_l2_cache.h>
>
>  #define DRVNAME "sifive_edac"
>
> diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
> index a9ffff3..a506939 100644
> --- a/drivers/soc/sifive/sifive_l2_cache.c
> +++ b/drivers/soc/sifive/sifive_l2_cache.c
> @@ -9,7 +9,7 @@
>  #include <linux/interrupt.h>
>  #include <linux/of_irq.h>
>  #include <linux/of_address.h>
> -#include <asm/sifive_l2_cache.h>
> +#include <soc/sifive/sifive_l2_cache.h>
>
>  #define SIFIVE_L2_DIRECCFIX_LOW 0x100
>  #define SIFIVE_L2_DIRECCFIX_HIGH 0x104
> diff --git a/include/soc/sifive/sifive_l2_cache.h b/include/soc/sifive/sifive_l2_cache.h
> new file mode 100644
> index 0000000..04f6748
> --- /dev/null
> +++ b/include/soc/sifive/sifive_l2_cache.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * SiFive L2 Cache Controller header file
> + *
> + */
> +
> +#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
> +#define _ASM_RISCV_SIFIVE_L2_CACHE_H
> +
> +extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
> +extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
> +
> +#define SIFIVE_L2_ERR_TYPE_CE 0
> +#define SIFIVE_L2_ERR_TYPE_UE 1
> +
> +#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
> --
> 2.7.4
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

