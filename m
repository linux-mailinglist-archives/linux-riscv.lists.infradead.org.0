Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F5F1FAA83
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 09:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x0UZS1344FZMJ9sVFAfBG3IhgSf2KKzqEk05E3yUoqE=; b=Vmvqn83OOz7tItN4sHST+4MVe
	6W6fDJrbRs5LF2F7V+8L79Q6MWzqCigZgBPw+AyX85M35CYwgDGo7YgBAwesa7Va9fI3OUFYjhIFu
	QX0myeXAf4+4PvU/DglZU47y+tapw8OaVeVMJWLyuuvjj4Y/cA5eXCSD8tDdy1QPK3ueVbKc8delh
	KbWE9m4/mjMNGRD/MXUlMTrnim17+fiz8avcjGNtY8AnPWr/MnLDqDzzWBOYF+ilo4iLmpqZLqpom
	cluIwuF61uU18cuyTqnk7uja1ty9N3Qzsaibahr5hajXE6gItUO6IGPELcX5/zNK4XEFc5vJolymR
	/M/JRw1tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6RT-0008Po-Uq; Tue, 16 Jun 2020 07:55:35 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6RQ-0008P8-8b
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 07:55:34 +0000
Received: by mail-oi1-f194.google.com with SMTP id i74so18491251oib.0
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 00:55:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x0UZS1344FZMJ9sVFAfBG3IhgSf2KKzqEk05E3yUoqE=;
 b=tQIQkCn+4lO8mk8rQcpWT33DbILV+miKR3m5/Hu5kN3s5vHuLWgs9bmAFPFKGeeAgp
 Br4IWHR1kj7cN4gF77y2/GI9b/vb2e3NLVSXy/oRcBarxePNa1JCW9Fdgs99aj0p9E9u
 VqtDg4u2Lz42rz6wl4BGU39D4grtV+R30kugGcLr5/i5x+pWvz3onEZW5EKQwOHTmjdZ
 A9bgQfrwK06EDYYkxQF1o0+U3P097/+tiC/rQszXrTEjjv0ZF5dJPuAZzvKNwTs5jWG1
 6vXbEWWP7EwCXitv11qB6+wR0fpxzj9rOonzEPGR5Yf6VxUHpouVCInsRVakvft4RUZv
 PSRQ==
X-Gm-Message-State: AOAM533KwhHrtFmG4wWpxLN7sWbgc01tET9y8sq7Mbs9DWc3bHJHL+LL
 rtVNsZPLjgwVdZG1xBcZ5eVbhyA7qsnwnc3cUW0=
X-Google-Smtp-Source: ABdhPJwMnh9vOBm1ivYzGguW+ODZxfzPd6QA/5LfGE9ipyABVaPN48l1YV96vpeXAN8+8zfTbP7W4KvdyyhcLDM4QBY=
X-Received: by 2002:aca:849:: with SMTP id 70mr2295786oii.153.1592294130938;
 Tue, 16 Jun 2020 00:55:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200422172414.6662-1-ardb@kernel.org>
 <20200422172414.6662-3-ardb@kernel.org>
In-Reply-To: <20200422172414.6662-3-ardb@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Jun 2020 09:55:19 +0200
Message-ID: <CAMuHMdXZM7XYBt=2dJFJi+xxe2HOh43KzSkxGoMqaaC_kc_P-g@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] efi/libstub: Make initrd file loader configurable
To: Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_005532_302645_00C8FC32 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Ard,

On Wed, Apr 22, 2020 at 7:24 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> Loading an initrd passed via the kernel command line is deprecated: it
> is limited to files that reside in the same volume as the one the kernel
> itself was loaded from, and we have more flexible ways to achieve the
> same. So make it configurable so new architectures can decide not to
> enable it.
>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Thanks for your patch, which is now commit cf6b83664895a5c7
("efi/libstub: Make initrd file loader configurable")!

> --- a/drivers/firmware/efi/Kconfig
> +++ b/drivers/firmware/efi/Kconfig
> @@ -124,6 +124,17 @@ config EFI_ARMSTUB_DTB_LOADER
>           functionality for bootloaders that do not have such support
>           this option is necessary.
>
> +config EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER
> +       bool "Enable the command line initrd loader"
> +       depends on EFI_GENERIC_STUB
> +       default y
> +       help
> +         Select this config option to add support for the initrd= command
> +         line parameter, allowing an initrd that resides on the same volume
> +         as the kernel image to be loaded into memory.
> +
> +         This method is deprecated.

So why the default y?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

