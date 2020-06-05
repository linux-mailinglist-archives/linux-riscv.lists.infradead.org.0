Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2D01EF3A5
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jun 2020 11:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RDj9WPcNLZafw1WmCK+2jcLNB/38A0yqskAegYjl94o=; b=ZqrKX1CNN3foF/74/bgU3Xzf7
	jpYCwPTM0UIDjLNWff/RJ21Yd/RQsvYkxOQie9jGgW9YcCCOk3zXSM/55qZ9xGHVz5Y6+pRo3pO0e
	UvvAo1apfg8rYYz5q/NetGy/X71v3hSPUZvdSicVednn77HDtS/EMX3ydTWK+OVc2fj033Z1cGyy4
	NYjchb3jY7eY3Tg12It6gFQ9VsMEz4ZWqtFWkceUsRLOd957hh/CpW+oneM8K9sLd8wY+M/StArih
	S8EgkWKkSBylTChuWrTZqN86I2BpEakOni4XJU8DG3O2ZELEIxJJ2AnGOAS+N3UhmYSTcHpJM5xYS
	6LEyKIrPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8GD-00077p-Gs; Fri, 05 Jun 2020 09:03:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8GA-00077L-KS
 for linux-riscv@lists.infradead.org; Fri, 05 Jun 2020 09:03:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id j10so8914784wrw.8
 for <linux-riscv@lists.infradead.org>; Fri, 05 Jun 2020 02:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RDj9WPcNLZafw1WmCK+2jcLNB/38A0yqskAegYjl94o=;
 b=L791aE3WH7eHH5Ud9SodquObe0Rf3VNwry6R6ETImhgYqgaFcDTrVTaqAEszODVG9U
 V7KiznfSLrsgB6/r4vIL0iH+FjvDrRi54/aOm+r1kQWavmu2cxx47l22jhyunt/N2DCE
 +Nkon3Htr7qa4Q+6JAed2WDZ9xZ/Mtp992K0CXGJpv3caso3RaL8JETxQa1IBYoZYpYM
 +fU53HMrFbdI9GpnQAde6XrsxiB+AvUbHE+XRi9us/wJew26IRsIr9BfVfRnk5ZFJHwn
 N9qbSfdDGvfYbfdmM8l7BxZL5iQ6ILtch2SDdf2hGG44aInhPFOfoQsZ7F5gHVDfmDjk
 VFaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RDj9WPcNLZafw1WmCK+2jcLNB/38A0yqskAegYjl94o=;
 b=OIRvU7JNNpqjlGkO3eOyc5bUxhESBD0uGWFSPCiJgkBUxlLOLmlISNcWLumxkX6am4
 apzwdty2OnbaUO6EDIoPQdiPKfgKaPNJKxDnmn6Oc5YecFtFuSmKXBfDbH9YK/2xzMh4
 YUz6Rd1PfHNNBnWac+L3uVPurvU+yFlbLqdB4zumwgQq+/uISUTZOBA9sY8aRZhFYidh
 lGKM/yFRc6Z1B7ugTSpKsFuRjF0RWlf0t29yxQYfz+z7h/WnKbMO50HbkbquyzJJdknN
 g6rQbPcTqtwZX5Z/IswdulMaWnBEbr1f9uzU0o/m7TW+YPk900oneKF9PlSaogOwpreZ
 r24Q==
X-Gm-Message-State: AOAM5336D9p77kVwAd6BFCkzKfsfYXrz5S5xwuOS058QXRe0wSZOqUz2
 dqSgJFz3bOjnt58aFUh5+DM7I9yokbsUPtsQtkjUTq5A
X-Google-Smtp-Source: ABdhPJzk8in9iVVH/gT2I+8ebgUy8sF8Z9mm7veJlYeOaMoj9Cnc2GY6BnNJrMm5kTSAhOZB9DkhbShDr3iNesnkVqM=
X-Received: by 2002:a5d:4484:: with SMTP id j4mr8393249wrq.325.1591347807880; 
 Fri, 05 Jun 2020 02:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200605051510.51590-1-maochenxi@eswin.com>
In-Reply-To: <20200605051510.51590-1-maochenxi@eswin.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 5 Jun 2020 14:33:01 +0530
Message-ID: <CAAhSdy0qP6iNY9cDkyCZ65-DmketizjSQsuwk1wHyyQj5GKcAg@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] riscv: Select ARCH_SUPPORTS_ATOMIC_RMW by default
To: Chenxi Mao <maochenxi@eswin.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_020330_738781_97D55CD0 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 10:45 AM Chenxi Mao <maochenxi@eswin.com> wrote:
>
> Select ARCH_SUPPORTS_ATOMIC_RMW by default to enabel osqlocks.
>
> PS2: Add signed off info.
>
> Signed-off-by: Chenxi Mao <maochenxi@eswin.com>
> ---
>  arch/riscv/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a31e1a41913a..cbdc605d20d9 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -68,6 +68,7 @@ config RISCV
>         select ARCH_HAS_GCOV_PROFILE_ALL
>         select HAVE_COPY_THREAD_TLS
>         select HAVE_ARCH_KASAN if MMU && 64BIT
> +       select ARCH_SUPPORTS_ATOMIC_RMW
>
>  config ARCH_MMAP_RND_BITS_MIN
>         default 18 if 64BIT
> --
> 2.25.1
>
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

This is a good candidate for Linux-5.8. Palmer ??

Regards,
Anup

