Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3BBDBB82
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 04:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2nIxcI2FPAXcnzoY5vn+uv+UZSgA4MqjsJfovf5xBI=; b=PqSdfLP0vYAUFg
	2TG2OhTrVDsmnx3+FTgw0Mo0LASf7WH250g6P/0uhB5rVRjP+tftzfi6HJUloiPml+TO7a9j+cma6
	J95qrudkXUezsIly7NITehpS3CCtCV1n7BEuLfN76M+AfqcZQFFxdW1Kr90B0k/d9A7IrHTExKMFa
	wa3xOnKbnv+QoSVg+PtvreMWSuf61rUL0jhoim8Y3EdPIgVurjsNb600Xi1jw399/eQGZFIV1O3jU
	9OfMyKxcTifJCvYWzdBx1gH0EkhDP2qIhYzAmjDTyCk9qBV6GTNukeqjnqgzLq+PdYqXvk00oR71m
	r2Ng4wRc49BMHhUKLX2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLINk-0000Fy-Aq; Fri, 18 Oct 2019 02:52:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLINg-0000FS-9Q
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 02:52:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id 7so4532627wme.1
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 19:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I5uiLwmoQ+UosJLYhlwMFvtZSM4kU7jPQZOvk7J0zfE=;
 b=XOKhHh0naS5QNQVOxy3d8B/YfNidBHYJz3f1c7FjVlmosH5Qz36FN+IV9Ca20+vpCk
 Zkq22eYC6P2UKvSostC7Y69bl9ecqj9HwulutQKBKivrHtMd4ZiWIPxTs39U/rNghF+p
 cFdAI2F43Bl0FH9rkUx14qGaH0MAK05tdg2lPLn6M3DhWVk+V1QD23LVJoJpwuOyBbYZ
 VgAfmi08rDRpjl9Wz48HrY7fVRXd4LK3/8qbFc5kHWRu0vusRAoLBreiVNvBOQfUHdkC
 7JrRzXfe7Qz1CiONoX7vuUMOGtPSKvWW4/QQNEujMAnhDy68QKy2RtBCpm7av87tRvy8
 sVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I5uiLwmoQ+UosJLYhlwMFvtZSM4kU7jPQZOvk7J0zfE=;
 b=Wuc84Q+dgphXeuV31dnTdlnd7w9Sm2sWgChoGiTTzU3xkcBz/udq2eM8zXb3S8maAz
 Nr3qMn+WgtNwTn7aLiS3ShMzTsVDA+JcHFsIEmp9Xao0FI6sqRmAYVDGLjgkgVD/ZCb9
 yfyJsEvwQzLDJJ7OAvr3qAiLocsHJw1kgwsNzQKNQu0jsR7Z3LGLhefXbn9FWl1tLNMm
 0x92BZOajJ9VvNdlWlRjEfBCIsbXqZB3B5nio8qXTbhdA3cRBFT9JUtVxp7GlYCF3a/t
 6StLAQanLUA9u7iUiOieCwiJW+UeSfUUl4Ghq8YqAE4O2bVKHDfdWnFEo1zhPLuW4ziL
 SiXQ==
X-Gm-Message-State: APjAAAX60haDWT/1d192yM667aGX4aeYHka3XbvkJtNBcOREEEidK/AO
 holbBcLluTXUPVHqk9PNmUyMAX2g9cBhNXTRv9wgib5Glw0=
X-Google-Smtp-Source: APXvYqwC5hCKaaCeEYsTe212j8USkNkltAjC/8925IVABeGi2fd2K3HeULgMknEhDTcF08C2TR11ZJ5PE+DAjdDdEPY=
X-Received: by 2002:a05:600c:214f:: with SMTP id
 v15mr5241260wml.177.1571367162336; 
 Thu, 17 Oct 2019 19:52:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-5-hch@lst.de>
In-Reply-To: <20191017173743.5430-5-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:22:31 +0530
Message-ID: <CAAhSdy1VcrYNXW1b1QmA377i8aa1kQ=3pLPoVwuTv-gRYLHB1w@mail.gmail.com>
Subject: Re: [PATCH 04/15] riscv: don't allow selecting SBI based drivers for
 M-mode
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_195244_328746_CE7B1F55 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:07 PM Christoph Hellwig <hch@lst.de> wrote:
>
> From: Damien Le Moal <damien.lemoal@wdc.com>
>
> When running in M-mode we can't use SBI based drivers.  Add a new
> CONFIG_RISCV_SBI that drivers that do SBI calls can depend on
> instead.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/Kconfig         | 6 ++++++
>  drivers/tty/hvc/Kconfig    | 2 +-
>  drivers/tty/serial/Kconfig | 2 +-
>  3 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 86b7e8b0471c..b85492c42ccb 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -76,6 +76,12 @@ config ARCH_MMAP_RND_BITS_MAX
>  config RISCV_M_MODE
>         bool
>
> +# set if we are running in S-mode and can use SBI calls
> +config RISCV_SBI
> +       bool
> +       depends on !RISCV_M_MODE
> +       default y
> +
>  config MMU
>         def_bool y
>
> diff --git a/drivers/tty/hvc/Kconfig b/drivers/tty/hvc/Kconfig
> index 4d22b911111f..4487a6b9acc8 100644
> --- a/drivers/tty/hvc/Kconfig
> +++ b/drivers/tty/hvc/Kconfig
> @@ -89,7 +89,7 @@ config HVC_DCC
>
>  config HVC_RISCV_SBI
>         bool "RISC-V SBI console support"
> -       depends on RISCV
> +       depends on RISCV_SBI
>         select HVC_DRIVER
>         help
>           This enables support for console output via RISC-V SBI calls, which
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 67a9eb3f94ce..540142c5b7b3 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -88,7 +88,7 @@ config SERIAL_EARLYCON_ARM_SEMIHOST
>
>  config SERIAL_EARLYCON_RISCV_SBI
>         bool "Early console using RISC-V SBI"
> -       depends on RISCV
> +       depends on RISCV_SBI
>         select SERIAL_CORE
>         select SERIAL_CORE_CONSOLE
>         select SERIAL_EARLYCON
> --
> 2.20.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
