Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D031C490E
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 23:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=EdZdlZNflgEZuDBLupryvx+8jcoI+U1PIWI51RNRzB4=; b=LQTC+iHzahp4CQ
	g0j1DsDqYR++meBPbgCz+MtYFayUMCbChN2jJOlC+ifDRsR6LU1Vv9yx+T59ZRxH/44+jyzYR+iGg
	reJ/IQCuKydEcYxb1xEE0m8FTKHZZbhh8NIEGbWDlRo0hNwWhThDh0MQl5otq6kvG1Tc4snJVOs3o
	Bf7uKdR2wdnB4DiCnjBqx2Md6H3dyTovnqHrVNN6U1Wh4gqqu5/C2eSK8jSipWBgfs1ZBRjbfwlOj
	FEFLT2clCf8yeDmHETrW2nQVk7rMuk7M796AAxR+MMxR/RxPeCoXbQYHBkC2gTlZen4Bcx/FXqM1u
	+gDoKtHXTRaWrMhKyYNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVido-0003Ts-IR; Mon, 04 May 2020 21:28:44 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVidl-0003TN-Nx
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 21:28:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id x2so53397pfx.7
 for <linux-riscv@lists.infradead.org>; Mon, 04 May 2020 14:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=EdZdlZNflgEZuDBLupryvx+8jcoI+U1PIWI51RNRzB4=;
 b=cuiBZMjLe3rdOWqcUeC6QpwxdMYQc41FhNbQo9UVl63M2Kjhw9lKymb8rsHbQtmLaQ
 qneddOCRlbWl7DWJP5rHDMLVvJNtPQv+oukSOm+ESVTaJdUjxfg7GHIyG2RBn89q+zql
 hQsRHRn0/OmP+ljDUjWNBJTNMguipXsVb/K7ZNuQWc4r2tT6fAky3zn23q6mNNJOxPiv
 6LCCDfDcm7alvcq6AqM46/AB/B/ryXCeSyZwQQF2EJ0s6IhGpiGRmfxsiQ3fkPXi6epE
 T35MLkIAx4hbcHagyDu+qEQChKxQFgQKt9k6Az/KghWQr93e8TvJKZtvo54G/iFagTGj
 XDWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=EdZdlZNflgEZuDBLupryvx+8jcoI+U1PIWI51RNRzB4=;
 b=AzFO0Q4Ygcmjnqh7rjui/Yqjoc+usIisNSpOWx5eKAiPEH5q9+jbT658gWP8lBdEO+
 P0D87qAG96aUg4pg+nJa53STOnGkkmjmy6vtyj6hAHfcICbSjPDn0s9qeZcdd7gYIuK1
 oqd/xsElFDrlex3ayBTYIL4xQ/xjKLSavqcDKX6ESXiM5meyMflhTKdx446KMDRsKpzS
 gJXEuoYpHRuUybIUDr9qhTisSw1Bd79bMb1v8M6nL4trT2kNBc9LUFyeBUhZ2uCL0u/O
 f8lYGD42PZiYiDo8M+kB4bGX9GdDzSS4pFICz6BttlRFZFj4Cb/MpkxklTK4LvjjTABD
 JDEA==
X-Gm-Message-State: AGi0PuZtv3aDsYGQ0ker4jBtqHO1X8j8Q9i/a/KMyw7/tZSXgBeKEujh
 Gh/dmYtHeXt6Gx7HUgsr89nqghWWSgHDXw==
X-Google-Smtp-Source: APiQypI5lAxZdqQZzSbxhb3AbpugCT7AISlGv1cMY4HIfKDfp4YuHju/Pnn6mTJbxkZ3U865Ubp5Ew==
X-Received: by 2002:a62:7656:: with SMTP id r83mr18982951pfc.71.1588627720323; 
 Mon, 04 May 2020 14:28:40 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id m7sm31146pfb.48.2020.05.04.14.28.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 14:28:39 -0700 (PDT)
Date: Mon, 04 May 2020 14:28:39 -0700 (PDT)
X-Google-Original-Date: Mon, 04 May 2020 14:24:25 PDT (-0700)
Subject: Re: [PATCH] riscv: add Linux note to vdso
In-Reply-To: <mvmpnbtrmg1.fsf@suse.de>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: schwab@suse.de
Message-ID: <mhng-6ee4bfd0-ed23-44fb-8277-66ea570d3458@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_142841_777428_7AD4DC48 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 08:13:34 PDT (-0700), schwab@suse.de wrote:
> The Linux note in the vdso allows glibc to check the running kernel
> version without having to issue the uname syscall.
>
> Signed-off-by: Andreas Schwab <schwab@suse.de>
> ---
>  arch/riscv/kernel/vdso/Makefile |  2 +-
>  arch/riscv/kernel/vdso/note.S   | 12 ++++++++++++
>  2 files changed, 13 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/kernel/vdso/note.S
>
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 33b16f4212f7..281dc58189e0 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -12,7 +12,7 @@ vdso-syms += getcpu
>  vdso-syms += flush_icache
>
>  # Files to link into the vdso
> -obj-vdso = $(patsubst %, %.o, $(vdso-syms))
> +obj-vdso = $(patsubst %, %.o, $(vdso-syms)) note.o
>
>  # Build rules
>  targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.lds vdso-dummy.o
> diff --git a/arch/riscv/kernel/vdso/note.S b/arch/riscv/kernel/vdso/note.S
> new file mode 100644
> index 000000000000..2a956c942211
> --- /dev/null
> +++ b/arch/riscv/kernel/vdso/note.S
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * This supplies .note.* sections to go into the PT_NOTE inside the vDSO text.
> + * Here we can supply some information useful to userland.
> + */
> +
> +#include <linux/elfnote.h>
> +#include <linux/version.h>
> +
> +ELFNOTE_START(Linux, 0, "a")
> +	.long LINUX_VERSION_CODE
> +ELFNOTE_END

Thanks.  I've put this on fixes.

