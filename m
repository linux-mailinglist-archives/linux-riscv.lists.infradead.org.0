Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0351A651E
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 12:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bgrG8Rz4fsNQffOWSldyXCj4ATmulmgHR2HIG47QRZI=; b=H/bdk8CYsKEzgprAo6nmEldbj
	Qxan9vZATGgTFhYxvzVlt+wkWNnRPD/3tofC30OgH+7QiSY9ZjgQU2RawxEh1ZsgiWyr5cV9oRu/a
	OPalh57xXNSFQkL4pGKZ0EF2V20Ljw1Cwyx+OBW2v053kPQRPmLpsqp4BjPoz0tRj0hPNmx4ERWQK
	v0AXoCy4Gzgi1juf+GT0OAkwFcY45cds+hzJ6tD8dUdR4i/9mFrXOabliYunHtewIUy14/muNz6lx
	YC7CvnxbMHN1qJSSZyyou927ymk6eEw8aBU1qfRZnSzDeOhXExc8ok9/AuuRpkjNl3XaUtz4G39pa
	tXiR8o7MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNwDd-0007a4-KD; Mon, 13 Apr 2020 10:21:33 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNwDa-0007Za-QZ
 for linux-riscv@lists.infradead.org; Mon, 13 Apr 2020 10:21:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id h2so8875367wmb.4
 for <linux-riscv@lists.infradead.org>; Mon, 13 Apr 2020 03:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bgrG8Rz4fsNQffOWSldyXCj4ATmulmgHR2HIG47QRZI=;
 b=Zu3fymzEG6ffBnOfA4OlRI0wvOeSXIKq7LhnMLYwwKyS0Ydrx2N5baWqGWX07OdqL9
 za3Sanfn8HhqNSKlU8/7J6wezDbIuhTwwPJyBaG1qx/Q/zbnAbq/xSPtH2a8zqmu9sP1
 2RBMsJ2BdsD/Vw2DxOMxVv/EYlSsKFDTho2bMTvDsScw7JWBHvWJKwxlqGasWqngKDzp
 Bz6Z9yvrBzWSfANbmgk8+B9DJZSc4hFH5OyeKMQfMh2q5wyqgy5TulDPUV+a3bvKHYFj
 1jMhvpg/1UcN7AuDSEZJ4j13ThKYsbvImidnFedZB7E0vtzdkQ3Oj5wWwTn1EaujJGai
 R6ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bgrG8Rz4fsNQffOWSldyXCj4ATmulmgHR2HIG47QRZI=;
 b=MFlTFMqSwYa/fIwAGg2O8ilBoNI9B2nVTR1cIpGz8M+rPQCO6CtjhTJ9/T6f9OJpWW
 Crjp9A1iq+OgKR97ag3angNalVUB9jDHPAo6zDaSz/IVPFAfsfem2Wxi2jLJABdIrbys
 UI9gGkGsTnou3MGC0QigyRTTMJ6BmrmdsH0NtpBrcFEm+oJggXuF9b0y22tSsjfOsVpJ
 bI/vdQuqGV414FJGrRGg+K7NunR2jjgyhfAZu3jk+VVBnpJKhUaYijZayLFpDc7qkaNi
 AZL+2yR8isrvWQtUiCijqc49XfGwzRLgoRterfMgHJSqTiHO2XafX4Afw+bh6sH/DOib
 0tXw==
X-Gm-Message-State: AGi0PuYYf2lRti7Bp5xeQSXtwu8fuSQO34lYN9o/1CPpWM4RbMi2KKkA
 IItKYBkQUbnQFhxToq2RICTHnf54bhcxOHhZvt4KdkJW
X-Google-Smtp-Source: APiQypIcUKoroazeCYaf3HYPRLFCiTAQiX8iA/GebsWWZZgWi+E+U5qm4ZSXUR7fcNzy9E4Jc2jC/NZNIUGE7ldWz7U=
X-Received: by 2002:a1c:9d0d:: with SMTP id g13mr14002765wme.102.1586773288714; 
 Mon, 13 Apr 2020 03:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200413090449.36777-1-damien.lemoal@wdc.com>
In-Reply-To: <20200413090449.36777-1-damien.lemoal@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 13 Apr 2020 15:51:16 +0530
Message-ID: <CAAhSdy3o69RfVDu1XwNWMnpk6twLe7TM_UTT4OHAar70VtR4tg@mail.gmail.com>
Subject: Re: [PATCH] riscv: select ARCH_HAS_STRICT_KERNEL_RWX only if MMU
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_032130_930031_A3352258 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 2:35 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> ARCH_HAS_STRICT_KERNEL_RWX is not useful for NO-MMU systems.
> Furthermore, has this option leads to very large boot image files on
> 64bits architectures, do not enable this option to allow supporting
> no-mmu platforms such as the Kendryte K210 SoC based boards.
>
> Fixes: 00cb41d5ad31 ("riscv: add alignment for text, rodata and data sections")
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a197258595ef..47691a9e3fd0 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -60,7 +60,7 @@ config RISCV
>         select ARCH_HAS_GIGANTIC_PAGE
>         select ARCH_HAS_SET_DIRECT_MAP
>         select ARCH_HAS_SET_MEMORY
> -       select ARCH_HAS_STRICT_KERNEL_RWX
> +       select ARCH_HAS_STRICT_KERNEL_RWX if MMU
>         select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>         select SPARSEMEM_STATIC if 32BIT
>         select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> --
> 2.25.2
>
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

