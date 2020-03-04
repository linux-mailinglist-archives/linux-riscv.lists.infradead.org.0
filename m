Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293F9179817
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 19:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=miBvouj4I/GLlxjiHdEglHhGRVjM61T/WsS5L5tiI+Q=; b=ilgVM3F1cRa1Nc
	c6MGxquxfcPvxzATvphbNgwXAKgRGMCFGjAveYeDPruKqYB2j2JJQsQVp9bhtaADmv08go3aazoIF
	CqMuLl3fouOfgob4vO2Ig506FB6Sw9S7p1XVBH5nsWIEb306zqfZ0umXef0vg2V6BcIcfxmW/iq6k
	gcWB8tGArX8JlixqLvY90wJcqecT18mGhxjak+xsy9hZTkDVVyD6mDfudCTMFLAAWKBidScwULLeE
	8/9yS+U4S4sGDhil2gD5PyMRLhTuUx9N3a+k0GHohbUMycu+uHntOn2JqRW/e0UqC1bz116DDx2J0
	CAhR0fDl08JPdYu7ZT/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Yuo-0002Pn-SE; Wed, 04 Mar 2020 18:38:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Yul-0002PG-Lm
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 18:38:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id l184so1386914pfl.7
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 10:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=miBvouj4I/GLlxjiHdEglHhGRVjM61T/WsS5L5tiI+Q=;
 b=suqEHJO8a6EdSg+sP/4st0oPkzaZThknSQ/6jZVr2rAkzw+et0nG0LR97wksCj931p
 p4IxQfFzL4OiEq2sdTCQ3wnXwTuhfnLtmULTA0tclpLgdFlgITUh8bA0orMVzdKJPxKH
 qBLxJHwIWagJ/X9bHotn6R3rd1y1snyoI2OJdadY2Eqze/gAEvAXGhubqD8dsKBbV8Cm
 kCUJXzz30udzNUmOIZpnifd7eDgy52FhNEdTWKb3tWrlZThKwiGvccZct58H22UeQrCV
 o5ul1xAlIEmXynm8vmudPPUc31hiwhauz6Xw0ww5YZWsInvB4HSDzaMxlj6mNXfSAB2U
 +yVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=miBvouj4I/GLlxjiHdEglHhGRVjM61T/WsS5L5tiI+Q=;
 b=CLkNqbBMpIeT+tjDYda+d5j3Zv2YNxHnhqJfkn0uXoPrgqBEyOB65Kw/EufRE64sRn
 nKXr+oRlQqDGJcjBEyETjGLqK9flRPWwJ/v+j+upmlAJl/3jhHA6R3J48M9M4gr/zmgJ
 8KiClbbYqtZeNflaa7AWqDsFE67fqtPsxabDAyiWdBaYTTio4gwsF6UOqWXFhRBHp4i1
 MLMruM5eWhfsxaLXGzqqRJgmtNyELYQfbeOTBSjYwC9xgAkN/OFw+pp4w44R8TntI1Qn
 OZUQK9qrgvoyO/A2Fly9mup4eyumO7jHNVE+WcX9MsyHSzZ9vnHDmh/OVZCvsdAlkAbc
 1nYg==
X-Gm-Message-State: ANhLgQ3NQ6diz58wMz9Truak5msBp10zLxaMGBoMUwXWk8j9zJepSSa+
 0gCQNyfG9+tY6SmI4g8tzNK0IWtJmnc=
X-Google-Smtp-Source: ADFU+vt4XkFgXBwjgfJwwgPpxre53cIMnNyA8EhsmpLoVA8aFS/aQ4hxHEiBx6yVWiE2jKMl2kcdzg==
X-Received: by 2002:a63:1e4f:: with SMTP id p15mr3843483pgm.28.1583347118130; 
 Wed, 04 Mar 2020 10:38:38 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id v123sm3768801pfv.146.2020.03.04.10.38.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 10:38:37 -0800 (PST)
Date: Wed, 04 Mar 2020 10:38:37 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 10:36:53 PST (-0800)
Subject: Re: [PATCH 02/10] riscv: Force flat memory model with no-mmu
In-Reply-To: <20200212103432.660256-3-damien.lemoal@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-d29f4378-1613-40ec-9fd8-e69e8b67b337@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_103839_761450_1D2D4ECD 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 02:34:24 PST (-0800), Damien Le Moal wrote:
> Compilation errors trigger if ARCH_SPARSEMEM_ENABLE is enabled for
> a nommu kernel. Since the sparsemem model does not make sense anyway
> for the nommu case, do not allow selecting this option to always use
> the flatmem model.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 73f029eae0cc..1a3b5a5276be 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -121,6 +121,7 @@ config ARCH_FLATMEM_ENABLE
>
>  config ARCH_SPARSEMEM_ENABLE
>  	def_bool y
> +	depends on MMU
>  	select SPARSEMEM_VMEMMAP_ENABLE
>
>  config ARCH_SELECT_MEMORY_MODEL

Oh, this should go in fixes too.  Thanks!

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

