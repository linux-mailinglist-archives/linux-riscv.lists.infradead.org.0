Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B87A15FEA2
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 14:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bvbp7c5toLr2Yh1pvx/xh6i9s0n9bxm1bo8lfDqxtVg=; b=DTqVLPIW4ZWfMICcAEtVehmh4
	diMfrVKwyDxCIyuZ+P9cy0x6C1/ZGO69bLC5jcVgTMkKhoyFI6TlJUjPxP2aIzDd3qmbRD7BxvXZu
	WcWk30YyUkOmFgKhxqBh0XPv68mu0dp2uffujUq9pfRgpNJQsO8iZNUCmx8x/vVd0KOrKR3BOmckT
	97Mrws5w0wZi9SNcxPUs+ZPVF0mbNtWJUoQdG1Kvi+VJaRzA5pGpmn8yWZJ1b5mdH1dGymbAiS/Z1
	TIo34y+PtM4GlZgpsO6849sYUXCMBiSvDoGjRxP0Nz3gT3Rj/148TqoEHwZr01qCfZ993tMVUOhRw
	Fpwf0E3JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2xh9-0001lg-UY; Sat, 15 Feb 2020 13:41:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2xh6-0001lG-0W
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 13:41:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id w15so14305277wru.4
 for <linux-riscv@lists.infradead.org>; Sat, 15 Feb 2020 05:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bvbp7c5toLr2Yh1pvx/xh6i9s0n9bxm1bo8lfDqxtVg=;
 b=AETsr1wM3uuQ+zyCzeyH+iS5CfSEbaVtJHCOcch65tFOAVWr4TGnzk1ZhgqX/P00Hi
 vV8236IAJ3MKxyHTeriZo2Cvf0Z6Tu/TU4J5Gc4ncmOv045e9zBFxTueGJcAECE93JMW
 9VtsNdbTT/nyOqGnz7uYxbZZQxgg5eO9b/QF1BZNzBmIhgG+FDX9tRHJuyK1EmBZrDSv
 hqMhhd9/HjU9Hl0UgLOIZ6cde/VjQ3PSBzqwLNwbS+TxqSD/eYWtxW18RXuZOwjnxS6S
 4rXHNIQ7xh/AKVqHmLAsRLEgnEcmxeUr7jrFO+p9GQkDAGNVE5J8o629uaMQH7DxjFZN
 5Cig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bvbp7c5toLr2Yh1pvx/xh6i9s0n9bxm1bo8lfDqxtVg=;
 b=iTpVfPOdDUsbfIYqXpfex5dw/JQt1YwLCPC1Au69DK+5gJ48A5osaDBAPKxFUb5SJ7
 TLdyYdochmozbo067s+M975AOcyoOCWHSW9qpX04kfUTTvkbSGNgjEPApiVn/DD6L/dE
 LveABPrVxpqz4yAs+fMOQEFksLa8ZvQ2xeoL70i7fP5f+jWWUGjqRWh1ISYWG5fkgzGi
 0D1ZNymYvLHsWK0e5WUg1pe/KazX70TKmLRcahzT40c0ZxJkzObhyhxdzGIxcKIAKt2A
 GIBahkrcA56vqJVa3Otho36SXfTZnNmdqFlaOQPAxEdAfW4Gp1raobTuRFdVZJpiCK+t
 NKTQ==
X-Gm-Message-State: APjAAAUty/7+LxD8PGbP+laMRuXzJNZTXSpLzKWFCcQP/4LZz3p1NCpj
 iStySq49WTFIETXglzSDLea7aF/6ynws2V0wysulPg==
X-Google-Smtp-Source: APXvYqz3TqP3RF2qhX4GRggNReYHvb1iCkHq5gaPNR7sx6SKc6nqN1h2V+xHFCeEtiunYMtgNxzz5xF39MXeunrJEZ8=
X-Received: by 2002:adf:ec84:: with SMTP id z4mr10326398wrn.61.1581774069508; 
 Sat, 15 Feb 2020 05:41:09 -0800 (PST)
MIME-Version: 1.0
References: <cover.1581767384.git.jan.kiszka@web.de>
 <617f75f4eaacb02cd9d0a7044434e3e9b65e9e8b.1581767384.git.jan.kiszka@web.de>
In-Reply-To: <617f75f4eaacb02cd9d0a7044434e3e9b65e9e8b.1581767384.git.jan.kiszka@web.de>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 15 Feb 2020 19:10:57 +0530
Message-ID: <CAAhSdy0LQ7ov0Gm0ATxrmJuyKpjjn5e9iAxMPJLCVXA9Pdduqw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] riscv: Add support for mem=
To: Jan Kiszka <jan.kiszka@web.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_054116_113876_C310DAF6 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Feb 15, 2020 at 5:20 PM Jan Kiszka <jan.kiszka@web.de> wrote:
>
> From: Jan Kiszka <jan.kiszka@siemens.com>
>
> This sets a memory limit provided via mem= on the command line,
> analogously to many other architectures.
>
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> ---
>  arch/riscv/mm/init.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 965a8cf4829c..aec39a56d6cf 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -118,6 +118,23 @@ static void __init setup_initrd(void)
>  }
>  #endif /* CONFIG_BLK_DEV_INITRD */
>
> +static phys_addr_t memory_limit = PHYS_ADDR_MAX;
> +
> +/*
> + * Limit the memory size that was specified via FDT.
> + */
> +static int __init early_mem(char *p)
> +{
> +       if (!p)
> +               return 1;
> +
> +       memory_limit = memparse(p, &p) & PAGE_MASK;
> +       pr_notice("Memory limited to %lldMB\n", memory_limit >> 20);
> +
> +       return 0;
> +}
> +early_param("mem", early_mem);
> +
>  static phys_addr_t dtb_early_pa __initdata;
>
>  void __init setup_bootmem(void)
> @@ -127,6 +144,8 @@ void __init setup_bootmem(void)
>         phys_addr_t vmlinux_end = __pa_symbol(&_end);
>         phys_addr_t vmlinux_start = __pa_symbol(&_start);
>
> +       memblock_enforce_memory_limit(memory_limit);
> +
>         /* Find the memory region containing the kernel */
>         for_each_memblock(memory, reg) {
>                 phys_addr_t end = reg->base + reg->size;
> --
> 2.16.4
>
>

This is a good addition for Linux RISC-V.

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

