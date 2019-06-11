Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64C13C5DE
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 10:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3eKxVQKB57SGwmBCSQOW5KZKHiSC5leMnFry4zz2B4=; b=jsjF5BblH9yMjy
	VkmK1uVYHeUcnbmTUQ2Cu8CVMM4mu0Rc9m/KrxFBNmjMmft3MLBmZrc6/jgwsLwEXvz2lrVImPLtT
	2E9aOQLo8rkkL7NECEcdae52FMDqlrtON4xCqcpuzVwWdgE+WlhQrgefnX9LTJa6F9iIot1LqYY2S
	YCdNFr8IOAUJlw7UV4HAtsgpdxqnAndlwHG6HhfBO07ibybjhPmXaI6xnpdM07bbHH016uy4Z+US5
	hVJ25uJiacwfxr1jermlKecV/2w0pLM5SLHcAtf9wpXUIetRNMC7zjoUEwnsn1WFF9Cv2W+BzPSp8
	P5Y7hnoYANXbnA5Mnoww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hac6m-0002Fk-L8; Tue, 11 Jun 2019 08:26:20 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hac6T-00024v-Mk; Tue, 11 Jun 2019 08:26:04 +0000
Received: by mail-lj1-f194.google.com with SMTP id 16so10658271ljv.10;
 Tue, 11 Jun 2019 01:26:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fRmoMIsZBSVoYdlrURu/R5LpVklxWrnPow9T+scl1c8=;
 b=jdbpkncoqRI/W9ytjI1keaCBTf3cfzJXRaimrLk+eTdJMJ6Wmio8TNnFXNXcaS8wBJ
 G7FuL2qJlfqyINrTHUXQ1zcPJRHUOKgw8HZf9NIhzo2wEbOVQGWu2jbUeTUzcDf+ul/H
 XATI7uG2pCmsnTcJyPS77y/p5FK2g3HJx+b7szPbKgRv40jG4yOjYAjgRw24fMo6e/3R
 RAAVLtQ4tP/u5wO+AzH3WpjaFniRyfVmvWl3NixJvPYj1LwAwOKHfQK7+xsHaZIYeG+G
 +dZRaLpY5NXXqEaERl0t153m3v8Nr61t8as4Snup46F2JQvRB5su1S4slWc1H4R9X6M4
 vk5g==
X-Gm-Message-State: APjAAAVDe8PzUupru1xhJA4M2zkRPm/I8P5npWN5k9l9CIy7CXYYNWzm
 hhf9vNDTy4pPh7E/gSCgRcI4kWwZ+ztCTCuUy7uMgWLZ
X-Google-Smtp-Source: APXvYqz5wc/joiy06FOa5+5LASjye7tJKfWbnZfpusW+8Da+RGItpfdSQao+YuZntnzQUcnhkK8gdEsZWI/Z5YLEf6g=
X-Received: by 2002:a2e:91c5:: with SMTP id u5mr28381055ljg.65.1560241559914; 
 Tue, 11 Jun 2019 01:25:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-8-hch@lst.de>
In-Reply-To: <20190610212015.9157-8-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Jun 2019 10:25:46 +0200
Message-ID: <CAMuHMdXvbA=+=AQ6fYV2zRUc6CWtZ_GzEN7D5b8QNYwLEd6OjA@mail.gmail.com>
Subject: Re: [PATCH 07/15] binfmt_flat: use __be32 for the on-disk format
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_012601_745557_FA60A4D0 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "moderated list:H8/300 ARCHITECTURE"
 <uclinux-h8-devel@lists.sourceforge.jp>, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>, linux-riscv@lists.infradead.org,
 Greg Ungerer <gerg@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Mon, Jun 10, 2019 at 11:21 PM Christoph Hellwig <hch@lst.de> wrote:
> So far binfmt_flat has onl been supported on 32-bit platforms, so the
> variable size of the fields didn't matter.  But the upcoming RISC-V
> nommu port supports 64-bit CPUs, and we now have a conflict between
> the elf2flt creation tool that always uses 32-bit fields and the kernel
> that uses (unsigned) long field.  Switch to the userspace view as the
> rest of the binfmt_flat format is completely architecture neutral,
> and binfmt_flat isn't the right binary format for huge executables to
> start with.
>
> While we're at it also ensure these fields are using __be types as
> they big endian and are byteswapped when loaded.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

> --- a/include/linux/flat.h
> +++ b/include/linux/flat.h

> @@ -67,19 +67,19 @@ struct flat_hdr {
>  #define OLD_FLAT_RELOC_TYPE_BSS                2
>
>  typedef union {
> -       unsigned long   value;
> +       u32             value;
>         struct {
>  # if defined(mc68000) && !defined(CONFIG_COLDFIRE)
> -               signed long offset : 30;
> -               unsigned long type : 2;
> +               s32     offset : 30;
> +               u32     type : 2;
>  #      define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
>  # elif defined(__BIG_ENDIAN_BITFIELD)
> -               unsigned long type : 2;
> -               signed long offset : 30;
> +               u32     type : 2;
> +               s32     offset : 30;
>  #      define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
>  # elif defined(__LITTLE_ENDIAN_BITFIELD)
> -               signed long offset : 30;
> -               unsigned long type : 2;
> +               s32     offset : 30;
> +               u32     type : 2;
>  #      define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */

The definitions of OLD_FLAT_FLAG_RAM are identical, so could be
factored out.
However, they appear to be unused.

>  # else
>  #      error "Unknown bitfield order for flat files."

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
