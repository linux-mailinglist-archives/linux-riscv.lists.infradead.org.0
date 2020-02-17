Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED33160A17
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 06:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qK8OjVx+UrlFpp7xoUR1rRApkI96TZRdTAo+J2wgjp4=; b=g64Fea0KgTspy8vLVJVHnPcXA
	L4htRZQYzJjvjDZ2KjSUzyJcFbxizcAeBZwNuAXQkCjFNWhvqEhAf0jOvgSgj76CRwtSv8fF0dO1j
	naFj+BZehm3E0C/VEx4gWH0LkyNronHpxb32sgLWZ3PHHaT6pf5WNHwZJPWdS+eeznum+PX5qhbIg
	BZy8uyh2C12/i2gZjkBJJ9+15gD3gnYLw/nqCt6Bx9Mk+KkZhIrlba6G+D2IsJwcKMjUZkgQWacTp
	Y8QFKqNlIiAsCSt4FQJIYDNVDOAwhohISh/+cCurOxbJuCdI6CthQeQtwNnOAzU+AaW5kG6L61lFU
	9aCpFeuKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Z0U-0001Z3-Nc; Mon, 17 Feb 2020 05:31:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Z0R-0001Yf-QR
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 05:31:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so18016357wrl.13
 for <linux-riscv@lists.infradead.org>; Sun, 16 Feb 2020 21:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qK8OjVx+UrlFpp7xoUR1rRApkI96TZRdTAo+J2wgjp4=;
 b=IL8t3UqzajJ8X/Va2bVJn/7/EnDmBxTC5T3DlaybGhuCCl//pvqxTZNF0kopfHdzfo
 cjNjQSLU6K3XvbxKh2ZcpySu6e953c3lgMTIHrjTORqzIgjVOkq0nR6aF8JzDAoAaRv9
 o1PGO8RbOgWv3kE0UK6ZzZlMBqm+zCR8upj6HwuMbOu1M+EUztm7RPAG/YPe7gXQ9c/I
 wv/8giNlnCfHC//hrLvzxWBORlf8+ZFMyv/VWbvJp5p8nyNZg32OrBQfuO9FYuYv4Nnk
 EIR6VGo0hLxhF9fWi+ocm2EzMdmGi7hsJWlZGL5ziWzY7xrdu+tR8Ldxz9IMSBCgLAQe
 XyUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qK8OjVx+UrlFpp7xoUR1rRApkI96TZRdTAo+J2wgjp4=;
 b=e3evG/SsCxKL3lH1CLhjO3P2j1T9CSd1PrSh2B0e3fkaOUUX5RhoY4U8S/ntxYKKG+
 FIjhwPQ/PNXVkKdee8efmALcZm1E9NnfpBEv8nASvQH+jpgNPPmjvJ7tvWOqJKniUdxR
 zCnfpchGBVufbSt3nHJp3zG/h0jSY3vX6r4S3uhZyb1BwYbrlJrSVIZcqhJQ++fR8NU0
 ZrxgjdOd18DhzoEXx+umPH8lOFyef2QsoYrGKRdhkqFZMGawFIKqQL4bxX3QIsRUqZzI
 pkfbQG7mMKNP98PJh+WAjLNtLcE0Wy8iMOT20IogfcthkLcGFQMH0hsqbfcN3lANqF9m
 VWIA==
X-Gm-Message-State: APjAAAVmH1/9UKIXl08kjPRSCbvTvu6ar7LQTaXc8pcq1mbWp30OtzSj
 QGULUgkEuLg1WHjJX2yhLRk3J8Avt0GMivtYZZYH1Q==
X-Google-Smtp-Source: APXvYqxqiMYGPOfmAIxWfpIMpYDldi/Ms8VKDS5YeyS1wS56OJ4kfXS7npV6dhzi2WYsmwLbCS3e32Ft+dyEaXMatgg=
X-Received: by 2002:a05:6000:1289:: with SMTP id
 f9mr18846622wrx.381.1581917501593; 
 Sun, 16 Feb 2020 21:31:41 -0800 (PST)
MIME-Version: 1.0
References: <20200217052847.3174-1-alex@ghiti.fr>
In-Reply-To: <20200217052847.3174-1-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 17 Feb 2020 11:01:29 +0530
Message-ID: <CAAhSdy1aXUwCGYK61BeCXd+w-oEyf3=ZJmS+HM0mUxV-Paw-Rg@mail.gmail.com>
Subject: Re: [PATCH] riscv: Fix range looking for kernel image memblock
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_213143_919089_CDDACBBD 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
 stable@vger.kernel.org, Jan Kiszka <jan.kiszka@web.de>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 10:59 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> When looking for the memblock where the kernel lives, we should check
> that the memory range associated to the memblock entirely comprises the
> kernel image and not only intersects with it.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/mm/init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 965a8cf4829c..fab855963c73 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -131,7 +131,7 @@ void __init setup_bootmem(void)
>         for_each_memblock(memory, reg) {
>                 phys_addr_t end = reg->base + reg->size;
>
> -               if (reg->base <= vmlinux_end && vmlinux_end <= end) {
> +               if (reg->base <= vmlinux_start && vmlinux_end <= end) {
>                         mem_size = min(reg->size, (phys_addr_t)-PAGE_OFFSET);
>
>                         /*
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

