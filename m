Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E352175270
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:00:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=naKz7UK/e8OBlNyJGHjRTZyOpSwuAIK8IovvVS2BEFc=; b=h8yyO6C58iqb/wKwPphyqmGu0
	AB7faEu2ib8kIeml5bUctRXaANc8M+mRdhGT5R3IaGCclrphYD7rtuBVHiXHGZty5kwYIgHTPcsTY
	8QYteBTvErG53Uw2Pj9eGtErQOMRWGJRRW3WpZPpGcgGmKQxT3ae8SeCKte5cbm5xV63Y2YhVvAN6
	6bTiRWmQ9VcVR1edF5tBN2LsQE90o7cnMDrP53c+Z9/bsZSxh88QS8eH3dhvtylh850EZDEXRntIz
	Peo7MXtpKJ9dlNwMzkGhDlELRuvy6yAOrNhHNQ6vyfsIEvpJNqnYFq4UVo3VmJguqvMpYvoIQhX0u
	RLhxHFOPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cFT-0004zD-3q; Mon, 02 Mar 2020 04:00:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cFP-0004Zt-Fk
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:00:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id g83so7095588wme.1
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 20:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=naKz7UK/e8OBlNyJGHjRTZyOpSwuAIK8IovvVS2BEFc=;
 b=xJxHkDMCGavwV/U41/R9ey4EEl/FjD7qtJ5VgKkTK8EUwO3HPciY/7JDjCGgHadQdo
 a2NsbfINbR6DZirEJ+GV9PY6lztW/y3JL2DoVcpms+ZYy4ywfk0lpNquyRJVpzbNNwqQ
 aqIEEuI8RCLWRALU+xO40EX8q9QLV6dnFZLbYOX6BlBY6qAguYY/F4hsNfucK/nXNKUt
 RhykmAdJu0pIqMJodaD+8oubg03b5GBheLvaG3iYoJ3BumX9+qG9xbXcfp/Fx7mzZly4
 N/SSwbj5lIxOth16lLdLHCvvGCodCzS+pOmZ8ZOhuF2FOtrWTiIo/x/S+IY+7sI/uK49
 zWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=naKz7UK/e8OBlNyJGHjRTZyOpSwuAIK8IovvVS2BEFc=;
 b=OB53WwcgSXfD2dRY0U4HRWdAcykb0CO2D2R10DTkhFhi4rP8duizmc1J/VmgiKmNs0
 58mTHdmWV+RqaR2bPcSKn1VSajx+i1xH4y+8bVlQ8WLi1PGd3bw2AN2PtelKlzF/MVdN
 ILsYCvv6kGDWNzA1wYfUeoPZdlVLyjvqLitNZlY17+t9Av2Y80iBqMU+l2MylDdTbn7o
 A86mYdn4W76pSvfdDGYIVgn8QSj2JoP6Zv1rW4hFelUVRKLo6K6qmuu84WcmK8GF2PrI
 P1YTsTh/vdr1pnB/iqJco3o7FSUGsFDpJc7IoDz3N9r18wOX6/OF/dxt3TUxiZ8fU+PZ
 C3kQ==
X-Gm-Message-State: APjAAAXI393lFJo+sd8+B/1KgEfeJSZoPvuSsiycXKC0pnoJuK0JfneS
 uTcQ2WTbiik8qCPC3guRkuPIYQGoYX6Tz+Z48UL/i+azkZfRDQ==
X-Google-Smtp-Source: APXvYqxA3VVlNeuKKmDP3ex3dms21P3CmxwaI2Ep+z9f05xsF+FVkyhSP+MH9CCMxm6bTP6+3lnB0drZKIlduTSwFTE=
X-Received: by 2002:a1c:1984:: with SMTP id 126mr17886463wmz.78.1583121602086; 
 Sun, 01 Mar 2020 20:00:02 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-8-damien.lemoal@wdc.com>
In-Reply-To: <20200212103432.660256-8-damien.lemoal@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 2 Mar 2020 09:29:50 +0530
Message-ID: <CAAhSdy0WmL-vqAWOc-e35_zKr-GXepnUq=gQb4xzLH76w=CY4A@mail.gmail.com>
Subject: Re: [PATCH 07/10] riscv: Select required drivers for Kendryte SOC
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_200003_532832_D7563E02 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:05 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> This patch selects drivers required for the Kendryte K210 SOC.
>
> Since K210 based boards do not provide a device tree, this patch
> also enables the BUILTIN_DTB option.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/Kconfig.socs | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 4d5d4a65b2a2..8d83210467d9 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -13,6 +13,10 @@ config SOC_SIFIVE
>  config SOC_KENDRYTE
>         bool "Kendryte K210 SoC"
>         depends on !MMU
> +       select BUILTIN_DTB
> +       select SERIAL_SIFIVE if TTY
> +       select SERIAL_SIFIVE_CONSOLE if TTY
> +       select SIFIVE_PLIC
>         help
>           This enables support for Kendryte K210 SoC hardware.
>
> --
> 2.24.1
>
>

