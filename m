Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4978164055
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 10:26:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X0nMnEabwA8b60iaCwyM78u7VgRxMu/F8TuKA56lpZo=; b=n1pJkKWOKj4J/OWCJmcuWSWCq
	y663BkuDdM8G6tD1qrXQrHFwn36yUhSJUKU533A/FbSf0ZokBihTlDYZvCKn8bIBjNNh3BQvTRBvC
	AGjrAjOOAHFQmSn9Su4AEfYJcOepkJFvIM7KfrMKAei2kGtFf5mrvqZAa2vR4Yl5kykvtVlhuQCYx
	lvTnE6kHC6lSAR2+7v/+2pvZKnd83vrRrBwhtal+S1PxGKWWqq/iFedD4Qhli7jibWQAfTzX4B8aI
	0FtjsV4RJbUHEHeTdRoj3KlmJ4k8KCQ4nzhxS1aa0BJGVuxqWYxUnofCaGY13mC3oJRY5/xaij4BT
	l+C7ij7Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Lcf-0003j7-Au; Wed, 19 Feb 2020 09:26:25 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Lcb-0003ic-Dv
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 09:26:22 +0000
Received: by mail-ot1-x341.google.com with SMTP id r27so22433783otc.8
 for <linux-riscv@lists.infradead.org>; Wed, 19 Feb 2020 01:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X0nMnEabwA8b60iaCwyM78u7VgRxMu/F8TuKA56lpZo=;
 b=HC/xMmm9BCHZnaGOzxHNFT0D7RgOmN7YpUjNr1Ko8Sqcfno+WqT4tvROuNg0+IgJH3
 RrcPdp99TdoPDUt64gQL1l6Oe+IrnsyVha+zoD2IRu5vlIm0iJV9D9aY4ZtPG3rwQ7tQ
 JPEegA0ocnLf1z87zgu2gdcNhAEQMHij2QFq7XhowPtHFuEZGpFEKZa0q6QBWAunVmvb
 OoA0+UHseKNxayQRQEGhPSur83nxOkEWBctOthKRDkhc3Fr2XKwIgPaS2fmOtPoKASO6
 F9Q+uyaHJoH3ATzeag3MmtfEWJQSl0Uht8hhfYbYQ/HAEWYUZyYccgZSPyEhZ+u0bYFa
 Evzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X0nMnEabwA8b60iaCwyM78u7VgRxMu/F8TuKA56lpZo=;
 b=mRI5RW2ezSK70Eg4tuB0Zaz6BXWctl6YMp3fLIT9zbbiPIviSADSWj7kwTMu0HJ2ch
 j9Vi1NOfLDJwK0/fM4Up7tkkkqjyd0Tk14d53rI86ifMRqou/azZO0Wa/X6GnSNlsFA+
 4NKe31ShIYQd0dQGJHZ7lw/YBQ79euRAEHbN9giE3hE6tR8doxBjs+Vc0tirIkZCOVNn
 8SW5vmCYTcIsLEneKVxfuUTI4mievqnNEZdX1Wtw4zXSbpEhHHcYKWKnYt9ms0mt6LWA
 9yENjRKMCZcwvgu8PZywdQK3jGLx6BnW8gcBsBlKzdcOoobWoOxgEWDokpfBATyU78jE
 bPBQ==
X-Gm-Message-State: APjAAAXWIqXmypgAfSVYjAtD4DGjbxL12N2rj1ImXqH2MSBo3YZRS0RU
 WxWYh0LxMG/rC2TYuEPleg+AjsAG1jkDvV/5+E0IZw==
X-Google-Smtp-Source: APXvYqyD3FHU8Xi2UOi5qIlSSIm7N5HQ1bKHaBnIujfEw1ck4J+ev2ZM3KKcW4cPDV+vwlZQxYL4xAgyLWW2uhTc1jA=
X-Received: by 2002:a9d:2028:: with SMTP id n37mr19722325ota.127.1582104380425; 
 Wed, 19 Feb 2020 01:26:20 -0800 (PST)
MIME-Version: 1.0
References: <20200218212501.85799-1-palmer@dabbelt.com>
In-Reply-To: <20200218212501.85799-1-palmer@dabbelt.com>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 19 Feb 2020 17:26:09 +0800
Message-ID: <CANXhq0qWejBztV7AzF9_ZkcqzHiuyvN2deedepgkVe-gWaf-xQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Stop putting .sbss in .sdata
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_012621_532833_C1057165 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: android-kernel-team@google.com,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 5:26 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> From: Palmer Dabbelt <palmerdabbelt@google.com>
>
> I don't know why we were doing this, as it's been there since the beginning.
> After d841f729e655 ("riscv: force hart_lottery to put in .sdata section") my
> guess would be that it made the kernel boot and we forgot to fix it more
> cleanly.
>
> The default .bss segment already contains the .sbss section, so we don't need
> to do anything additional to ensure the symbols in .sbss continue to work.
>
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/kernel/vmlinux.lds.S | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 1e0193ded420..a8fb52a00295 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -64,7 +64,6 @@ SECTIONS
>                 *(.sdata*)
>                 /* End of data section */
>                 _edata = .;
> -               *(.sbss*)
>         }
>
>         BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
> --
> 2.25.0.265.gbab2e86ba0-goog
>

I had given a quick test for that. It works on RV32 and RV64.

Tested-by: Zong Li <zong.li@sifive.com>

