Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF0E12E1EF
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 04:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w0dEwC+ZPQDMRnW2xQ00qFNHx6JYWygNg84CanVuBP4=; b=T52SrDsShbHoLM53n8TONRWSN
	SBCXQ+sTORlP9NBzcGj2639NWbs8VkRPlozD8ddyl2WgA7fBoaTi75YpgdIoaR3IYE9FAZ4azBZxw
	YXGHVphSWH/05AOm/nETLxmKkWR81anIj70hXeID+VZdgvBjmFTmojN87+whsWXBvHb3X1i+bXxmF
	EMYbSXhB7P5BIyGKbVsp6tXpuoaYq+KH3ZwelLDdY84CocGwaD8RI8cY1qoxVqtnk23cKx55SpCBm
	/MMAFkBrW/z/K/kLMQJVP9bYb3InqVN2/4MQ0GcRsHpsMtomPqh/x1JLgw5vTB4iq/9Iixm89BnwX
	RoTFCKA3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrIf-00041B-IH; Thu, 02 Jan 2020 03:37:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrIc-00040T-5E
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 03:37:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id q10so38048880wrm.11
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 19:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w0dEwC+ZPQDMRnW2xQ00qFNHx6JYWygNg84CanVuBP4=;
 b=BNzJlPFkxZL8C3MkzPkV47XFCH4dSlnrY3A8/EowYF+Kw8g8lCGp7wBqI1ZuU/q/kp
 9+3UKO8XE9uPErHckqLv3Z3mB80zryYNo0/CYE7VXHcdglhWhM3F5VAjuzjjPZVxUDPE
 3QdcItiVds9wegvQHfe4GXJb2D28AnjN86MnF4vUOP3L3hPgbtsOCQkTIB3s89d5+q04
 CdNH43gXrUiWgwJG3KtsPpmbt9GPa/T9RphOyotquC/WwgD4pqFOC+od8AdU0wjERts/
 zPISwXgmnEqQeBR27T5/b1tMLPqtf9poK9W3KUnnw2wcbSKsybP9mffuIMj2G51pscUI
 B26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w0dEwC+ZPQDMRnW2xQ00qFNHx6JYWygNg84CanVuBP4=;
 b=uIVAtDtG8ut7DsDBYimVhOkwbsNKAYa3fJG4hXVgEne6oVKBLgTSd7vhfG1joZDi/D
 X/BLbGKImfKVVk5G/oZYkBpVBGv0S7dtP0jxL5OS4agtU5TqAhwazUv+JvfcySF/MiLW
 Bsd2TzrOpDoVKCwF7RmvYTkBASF2eSFKo8CfQtUB6veE1KwUavR45wzKvBVZU/B2Hmk1
 dsxoUMoJqq/2w7TCSAKCOB5m0MzraVCBCDfBDCRK4gd6veOkwTerd6zx5g3L8U5Wwg8X
 ie2wV9rhEAOBVCpdjaxQpz6ok+jLCLNuBuhVyL7EVSBmRzSFsiCtjuToo/C14KolGWi4
 RggQ==
X-Gm-Message-State: APjAAAXam56b4KsGls1JwDr9XKgk0NAdF/e/bsaUFk+gpf8Asmbl7HWl
 DyPjjfRbxjJDqf+U237RtqIeGHC+WV/nzfejZYYVHg==
X-Google-Smtp-Source: APXvYqxqXtucJKxBehfjEtkkhKenfyWuNgyRLckpMYSqYIf7pkoTptD0U4Di9HzBQVBysqPrJgw/nJ67sHWcB6ld+fE=
X-Received: by 2002:adf:fa12:: with SMTP id m18mr76943743wrr.309.1577936244053; 
 Wed, 01 Jan 2020 19:37:24 -0800 (PST)
MIME-Version: 1.0
References: <20200102030954.41225-1-zong.li@sifive.com>
In-Reply-To: <20200102030954.41225-1-zong.li@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 2 Jan 2020 09:07:12 +0530
Message-ID: <CAAhSdy0NW9OTGOGoyZ7QmAOVbR_iF2ZM7b9eKDW0U1L+as-oaA@mail.gmail.com>
Subject: Re: [PATCH] riscv: gcov: enable gcov for RISC-V
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_193726_199357_EDC0DE7D 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, linux-doc@vger.kernel.org,
 corbet@lwn.net,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 8:40 AM Zong Li <zong.li@sifive.com> wrote:
>
> This patch enables GCOV code coverage measurement on RISC-V.
> Lightly tested on QEMU and Hifive Unleashed board, seems to work as
> expected.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  Documentation/features/debug/gcov-profile-all/arch-support.txt | 2 +-
>  arch/riscv/Kconfig                                             | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/features/debug/gcov-profile-all/arch-support.txt b/Documentation/features/debug/gcov-profile-all/arch-support.txt
> index 059d58a549c7..6fb2b0671994 100644
> --- a/Documentation/features/debug/gcov-profile-all/arch-support.txt
> +++ b/Documentation/features/debug/gcov-profile-all/arch-support.txt
> @@ -23,7 +23,7 @@
>      |    openrisc: | TODO |
>      |      parisc: | TODO |
>      |     powerpc: |  ok  |
> -    |       riscv: | TODO |
> +    |       riscv: |  ok  |
>      |        s390: |  ok  |
>      |          sh: |  ok  |
>      |       sparc: | TODO |
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index d8efbaa78d67..a31169b02ec0 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -64,6 +64,7 @@ config RISCV
>         select SPARSEMEM_STATIC if 32BIT
>         select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
>         select HAVE_ARCH_MMAP_RND_BITS if MMU
> +       select ARCH_HAS_GCOV_PROFILE_ALL
>
>  config ARCH_MMAP_RND_BITS_MIN
>         default 18 if 64BIT
> --
> 2.24.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

May be (not 100% sure) split this into two patches so that
Documentation patch can be taken by Jonathan.

Regards,
Anup

