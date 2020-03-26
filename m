Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830F71938A7
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 07:34:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VvC8QWnRmOzqEdjQGHBaXkBEi8rPPx/mAf1Yd60724Y=; b=KzjFPh832wmYfCd8i4hFZy2fM
	hgQSgBAuuX/5k7Unlgo+zHrCtw7CzGVd+7G9nhOx4L8NdVhkDk3tZTdZ4cJzPokTyou+dxs+dqs18
	HuHWqbkAAsI+Tu8SUUbpGN9j25DCEGee0mQJ9j8ASrzs4dVNizhwxJ99oTINANfgK1Zps7jFq+E/2
	4dtQsQin02isjjxUipbEfMjmlCbhucG+haYLcmgvGAjOvtaT80bf7Hi3eeWbTUHYvOrh3T2cXDLuA
	zx9T26+JqTG8EdMcJpKvxsINHAPM1+NyguKGgr3lEuFR1kCh8TOaDnsbiuvdeZd078uMT6A4g6YJ5
	vw5a1SBeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHM65-0002G7-He; Thu, 26 Mar 2020 06:34:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHM61-0002Fc-My
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 06:34:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id j17so6247130wru.13
 for <linux-riscv@lists.infradead.org>; Wed, 25 Mar 2020 23:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VvC8QWnRmOzqEdjQGHBaXkBEi8rPPx/mAf1Yd60724Y=;
 b=XIw3VO3hEq6zt6MobHP3j6xdFLWc2Kvz+WkoIGGpWwNupn9Ca+EHaMd4PFTAYiX3JF
 k04sBP/lyz1jna9TM5k623xovRZWs/idDiR7Vq1/XxFBL6Frwxh58SS9ZLh82gYkqK68
 22zXeAgdVzWpYw78loeATN75/nyVZiyA1BoYxagrTGxnLo5iH8VWiKlcognYINb8mKgY
 TnR2/JtNKJ9bN3uUzBkee2ZXz6XDEjFj76aQrvHP1Ikfxm0y1ZK2nHNoFBZIJSbn0Bey
 4rPOS3WPldP0qzjR6x+3fgfRXeg4rwhYo8AzdkcVZV6fXq6LySqDJiPED/YPT9OzsGfr
 y6YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VvC8QWnRmOzqEdjQGHBaXkBEi8rPPx/mAf1Yd60724Y=;
 b=Lrb96Hv4VqR4TxPAYtp8xDHOc4GRL2i5I7QvSjntQBIIP3FC1TLOjKCO61XqiXIlIM
 NlpBOQoddBK+8zY2AWYEfbv2UFxwVmIDapK9KThiQUK+I4+wlVWjni/erEu4wYSdzKJg
 X0mTmDLaI0/t/d0JUGK5PX50PLDiS2QZq61JUpSPVMOxirZ/jMv2g0v0Qm74Dm0UJSrd
 Kvk6t4dyRumwymVBLrBMtgr6ePFG/6PdNMrlaMZb3itXT3RUETDwf1591b4fPmar9OOu
 /ucNKhXLEed8yk7DZhmMIdUOljMYJU5ZxfJYVsfMePA+pq845i3xDSmCXiU95EbeVCD3
 irng==
X-Gm-Message-State: ANhLgQ3QmTGnG59Zpsc9sPAeSMcNfAwq0R/dR+44RfpQSMSAqPe3awn8
 cbYVxNGltnCEt1Fbuy21kmegzihAb62RdeTyySjRhw==
X-Google-Smtp-Source: ADFU+vsiJgPSCiiXl/cDr34/UNTviPAKRXDPbZPPuu9MODq9paMGa63OoHZu701MwEKlLAyjK8g1W7zW9+jmlKg88zI=
X-Received: by 2002:a5d:4acd:: with SMTP id y13mr7464097wrs.61.1585204467653; 
 Wed, 25 Mar 2020 23:34:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200322110028.18279-1-alex@ghiti.fr>
 <20200322110028.18279-4-alex@ghiti.fr>
In-Reply-To: <20200322110028.18279-4-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 26 Mar 2020 12:04:15 +0530
Message-ID: <CAAhSdy1cNY2OwZaPVaDFzoPsB_omfeyjUZ0O9zdAXcZPjO1b9A@mail.gmail.com>
Subject: Re: [RFC PATCH 3/7] riscv: Simplify MAXPHYSMEM config
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_233429_751278_D28360B5 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 4:33 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> Either the user specifies maximum physical memory size of 2GB or the
> user lives with the system constraint which is 128GB in 64BIT for now.

Ignore my previous comment. I see that you are setting the
PAGE_OFFSET to 0xffffc00000000000 in the next PATCH.

The commit description is can bit improved as follows:

Either the user specifies maximum physical memory size of 2GB or the
user lives with the current system constraint which is 1/4th of maximum
addressable memory in Sv39 MMU mode (i.e. 128GB) for now.

Other than above, looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/Kconfig | 20 ++++++--------------
>  1 file changed, 6 insertions(+), 14 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 8e4b1cbcf2c2..a475c78e66bc 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -104,7 +104,7 @@ config PAGE_OFFSET
>         default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
>         default 0x80000000 if 64BIT && !MMU
>         default 0xffffffff80000000 if 64BIT && MAXPHYSMEM_2GB
> -       default 0xffffffe000000000 if 64BIT && MAXPHYSMEM_128GB
> +       default 0xffffffe000000000 if 64BIT && !MAXPHYSMEM_2GB
>
>  config ARCH_FLATMEM_ENABLE
>         def_bool y
> @@ -216,19 +216,11 @@ config MODULE_SECTIONS
>         bool
>         select HAVE_MOD_ARCH_SPECIFIC
>
> -choice
> -       prompt "Maximum Physical Memory"
> -       default MAXPHYSMEM_2GB if 32BIT
> -       default MAXPHYSMEM_2GB if 64BIT && CMODEL_MEDLOW
> -       default MAXPHYSMEM_128GB if 64BIT && CMODEL_MEDANY
> -
> -       config MAXPHYSMEM_2GB
> -               bool "2GiB"
> -       config MAXPHYSMEM_128GB
> -               depends on 64BIT && CMODEL_MEDANY
> -               bool "128GiB"
> -endchoice
> -
> +config MAXPHYSMEM_2GB
> +       bool "Maximum Physical Memory 2GiB"
> +       default y if 32BIT
> +       default y if 64BIT && CMODEL_MEDLOW
> +       default n
>
>  config SMP
>         bool "Symmetric Multi-Processing"
> --
> 2.20.1
>

