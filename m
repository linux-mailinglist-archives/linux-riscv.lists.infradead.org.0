Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2331ADD81
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Apr 2020 14:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5d/+Mz/K41+l5nHe9+HnUq2CLogiiEQD3UQf60PXu/k=; b=YdUrpOB5BJL2BNbhVmg4ibtUg
	NXM6lkwnIbWq/DMVtkagkB6R5bZWmSrBX42ZAmPhht1ziapdf1xbaTXaGL0MsCmHEnzhRRytQZ7/n
	ErBzUCcxbT5QDfTDbHtqTut+fJJoN6UDf4WytOKBn6uSrXxJSOs8kZhxQ9G+rCNcUSIAPX69XyiZs
	TGZIGSqeHTBtg+9BMVUJVqhZovxHwS7dYlStClp0SglHZC4g+610WxFAzseAfb5oP84dE6lc0yuKT
	YXeNWzgJOsggxNOGaQ640PUZab1E4uCPf8TY6PT8Db42uza7aP4jVia0uH6/WAfZok/2uSyPj5jZu
	7KRTdBkRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQIv-0000GL-2N; Fri, 17 Apr 2020 12:41:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQIr-0000Fw-Ac
 for linux-riscv@lists.infradead.org; Fri, 17 Apr 2020 12:41:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id i10so2851249wrv.10
 for <linux-riscv@lists.infradead.org>; Fri, 17 Apr 2020 05:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5d/+Mz/K41+l5nHe9+HnUq2CLogiiEQD3UQf60PXu/k=;
 b=rI7NENBDqfn/fQ7qMbOy7mITJfkQZEgaC2hsDwXL+0KFHV3dDjMAv2g3Jg61nEmyy6
 8ANMlYPUB/U1teG3lMdroPrkMNaHEAcZuqQlz64TkXMTB23LkwaBwjJgSomws8ogA52Z
 XO0/dACcTP0sFZuFnhLB94gL5IKx/+KKdwRGWoQ41L43VgH1XL0sk7TJnEyVHMgQX4l5
 CmweALmDi9EHLblVMek5HkyTylDkLdtzDp4iDrvtL1t7/rmTD3clnDBLUD80BVmdOQre
 cCI2lzKvXTlC7kQHsFC/qUAtpETJqhlMaMkes8BMTqNdcFQUjXfz11aWAldnMRu9F/dG
 6Mmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5d/+Mz/K41+l5nHe9+HnUq2CLogiiEQD3UQf60PXu/k=;
 b=sQIz6m/y13X3rjwSFYiLopEbY2ZVOdfnBDzM88ECPqLIimzwggY7zc7p0lju7ZqsYO
 idtGBrj+5jobQO00JAS0SqKfWtp3QFfX2l36cL1jUq4cKSurgSwd3KsqgbgHRV+NLzzN
 xVGJ0tTVbypGSwOSG69EQrpkjZF5FtG5onr0z+pYg38g1rcls3lFiFMjS7ZVgzaKdnqO
 uwL387R8bDshRwo0+vqe1l06hbtYujesVWGZOL3KHPYVVrfDQvX7hX0qw1w1Q1gv2SIJ
 XMys6Xqja4bDUkgorKZFeb32B6uxcgQE/wZnCCaUnS9IQ/mbtprNxwp9HYqS/GZTP+JA
 Tl1g==
X-Gm-Message-State: AGi0PuYe7CAM8tZ91aYBsG93DdymZXbiNErL3smec3aH7Er3VzOgvRlO
 LVJLNknpUWixB0v2iTEXY/pxHYWup+xB2l7/FwWxCg==
X-Google-Smtp-Source: APiQypINgiS8TdVKf+DZcpqWM6CnJsqHx/bwUe303I5G+wpdbKEuPCqn6K1HfP0lC0KGhWUgUZW/5cGLYE2KWBl1U5E=
X-Received: by 2002:adf:c601:: with SMTP id n1mr3534017wrg.381.1587127264046; 
 Fri, 17 Apr 2020 05:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200417121222.156422-1-wangkefeng.wang@huawei.com>
 <20200417121222.156422-2-wangkefeng.wang@huawei.com>
In-Reply-To: <20200417121222.156422-2-wangkefeng.wang@huawei.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 17 Apr 2020 18:10:51 +0530
Message-ID: <CAAhSdy3_0-rLZQUv_u-Drdxy_nw4xzM85gN_Qo_WcXC8aGDhzw@mail.gmail.com>
Subject: Re: [PATCH 2/3] tty: riscv: Using RISCV_SBI_V01 instead of RISCV_SBI
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_054105_366991_54D65B3D 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 5:40 PM Kefeng Wang <wangkefeng.wang@huawei.com> wrote:
>
> As shown in SBI v0.2, the legacy console SBI functions (sbi_console_getchar()
> and sbi_console_putchar()) are expected to be deprecated; they have no replacement.
>
> Let's HVC_RISCV_SBI and SERIAL_EARLYCON_RISCV_SBI depends on RISCV_SBI_V01.
>
> Fixes: efca13989250 ("RISC-V: Introduce a new config for SBI v0.1")
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  drivers/tty/hvc/Kconfig    | 2 +-
>  drivers/tty/serial/Kconfig | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/tty/hvc/Kconfig b/drivers/tty/hvc/Kconfig
> index 31b7e1b03749..d1b27b0522a3 100644
> --- a/drivers/tty/hvc/Kconfig
> +++ b/drivers/tty/hvc/Kconfig
> @@ -88,7 +88,7 @@ config HVC_DCC
>
>  config HVC_RISCV_SBI
>         bool "RISC-V SBI console support"
> -       depends on RISCV_SBI
> +       depends on RISCV_SBI_V01
>         select HVC_DRIVER
>         help
>           This enables support for console output via RISC-V SBI calls, which
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 0aea76cd67ff..adf9e80e7dc9 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -86,7 +86,7 @@ config SERIAL_EARLYCON_ARM_SEMIHOST
>
>  config SERIAL_EARLYCON_RISCV_SBI
>         bool "Early console using RISC-V SBI"
> -       depends on RISCV_SBI
> +       depends on RISCV_SBI_V01
>         select SERIAL_CORE
>         select SERIAL_CORE_CONSOLE
>         select SERIAL_EARLYCON
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

