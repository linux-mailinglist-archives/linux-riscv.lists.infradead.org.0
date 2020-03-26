Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74249193887
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 07:23:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mkmDzl8QbMEyVDVqrUppr7SgDLQJmLXWVe0+y40YkLQ=; b=OMQvlexsL0nZo0ydqasd0BPop
	hbN7Xk49ogvh+WQVSAx3ESi2r93OjvekE7AtPP4xyDTbYLTwBLHplPsOzaPRUqL4J8ArmD3U2T8bi
	Jat2TjUVwKSnixqKmIeyRWJQ+b6QALhC71U5vBVd9/f3j+KQkJCTHx4Pz5WO75Nut3B1bOR/XLqnl
	OndVSuhwE+hwHrmxoLU+YPVVOCwAm0NZ1uEZYOHcWrPMj3f3jdDeFlIMKXpbtZjd8eiz2QI5/MVnN
	jBHYBgyJZ45As45qLmqpl5viM8Bh2aNndwzf5EPzjijUUTcB3MDiPcCp7licYsLAL3Qh2wPJAYzhJ
	I9Yg0fivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHLuu-0006hQ-9C; Thu, 26 Mar 2020 06:23:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHLuq-0006gt-FG
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 06:22:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id 26so6597157wmk.1
 for <linux-riscv@lists.infradead.org>; Wed, 25 Mar 2020 23:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mkmDzl8QbMEyVDVqrUppr7SgDLQJmLXWVe0+y40YkLQ=;
 b=cp6ZDCxaq81LNJbQvsBg96fKgf6ZLLSfrJC1gse9F0mRsZJ/E/CfeduBoijTSjEgI8
 92mrlCu/QRyMwysaKbf3S10EvHDt3xUM1gltecPNi0NPXd1h9VYfQZXJv+14KaPehTfF
 XFK3y4zipTKxlxIC8qG+sIOvEhT843CIBDBrW5aDC3F7hOdzIeOrz9ZzqC452DR7QWml
 xaPM4bebCKBc7/yoCH1wWbDjIkZAK/JhY777wvCgQVvRpjtgWoNCP6i5HPlaC/1PiMM7
 utICdp6oJidA6sGO2ZBX0TwlySPeDBunBWrHQv719z6srOljbJY9NYkH6esvzH2qhB1C
 dY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mkmDzl8QbMEyVDVqrUppr7SgDLQJmLXWVe0+y40YkLQ=;
 b=JmhTF5/oWXvGbL74YRwnLw9iF7VBQDoWDwTZkPjSG6Xad5QIwvQbQTVmHeazaunChQ
 RyO6XXURF/n1ZfyvarDZgCIwWUFSlHw6FG5c+FUk6mWK7HroUUMuF8y4W3dpt6rI6+ws
 0bAjk9FK9ltYBSBSPbUHeIOYBt/UByvqghLCPT5eUeA4cfuA7oE0FyHTpPOTpKc/46cf
 9FduFpRmM5lmadLC+kuRmffBdPfBuYwVUkHRVY1FBceG374VwIefljwm3HRihoWMq3wc
 1CH04dHB2Gjx6RztjmiJfkW01g33fiHqxR0CgAdptO/yoWR58BXQTfiAvBAR6wIyGj5k
 5QDg==
X-Gm-Message-State: ANhLgQ29v42NPqNS5HiWEFsBUjW6FwOKQ73eo+9l3HC6k11BwzMLzr9H
 lIoJuh96OszuJcI0UM83stweIfYlh8M/NMfRA9elRA==
X-Google-Smtp-Source: ADFU+vtinS1iUyTOVFsP36QDgeheDLi0Xo5es3e+rBfKshHjs5MZosDzi+17UBS5VghfWVwjpwhb64xgNFDR5B/lhSY=
X-Received: by 2002:a1c:5452:: with SMTP id p18mr1458497wmi.102.1585203774917; 
 Wed, 25 Mar 2020 23:22:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200322110028.18279-1-alex@ghiti.fr>
 <20200322110028.18279-4-alex@ghiti.fr>
In-Reply-To: <20200322110028.18279-4-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 26 Mar 2020 11:52:43 +0530
Message-ID: <CAAhSdy0+EYV3n3NPrJTkVZETm4SKrZLT1jLENJR9BAT5iGsCDw@mail.gmail.com>
Subject: Re: [RFC PATCH 3/7] riscv: Simplify MAXPHYSMEM config
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_232256_508901_1B4E19EC 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Currently, we don't have systems with 256 GB or more memory
but I am sure quite a few organizations are working on server
class RISC-V.

Let's not force RV64 physical memory limit to 128GB by
removing MAXPHYSMEM_128GB. On the contrary, I suggest
to have more options such as MAXPHYSMEM_256GB,
MAXPHYSMEM_512GB, and MAXPHYSMEM_1TB.

Regards,
Anup

