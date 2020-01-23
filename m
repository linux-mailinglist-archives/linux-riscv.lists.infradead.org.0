Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF41E1461AD
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Jan 2020 06:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1dhaSiajlLJy3RCstW1Wok1ELZDJt5jnnFEHfck4kgA=; b=O/qoyq/JtoMmtcIl1J9b1MmbH
	T5L6i0U2ozDilm2OIyaXO4v/D0gdDdJCGqEZqX1a7Tkaf1bCWPDelHGJoRIM7hJ9AnTxhK/EvcGc2
	1Ez+rMU542VvaIrgWUkzDw+G3DEf//xYx3ENbWeeB2/nRrvXXgbxGO7+qszqVTuxBDc3JMgBIMlXT
	NICh5osy4cogmO7omuL3TjY/UCYE4mhimNQHfgP5i0FOC5t4Hhui85yrfAPCs1pwO2ACub9dl4UxJ
	CXHqlTnAxa+Zp8rfy2G1Ul7+789hEdhLOvlg8VgCatMtV+TpT2T9+CqlDKX8MZftcBkTc2/Tb7oDe
	ZdEHv7iwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuVIz-00019c-N0; Thu, 23 Jan 2020 05:45:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuVIw-000195-4k
 for linux-riscv@lists.infradead.org; Thu, 23 Jan 2020 05:45:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so1661710wrw.8
 for <linux-riscv@lists.infradead.org>; Wed, 22 Jan 2020 21:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1dhaSiajlLJy3RCstW1Wok1ELZDJt5jnnFEHfck4kgA=;
 b=srT44r3/1SbNdevUdQ9bRBy6SwEXY/02irxN+XL8wHgIDa5Gt0+V0FEwHhidbMcR6M
 BhRrTNOfiTV/bqTjedt7rzstSl75yNFgA9Xh6Z/NzoQU6gSIOFWU7+IWH5J9qKDz7kc/
 xEfLD2tLDo/XeFfbhcnXTXuW6nFgfXmYxV9uMkRe/Mf46YpGZdyyZ4B4KhlSb5qmluDi
 cIojFHALTVqjpGujeH0O/w7/d83vqIbY0/KVTu3LFvlgRy38fYGPzVyN45an5Q9b/Y8e
 OQaeKoHgWBhZZkeTOY/oj78yWUmV7UwxPw2hAFBVc/3Xy0EXKR75C7y572p5uI0cuCLc
 dWfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1dhaSiajlLJy3RCstW1Wok1ELZDJt5jnnFEHfck4kgA=;
 b=Dpzrxn7/pP8nWIJsid37s5y9//Vy4tyuzQBL5DOstQMexOktL0O5P9rQe8EpiD5jV3
 21CUbCK5DKDHOz4JK9fpegwVjFhIWC2qVlubKk98j+LyGjRDA3CLNgw4Bqxt+cL8Jc4s
 aR1xv/sc9QdkuXfLj3RREsF50vlvHbF/qbTc8eDSJNNlp6M0gXwSsIdbPpfnirPYeUbE
 qWJzfMK+R+P0trcFLTLE4zfRoNaOLGw5So7TSDVdGXOsHu4wK9fuDMUC+TQVlpBYdfPL
 0/mSqCdmZ7c46ipLMV3kcJ2zgB2YkFmuGvWN3SXp6enLwjolT2hmnzMVRSG0C8lh0htJ
 CHlg==
X-Gm-Message-State: APjAAAXLB3nPBlAdzR12uTi9pcIFyOamR5fJxdZehgtTSlKtx0Z0UPLf
 3cnSLRwbpEOghryiC+AHsqXgoBb0huBAQyi/rbgHDA==
X-Google-Smtp-Source: APXvYqzcyARxSCYh9QXhcwiwMl3YP9yKSjIhV20ejTbeIMjXgUtVd49l+y7ALLEykXf+KKxL00lLsYxavevqYQFLh/E=
X-Received: by 2002:adf:eb09:: with SMTP id s9mr15396459wrn.61.1579758320776; 
 Wed, 22 Jan 2020 21:45:20 -0800 (PST)
MIME-Version: 1.0
References: <20200116143029.31441-1-guoren@kernel.org>
 <20200116143029.31441-3-guoren@kernel.org>
In-Reply-To: <20200116143029.31441-3-guoren@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 23 Jan 2020 11:15:09 +0530
Message-ID: <CAAhSdy0LPZC-nMRWpovTdLd-b421WK6UAdLJzdQ2RfnxEqRo0Q@mail.gmail.com>
Subject: Re: [PATCH V2 3/4] riscv: Extending cpufeature.c to detect V-extension
To: Guo Ren <guoren@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_214522_186418_8F71837C 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Guo Ren <ren_guo@c-sky.com>, Arnd Bergmann <arnd@arndb.de>,
 Atish Patra <atish.patra@wdc.com>, Andreas Schwab <schwab@linux-m68k.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 8:01 PM <guoren@kernel.org> wrote:
>
> From: Guo Ren <ren_guo@c-sky.com>
>
> Current cpufeature.c doesn't support detecting V-extension, because
> "rv64" also contain a 'v' letter and we need to skip it.
>
> Signed-off-by: Guo Ren <ren_guo@c-sky.com>
> Cc: Anup Patel <Anup.Patel@wdc.com>
> ---
>  arch/riscv/include/uapi/asm/hwcap.h | 1 +
>  arch/riscv/kernel/cpufeature.c      | 4 +++-
>  2 files changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/uapi/asm/hwcap.h b/arch/riscv/include/uapi/asm/hwcap.h
> index dee98ee28318..a913e9a38819 100644
> --- a/arch/riscv/include/uapi/asm/hwcap.h
> +++ b/arch/riscv/include/uapi/asm/hwcap.h
> @@ -21,5 +21,6 @@
>  #define COMPAT_HWCAP_ISA_F     (1 << ('F' - 'A'))
>  #define COMPAT_HWCAP_ISA_D     (1 << ('D' - 'A'))
>  #define COMPAT_HWCAP_ISA_C     (1 << ('C' - 'A'))
> +#define COMPAT_HWCAP_ISA_V     (1 << ('V' - 'A'))
>
>  #endif /* _UAPI_ASM_RISCV_HWCAP_H */
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index a5ad00043104..c8527d770c98 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -30,6 +30,7 @@ void riscv_fill_hwcap(void)
>         isa2hwcap['f'] = isa2hwcap['F'] = COMPAT_HWCAP_ISA_F;
>         isa2hwcap['d'] = isa2hwcap['D'] = COMPAT_HWCAP_ISA_D;
>         isa2hwcap['c'] = isa2hwcap['C'] = COMPAT_HWCAP_ISA_C;
> +       isa2hwcap['v'] = isa2hwcap['V'] = COMPAT_HWCAP_ISA_V;
>
>         elf_hwcap = 0;
>
> @@ -44,7 +45,8 @@ void riscv_fill_hwcap(void)
>                         continue;
>                 }
>
> -               for (i = 0; i < strlen(isa); ++i)
> +               /* Skip rv64/rv32 to support v/V:vector */
> +               for (i = 4; i < strlen(isa); ++i)
>                         this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
>
>                 /*
> --
> 2.17.0
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

