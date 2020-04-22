Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034F91B4C96
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 20:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9xCb2Npg6cxUHatmABpA92+gEmy0eTtWNknFmy6avYI=; b=uqcwDMW5fnwEMch4OEG3J5Y/z
	zhcEgsdJBBX/VuyEa/Vnky67fFn+goNplSI81mWZc9dRRFk5pbidI9eDaFzvdEnC/8NF/E15i8SGh
	gzMxARaxOOw5CDIsA1vcvPplqw6I3bancdjJGhxyTCpi0j/cS1NK/fywawxc5DSon6OTbNhm/wwFm
	7T3JHX1YQ82fwtj8Wt+l+1Fa6aHwfWaJJZ3ijQO6eUvpLaiEb2Ea6fpfvIpLQtMn7vkVpU51jkkky
	h2gWpnY/OYHgQGA5hlwpF1LVCYy93w2IUEmK8be3ek6XYSflmqJ7DduIzw8am2M8WrvqwMvCEAb/W
	++pn5rd+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRK0g-0006fD-QP; Wed, 22 Apr 2020 18:22:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRK0d-0006dR-Vv
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 18:22:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id u16so3588932wmc.5
 for <linux-riscv@lists.infradead.org>; Wed, 22 Apr 2020 11:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9xCb2Npg6cxUHatmABpA92+gEmy0eTtWNknFmy6avYI=;
 b=VbnhEKrsaU2aH3qhYZxfWH7+WNik+bD7EVQg7a6GutfhJ44gvp5gO6GJ8Ob6BJhLVE
 FhAatEwkVW/GJghvBA3RNslpBHbjf4RgKzeA2VGStsGHdjEU0Fzr9Xpimoty1m0tdMg4
 VFxLsoLRCvnaMUU5plT+xLSum6BBAiMvIg77fY2kHLXbyo0A3bVi3Lbm1vtvyfiKuPlB
 rkLFWMgbBRA1W+2+BXcOEbkdmZIir/alTiN61mAlnccJoafFwnpOMjYVS+YLYnmoWkp0
 YArgq/XvEdNBwOvFeapkIo6dEkWvcBB47Ogj+V5aS6+HEH+VbhaTu93gusYPmH9YIsc6
 ZJ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9xCb2Npg6cxUHatmABpA92+gEmy0eTtWNknFmy6avYI=;
 b=NSMERUev8hL12Uv4EBo6AoVbh2YzVsBFnhjHygRny8qNseAhV7B9aM1BT+1+eJVi5c
 XMeT1AftY2VmgktBLs5cM1T2e91Q8zbuxpuoP5Bzhqo4t1Ox9C+fjYUweJIOv5Jr+gW1
 7AOejmZ8Z1ZLPRX+YWqkOKnAoIB7iyG0yXJiUMJ3iR1BUrPD/wjayq67OzZwgmS40INY
 ukNXHCoL5hYKhaj6hWouGa7AZLvQqVluYJS5mO8Xj8L2zPLIgdNg+9en8ug+1Mk9Gaty
 /5+FstDX6bQ/ttQ/3V0AKvhSS/EicEyqlIxaopwGXStaS0eqmz9hccUHghbVTo55xUAK
 2f6A==
X-Gm-Message-State: AGi0PubtkYxsF3pjpDF1JSuGJ00MNAaCCwxaSnVTo1L47vpWkiEis0ZP
 BvvjMYXka+5f2UznlU2w8s952Po/
X-Google-Smtp-Source: APiQypIrkQBmAsf6sUXGyeLIsG12MA4K2A/T46uPvYXr5HCdekB5mX+HpYToYXvcRh7nzIYt7VDPVA==
X-Received: by 2002:a1c:4085:: with SMTP id
 n127mr12608016wma.163.1587579722738; 
 Wed, 22 Apr 2020 11:22:02 -0700 (PDT)
Received: from aurora.visucore.com (92-110-144-95.cable.dynamic.v4.ziggo.nl.
 [92.110.144.95])
 by smtp.gmail.com with ESMTPSA id z16sm47840wrl.0.2020.04.22.11.22.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 Apr 2020 11:22:01 -0700 (PDT)
Date: Wed, 22 Apr 2020 20:22:00 +0200
From: "Wladimir J. van der Laan" <laanwj@gmail.com>
To: Damien Le Moal <damien.lemoal@wdc.com>
Subject: Re: [PATCH] riscv: select ARCH_HAS_STRICT_KERNEL_RWX only if MMU
Message-ID: <20200422182200.7guafjri2oyda23b@aurora.visucore.com>
References: <20200413090449.36777-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200413090449.36777-1-damien.lemoal@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_112208_027617_149B9275 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [laanwj[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Anup Patel <Anup.Patel@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On Mon, Apr 13, 2020 at 06:04:49PM +0900, Damien Le Moal wrote:
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
>  	select ARCH_HAS_GIGANTIC_PAGE
>  	select ARCH_HAS_SET_DIRECT_MAP
>  	select ARCH_HAS_SET_MEMORY
> -	select ARCH_HAS_STRICT_KERNEL_RWX
> +	select ARCH_HAS_STRICT_KERNEL_RWX if MMU
>  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>  	select SPARSEMEM_STATIC if 32BIT
>  	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> -- 
> 2.25.2

Please include this fix, I came up with exactly the same change.

Wladimir

